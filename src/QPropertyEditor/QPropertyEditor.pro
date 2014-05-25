TEMPLATE = lib
CONFIG += staticlib
CONFIG += debug_and_release

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

SOURCES =   ColorCombo.cpp \
            Property.cpp \
            QPropertyEditorWidget.cpp \
            QPropertyModel.cpp \
            QVariantDelegate.cpp \
            EnumProperty.cpp

HEADERS=    ColorCombo.h \
	    Property.h \
            QPropertyEditorWidget.h \
            QPropertyModel.h \
            QVariantDelegate.h \
            EnumProperty.h

INCLUDEPATH+=../../include
DESTDIR = ../../lib

CONFIG(debug, debug|release) { 
	TARGET = QPropertyEditord
}

CONFIG(release, debug|release) { 
    
	TARGET = QPropertyEditor
	DEFINES+=QT_NO_DEBUG	
}

macx {
	CONFIG += x86 ppc
	QMAKE_MAC_SDK = /Developer/SDKs/MacOSX10.4u.sdk
	QMAKE_LFLAGS += -mmacosx-version-min=10.4
}
