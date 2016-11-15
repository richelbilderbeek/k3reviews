#ifndef KDH_HELPER_H
#define KDH_HELPER_H

#include <string>
#include <vector>

///K3Reviews
namespace kdr {

///Deletes a file. Throws if:
///(1) if file is absent before deletion, or
///(2) if file is still present after attempt
void delete_file(const std::string& filename);

std::vector<std::string> file_to_vector(const std::string& filename);

///Get all the filesnames in a folder
std::vector<std::string> get_files_in_folder(
  const std::string& folder
);

///Obtain the text above the lyrics
std::vector<std::string> get_header(const std::string& filename);

///Checks if a file is present
bool is_regular_file(const std::string& filename) noexcept;

///Creates a copy without the first element
std::vector<std::string> remove_first(std::vector<std::string> v);

///Seperates a std::string. For example,
///seperate_string("1,2", ',') becomes {"1","2"}
std::vector<std::string> seperate_string(
  const std::string& input,
  const char seperator
);

} //~namespace pbd

#endif // KDH_HELPER_H
