#include "grade.h"

#include <iostream>
#include <stdexcept>

kdr::grade::grade(const double any_grade)
  : m_grade{any_grade}
{
  if (m_grade < 1.0)
  {
    throw std::invalid_argument("Grades are at least 1.0");
  }
  if (m_grade > 10.0)
  {
    throw std::invalid_argument("Grades are at most 10.0");
  }
}

std::ostream& kdr::operator<<(std::ostream& os, const grade& g) noexcept
{
  os << g.get();
  return os;
}
