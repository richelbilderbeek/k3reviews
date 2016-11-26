#include <cassert>
#include <iostream>
#include "helper.h"
#include "reviews.h"
using namespace kdr;

int main()
{
  for (const auto r: get_reviews())
  {
    std::cout << r << '\n';
  }
}

