#include "reviews.h"

// Boost.Test does not play well with -Weffc++
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#include <boost/test/unit_test.hpp>

using namespace kdr;

BOOST_AUTO_TEST_CASE(test_get_reviews)
{
  BOOST_CHECK(!get_reviews().empty());
}

BOOST_AUTO_TEST_CASE(test_all_reviews_have_a_grade)
{
  /*
  const auto rs = get_reviews();
  for (const auto r: rs)
  {
    if (r.get_grades().empty())
    {
      std::cerr << r.get_title() << '\n';
    }
    BOOST_CHECK(!r.get_grades().empty());
  }
  */
}

#pragma GCC diagnostic pop

