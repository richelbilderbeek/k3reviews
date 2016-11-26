#ifndef REVIEWS_H
#define REVIEWS_H

#include <vector>
#include "review.h"

namespace kdr {

using reviews = std::vector<review>;

///Obtain all K3 reviews
reviews get_reviews();

} //~namespace kdr

#endif // REVIEWS_H
