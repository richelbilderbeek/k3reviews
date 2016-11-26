#ifndef GRADE_H
#define GRADE_H

#include <iosfwd>

///K3Reviews
namespace kdr {

///A value between 1.0 and 10.0
class grade
{
public:
  grade(const double any_grade);
  double get() const noexcept { return m_grade; }
private:
  double m_grade;
};

std::ostream& operator<<(std::ostream& os, const grade& g) noexcept;

} //~namespace kdr

#endif // GRADE_H
