#include <cassert>
#include <iostream>
#include "helper.h"
#include "review.h"
using namespace kdr;

int main()
{
  const auto filenames = get_files_in_folder("../K3Reviews/inst/extdata");
  for (const auto filename: filenames)
  {
    std::cout << filename << '\n';

    assert(is_regular_file(filename));
    /*
    const std::vector<std::pair<double,reviewer>> grades{
      get_grades(filename)
    };
    for (const auto grade: grades)
    {
      std::cout << grade.first << ": " << grade.second << '\n';
    }
    */
  }
  return 0;
}

