#include "reviewer.h"

std::string kdr::to_str(const reviewer r) noexcept
{
  if (r == reviewer::richel) return "richel";
  return "mark";
}


std::ostream& kdr::operator<<(std::ostream& os, const reviewer r) noexcept
{
  os << to_str(r);
  return os;
}
