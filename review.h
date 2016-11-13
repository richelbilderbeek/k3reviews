#ifndef REVIEW_H
#define REVIEW_H

#include <string>
#include <vector>
#include "reviewer.h"

namespace kdr {

class review
{
public:
  review(const std::string& md_filename);
};

std::vector<std::pair<double,reviewer>> get_grades(
  const std::string& md_filename
);

} //~namespace kdr

#endif // REVIEW_H
