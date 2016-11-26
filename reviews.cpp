#include "reviews.h"

#include <stdexcept>

#include "helper.h"

kdr::reviews kdr::get_reviews()
{
  const auto filenames = get_md_files_in_folder(get_default_folder_name());
  reviews r;
  for (const auto filename: filenames)
  {
    try
    {
      r.push_back(review(filename));
    }
    catch (std::invalid_argument&)
    {
      // No problemo
    }
  }
  return r;
}
