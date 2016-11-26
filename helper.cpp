#include "helper.h"

#include <cassert>
#include <fstream>
#include <sstream>

#include <boost/algorithm/string/split.hpp>
#include <QDir>

void kdr::delete_file(const std::string& filename)
{
  if(!is_regular_file(filename))
  {
    std::stringstream msg;
    msg << __func__ << ": "
      << "can only delete existing files, "
      << "filename supplied: '"
      << filename << "' was not found"
    ;
    throw std::invalid_argument(msg.str());
  }
  std::remove(filename.c_str());

  //Under Windows, readonly files must be made deleteable
  #ifdef _WIN32
  if (is_regular_file(filename))
  {
    const auto cmd = "attrib -r " + filename;
    std::system(cmd.c_str());
    std::remove(filename.c_str());
  }
  #endif

  if(is_regular_file(filename))
  {
    std::stringstream msg;
    msg << __func__ << ": "
      << "failed to delete existing file '"
      << filename << "'"
    ;
    throw std::invalid_argument(msg.str());
  }
}

std::vector<std::string> kdr::file_to_vector(const std::string& filename)
{
  if(!is_regular_file(filename))
  {
    std::stringstream msg;
    msg << __func__ << ": "
      << "can only convert existing files, "
      << "filename supplied: '"
      << filename << "' was not found"
    ;
    throw std::invalid_argument(msg.str());
  }
  assert(is_regular_file(filename));
  std::vector<std::string> v;
  std::ifstream in{filename.c_str()};
  assert(in.is_open());
  //Without this test in release mode,
  //the program might run indefinitely when the file does not exists
  if (!in.is_open())
  {
    const std::string s{"ERROR: file does not exist: " + filename};
    throw std::logic_error{s.c_str()};
  }
  for (int i=0; !in.eof(); ++i)
  {
    std::string s;
    std::getline(in,s);
    v.push_back(s); //Might throw std::bad_alloc
  }
  //Remove empty line at back of vector
  if (!v.empty() && v.back().empty()) v.pop_back();
  return v;
}

std::string kdr::get_default_folder_name() noexcept
{
  return "../K3Reviews/inst/extdata";
}

std::vector<std::string> kdr::get_files_in_folder(
  const std::string& folder
)
{
  QDir dir{folder.c_str()};
  dir.setFilter(QDir::Files);
  const QFileInfoList list{dir.entryInfoList()};

  //Convert QFileInfoList to std::vector<std::string> of filenames
  std::vector<std::string> v;
  const int size{list.size()};
  for (int i{0}; i != size; ++i)
  {
    assert(i >= 0);
    assert(i < static_cast<int>(list.size()));
    const std::string file_name{folder + "/" + list[i].fileName().toStdString()};

    v.push_back(file_name);
  }
  return v;
}

std::vector<std::string> kdr::get_md_files_in_folder(
  const std::string& folder
)
{
  const std::vector<std::string> v = get_files_in_folder(folder);
  std::vector<std::string> w;
  std::copy_if(
    std::begin(v),
    std::end(v),
    std::back_inserter(w),
    [](const std::string& s)
    {
      return s.substr(s.size() - 3, 3) == std::string(".md");
    }
  );
  return w;
}



std::vector<std::string> kdr::get_header(const std::string& filename)
{
  return get_header(file_to_vector(filename));
}

std::vector<std::string> kdr::get_header(std::vector<std::string> v)
{
  const int sz = v.size();
  int i = 0;
  for (; i!=sz; ++i)
  {
    if (v[i] == "```") break;
  }
  if (i == 0) { return {}; }
  v.resize(i - 1);
  return v;
}


bool kdr::is_regular_file(const std::string& filename) noexcept
{
  std::fstream f;
  f.open(filename.c_str(),std::ios::in);
  return f.is_open();
}

std::vector<std::string> kdr::remove_first(
  std::vector<std::string> v
)
{
  if (v.empty()) throw std::invalid_argument("Cannot remove absent first line");
  v.erase(std::begin(v));
  return v;
}


std::vector<std::string> kdr::seperate_string(
  const std::string& input,
  const char seperator
)
{
  std::vector<std::string> v;
  boost::algorithm::split(v,input,
    std::bind2nd(std::equal_to<char>(),seperator),
    boost::algorithm::token_compress_on
  );
  return v;
}
