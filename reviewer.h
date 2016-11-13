#ifndef REVIEWER_H
#define REVIEWER_H

#include <string>

namespace kdr {

enum class reviewer
{
  mark,
  richel
};

std::string to_str(const reviewer r) noexcept;

std::ostream& operator<<(std::ostream& os, const reviewer r) noexcept;

} //~namespace kdr

#endif // REVIEWER_H
