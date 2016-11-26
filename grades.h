#ifndef GRADES_H
#define GRADES_H

#include "grade.h"
#include "reviewer.h"

#include <iosfwd>
#include <vector>

///K3Reviews
namespace kdr {

class grades
{
public:
  grades();
  void add(const grade grade, const reviewer any_reviewer);
  bool empty() const noexcept { return m_data.empty(); }
  const auto& get() const noexcept { return m_data; }
private:
  std::vector<std::pair<grade,reviewer>> m_data;
};

grades get_grades(
  const std::string& md_filename
);

std::ostream& operator<<(std::ostream& os, const grades& gs) noexcept;

} //~namespace kdr

#endif // GRADES_H
