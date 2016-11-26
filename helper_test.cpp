#include "helper.h"

// Boost.Test does not play well with -Weffc++
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#include <boost/test/unit_test.hpp>

using namespace kdr;

BOOST_AUTO_TEST_CASE(test_get_files_in_folder)
{
  BOOST_CHECK(!get_files_in_folder(get_default_folder_name()).empty());
}

BOOST_AUTO_TEST_CASE(test_get_md_files_in_folder)
{
  BOOST_CHECK(!get_md_files_in_folder(get_default_folder_name()).empty());
}

#pragma GCC diagnostic pop





