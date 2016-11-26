#include "grade.h"

// Boost.Test does not play well with -Weffc++
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#include <boost/test/unit_test.hpp>

using namespace kdr;

BOOST_AUTO_TEST_CASE(test_grade_use)
{
  BOOST_CHECK_NO_THROW(grade(9.5));
}

BOOST_AUTO_TEST_CASE(test_grade_abuse)
{
  BOOST_CHECK_THROW(grade( 0.9), std::invalid_argument);
  BOOST_CHECK_THROW(grade(10.1), std::invalid_argument);
}

BOOST_AUTO_TEST_CASE(test_grade_stream_out)
{
  std::stringstream s;
  s << grade(9.5);
  BOOST_CHECK(!s.str().empty());
}

#pragma GCC diagnostic pop



