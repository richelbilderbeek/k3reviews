#ifndef REVIEW_H
#define REVIEW_H

#include <set>
#include <string>
#include <vector>
#include "grades.h"
#include "reviewer.h"

namespace kdr {

class review
{
public:
  review(const std::string& md_filename);

  const grades& get_grades() const noexcept { return m_grades; }

  const std::string& get_title() const noexcept { return m_title; }

private:
  std::string m_filename;
  grades m_grades;
  std::vector<std::string> m_header;
  std::vector<std::string> m_text;
  std::string m_title;
};

std::set<std::string> get_meta_reviews() noexcept;
bool is_meta_review(const std::string& md_filename);

std::ostream& operator<<(std::ostream& os, const review& r) noexcept;

} //~namespace kdr

#endif // REVIEW_H
