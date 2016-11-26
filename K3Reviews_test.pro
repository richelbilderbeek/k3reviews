CONFIG += console debug_and_release
CONFIG -= app_bundle
QT -= gui
TEMPLATE = app

include(K3Reviews.pri)
include(K3Reviews_test.pri)
SOURCES += main_test.cpp

# C++14
CONFIG += c++14
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
# Qt and -Weffc++ goes bad together
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++14

# Debug and release modes
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

CONFIG(debug, debug|release) {

  # gcov
  QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
  LIBS += -lgcov

  # UBSAN
  QMAKE_CXXFLAGS += -fsanitize=undefined
  QMAKE_LFLAGS += -fsanitize=undefined
  LIBS += -lubsan
}

# Boost.Test
LIBS += -lboost_unit_test_framework

