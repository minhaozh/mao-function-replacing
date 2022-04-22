#ifndef MAO_SPILT_UTILS_H
#define MAO_SPILT_UTILS_H

#include <map>
#include <string>
#include <vector>


typedef std::vector<std::string> str_arr;
typedef std::map<int, std::string> str_dict;

class SplitUtils {
public:
    static bool SplitStr(const char *str, str_arr &subs_array, const char spliter[] = ",;:", bool trim = true,
                         bool ignore_blank = false, bool supp_quote = false, bool trim_quote = true,
                         bool supp_quanjiao = false, bool start_with_blank = false);

    static bool SplitParamList(const str_arr input_arr, str_dict &subs_array, const char spliter[] = "=");

private:
    static bool IsFullWidth(const char *pstr);

    static bool IsQuote(char c);

    static char *StrNCpy(char *dst, const char *src, int maxcnt);

    static int TrimStr(char *pstr, const char trim_char = ' ', bool trim_gb = false);

    static void ParseStr(const char *str, char *subs, const int len,
                         const bool supp_quote, const bool trim, const bool ignore_blank,
                         const bool trim_quote, const bool supp_quanjiao, const int i,
                         int &cursor, bool &left_quote, bool &right_quote);
};

#endif //MAO_SPILT_UTILS_H
