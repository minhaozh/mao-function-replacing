#include <iostream>
#include <fstream>
#include <cstring>
#include <unordered_map>

#include "spilt_utils.h"
#include "profiling.h"
#include <algorithm>

using namespace std;

void Profiling::read_file(const string &filename, string &filedata) {
    ifstream infile;
    infile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
    try {
        char *fileBuffer = NULL;
        infile.open(filename, ios::binary);
        if (infile.is_open()) {
            infile.seekg(0, ios::end);
            auto len = infile.tellg();
            infile.seekg(0, ios::beg);
            fileBuffer = new char[(size_t) len + 1];
            memset(fileBuffer, 0, (size_t) len + 1);
            infile.read(fileBuffer, len);
            filedata = fileBuffer;
            delete[] fileBuffer;
        }
        infile.close();
    }
    catch (std::ifstream::failure e) {
        std::cout << "ERROR:FILE_NOT_SUCCESFULLY_READ" << std::endl;
    }
}

bool Profiling::tableCmp(vector<string> &a, vector<string> &b) {
    return strcmp(a[5].c_str(), b[5].c_str())<0;
}

void Profiling::interpret(string content, string objectName, vector<vector<string>> &IPCTable) {
    str_arr arr;
    unordered_map<string,vector<string>> cyclesTable;
    unordered_map<string,vector<string>> insnTable;

    SplitUtils::SplitStr(content.c_str(), arr, "\n", false, false, false,
                         false, false, true);
    int segment = -1;
    for (int i = 0; i < arr.size() - 3; i++) {
      vector<string> value;
      SplitUtils::SplitStr(arr[i].c_str(), value, ",", true, false);

      if (!value.empty() &&
          (value[0][0] == '#' ||
           (value[5][1] == '.' &&
            strcmp(value[4].c_str(), objectName.c_str()) == 0))) {
        if (value[0][0] == '#') {
          size_t position = 0;
          if ((position = value[0].find("\'cpu-cycles")) &&
              position != value[0].npos) {
            segment = 0;
            continue;
          } else if ((position = value[0].find("\'instructions")) &&
                     position != value[0].npos) {
            segment = 1;
            continue;
          }
        } else {
          if (segment == 0)
            cyclesTable.insert({value[5].substr(4), value});
          else if (segment == 1)
            insnTable.insert({value[5].substr(4), value});
        }
      }
    }
    // cout<<"*** sort tables"<<endl;
    //    sort(cyclesTable.begin(), cyclesTable.end(),tableCmp);
    //    sort(insnTable.begin(), insnTable.end(),tableCmp);
    // cout<<"*** sort tables end"<<endl;
    for (auto iter = cyclesTable.begin(); iter != cyclesTable.end(); iter++) {
      double ipc = 0;
      vector<string> value;
      //	std::cout<<"*** compute IPC ***"<<endl;
      //	std::cout<<insnTable[i][5].substr(4)<<" "<<insnTable[i][2]<<"
      //"<<cyclesTable[i][2]<<std::endl;
      if (insnTable.find(iter->first) == insnTable.end())
        continue;
      //        Symbol
      value.push_back(iter->first);
      //        IPC
      int cycles = atoi(iter->second[2].c_str());
      int insns = atoi(insnTable[iter->first][2].c_str());
      if (cycles != 0) {
        ipc = 1.0 * insns / cycles;
        char ipcStr[32];
        sprintf(ipcStr, "%.5f", ipc);
        value.push_back(iter->second[2]);
        // value.push_back(ipcStr);
        //            std::cout<<insns<<" "<<cycles<<std::endl;
      } else
        value.push_back("NaN");
      IPCTable.push_back(value);
    }

// Children, Self, Samples, Command, Shared Object, Symbol
}

void Profiling::getOptimizeFunc(unordered_map<string,string> &gccIPCHashTable, unordered_map<string,string> &clangIPCHashTable,
                                vector<pair<string, string>> &result) {
    //TODO(@getianao): It's not accurate depanding on IPC
    int gccFunc =0, clangFunc=0;
    for (auto iter=gccIPCHashTable.begin(); iter !=gccIPCHashTable.end(); iter++) {
        if (iter->second.compare("NaN") == 0 || clangIPCHashTable.find(iter->first)==clangIPCHashTable.end() || clangIPCHashTable[iter->first].compare("NaN") == 0)
            continue;
        if (atof(iter->second.c_str()) < atof(clangIPCHashTable[iter->first].c_str())) {
          result.push_back(make_pair("gcc", iter->first));
          gccFunc++;
        }
        else {
          result.push_back(make_pair("clang", iter->first));
          clangFunc++;
        }
    }
    cout << "\n\tPerf Result: \n\tTotal:" << (gccFunc + clangFunc) << " functions\n"
         << "\tgcc: " << gccFunc << " functions\n"
         << "\tclang: " << clangFunc << " functions\n\n";
}

void Profiling::getOptimizeFuncFromFile(std::string gccFilename,
                                        std::string clangFilename,
                                        std::string exe_gcc_name,
                                        std::string exe_clang_name,
                                        vector<pair<string, string>> &result) {
  std::string gccFiledata;
  std::string clangFiledata;
  std::string gccObjectName = exe_gcc_name;
  std::string clangObjectName = exe_clang_name;
  std::vector<std::vector<std::string>> gccIPCTable;
  std::vector<std::vector<std::string>> clangIPCTable;

  read_file(clangFilename, clangFiledata);
  interpret(clangFiledata, clangObjectName, clangIPCTable);

  read_file(gccFilename, gccFiledata);
  interpret(gccFiledata, gccObjectName, gccIPCTable);

  sort(gccIPCTable.begin(), gccIPCTable.end());
  sort(clangIPCTable.begin(), clangIPCTable.end());
  unordered_map<string, string> gccIPCHashTable;
  unordered_map<string, string> clangIPCHashTable;

  for (auto row : gccIPCTable) {
    gccIPCHashTable.insert({row[0], row[1]});
  }
  for (auto row : clangIPCTable) {
    clangIPCHashTable.insert({row[0], row[1]});
  }

  getOptimizeFunc(gccIPCHashTable, clangIPCHashTable, result);
}
