#include <cassert>
#include <iostream>
#include "helper.h"
#include "review.h"
using namespace kdr;

int main()
{
  const std::string filename{
    "../K3Reviews/inst/extdata/PrinsesjeEnSuperman.md"
  };
  assert(is_regular_file(filename));
  const std::vector<std::pair<double,reviewer>> grades{
    get_grades(filename)
  };
  for (const auto grade: grades)
  {
    std::cout << grade.first << ": " << grade.second << '\n';
  }
  return 0;
}

