#include "grades.h"

#include <sstream>
#include <iostream>

#include <boost/xpressive/xpressive.hpp>

#include "helper.h"

kdr::grades::grades()
  : m_data{}
{

}

void kdr::grades::add(const grade any_grade, const reviewer any_reviewer)
{
  m_data.push_back(std::make_pair(any_grade, any_reviewer));
}


kdr::grades kdr::get_grades(
  const std::string& md_filename
)
{
  grades gs;
  const auto text = get_header(md_filename);
  for (const auto line: text)
  {
    //Search for ': ?/10'
    const boost::xpressive::sregex grade_regex
     = boost::xpressive::sregex::compile("(\\d(.\\d)?/10)");
    if (!boost::xpressive::regex_search(line,grade_regex))
    {
      continue;
    }
    const boost::xpressive::sregex_iterator i(
      std::begin(line),std::end(line), grade_regex
    );
    std::string t = i->str();
    assert(t.size() > 3);
    t.substr(0,t.size() - 3); //Get rid of '/10'
    const double grade = std::stod(t);
    gs.add(grade, reviewer::richel);
  }
  return gs;
}

std::ostream& kdr::operator<<(std::ostream& os, const grades& gs) noexcept
{
  if (gs.empty()) { return os; }
  std::stringstream s;
  for (const auto g: gs.get())
  {
    s << g.first << ": " << g.second << ", ";
  }
  std::string t{s.str()};
  t.resize(t.size() - 2); //Pop trailing ", "
  os << t;
  return os;
}

