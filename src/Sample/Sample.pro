TEMPLATE = app
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

SOURCES =   CustomTypes.cpp \
            main.cpp \
            SampleApp.cpp \
            TestClass.cpp \
            TestSubClass.cpp \
            Vec3fProperty.cpp
HEADERS =   CustomTypes.h \
            SampleApp.h \
            TestClass.h \
            TestSubClass.h \
            Vec3fProperty.h
FORMS = SampleApp.ui

CONFIG += debug_and_release

INCLUDEPATH+=../QPropertyEditor

LIBS += -L../../lib

DESTDIR = ../../bin

CONFIG(debug, debug|release) {
	LIBS += -lQPropertyEditord
	TARGET = Sampled
}

CONFIG(release, debug|release) { 
	LIBS += -lQPropertyEditor
	TARGET = Sample
}
