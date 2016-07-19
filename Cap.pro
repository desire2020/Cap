TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    cap-interfaces.cpp \
    cap-keyword.cpp \
    cap-lang.cpp

HEADERS += \
    includes/cap-interfaces.hpp \
    includes/cap-lang.hpp \
    includes/cap-utility.hpp \
    includes/suimem.hpp
