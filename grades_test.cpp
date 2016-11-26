#include "grades.h"

// Boost.Test does not play well with -Weffc++
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#include <boost/test/unit_test.hpp>

using namespace kdr;

BOOST_AUTO_TEST_CASE(test_grades_use)
{
  grades g;
  BOOST_CHECK(g.empty());
  g.add(grade(5.0), reviewer::richel);
  BOOST_CHECK(!g.empty());
}

BOOST_AUTO_TEST_CASE(test_grades_stream_out)
{
  grades gs;
  gs.add(grade(5.0), reviewer::richel);
  BOOST_REQUIRE(!gs.empty());
  std::stringstream s;
  s << gs;
  BOOST_CHECK(!s.str().empty());
}

#pragma GCC diagnostic pop




