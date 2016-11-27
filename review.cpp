#include "review.h"

#include <cassert>
#include <iostream>
#include <stdexcept>

#include <boost/xpressive/xpressive.hpp>

#include "helper.h"
#include "grades.h"
#include "reviewer.h"

kdr::review::review(const std::string& md_filename)
  :
    m_filename{md_filename},
    m_grades{kdr::get_grades(md_filename)},
    m_header{get_header(md_filename)},
    m_text{file_to_vector(md_filename)},
    m_title{file_to_vector(md_filename).at(0)}
{
  if (is_meta_review(md_filename))
  {
    throw std::invalid_argument("A meta review is not a song review");
  }
}

std::set<std::string> kdr::get_meta_reviews() noexcept
{
  return
  {
    "AnalysisRichel",
    "FAQ"
  };
}

bool kdr::is_meta_review(const std::string& md_filename)
{
  return get_meta_reviews().count(get_file_basename(md_filename));
}

std::ostream& kdr::operator<<(std::ostream& os, const review& r) noexcept
{
  os << r.get_title() << ": " << r.get_grades();
  return os;
}
