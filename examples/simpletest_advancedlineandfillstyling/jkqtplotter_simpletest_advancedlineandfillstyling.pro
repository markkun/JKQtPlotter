# source code for this simple demo
SOURCES = jkqtplotter_simpletest_advancedlineandfillstyling.cpp 

RESOURCES += jkqtplotter_simpletest_advancedlineandfillstyling.qrc

# configure Qt
CONFIG += link_prl qt
QT += core gui xml  svg
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

# output executable name
TARGET = jkqtplotter_simpletest_advancedlineandfillstyling


# include JKQTPlotter source code
DEPENDPATH += ../../lib  ../../staticlib/jkqtplotterlib
INCLUDEPATH += ../../lib
CONFIG (debug, debug|release) {
    LIBS += -L../../staticlib/jkqtplotterlib/debug -ljkqtplotterlib_debug
} else {
    LIBS += -L../../staticlib/jkqtplotterlib/release -ljkqtplotterlib
}
message("LIBS = $$LIBS")




