#ifndef MAO_PROFILING_PROFILING_H
#define MAO_PROFILING_PROFILING_H

#include <cstring>
#include <vector>
#include <map>
#include <unordered_map>

class Profiling {
public:
    static void read_file(const std::string &filename, std::string &filedata);

    static void interpret(std::string content, std::string objectName,
                   std::vector<std::vector<std::string>> &IPCTable);

    static void getOptimizeFunc(std::unordered_map<std::string,std::string> &gccIPCHashTable, 
				std::unordered_map<std::string,std::string> &clangIPCHashTable,
                         std::vector<std::pair<std::string, std::string>> &result);

    static void getOptimizeFuncFromFile(std::string gccFilename, std::string clangFilename, std::string exe_gcc_name,
                                        std::string exe_clang_name, std::vector<std::pair<std::string, std::string>> &result);
private:    
    static bool tableCmp(std::vector<std::string> &a, std::vector<std::string> &b) ;
};

#endif //MAO_PROFILING_PROFILING_H
