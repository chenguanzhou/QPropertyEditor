// *************************************************************************************************
//
// This code is part of the Sample Application to demonstrate the use of the QPropertyEditor library.
// It is distributed as public domain and can be modified and used by you without any limitations.
// 
// Your feedback is welcome!
//
// Author: Volker Wiendl
// Enum enhancement by Roman alias banal from qt-apps.org
//
// --------------------------------------
//
// Modified by Chen Guanzhou in 2014/5/25 for Qt5 support
//
// *************************************************************************************************

#include "SampleApp.h"

#include "CustomTypes.h"
#include "TestClass.h"
#include "TestSubClass.h"

SampleApp::SampleApp(QWidget* parent /*= 0*/ ): QMainWindow(parent)
{
	setupUi(this);
	CustomTypes::registerTypes();
    m_propertyEditor->registerCustomPropertyCB(CustomTypes::createCustomProperty);
	m_testClass = new TestClass(this);
    m_propertyEditor->addObject(m_testClass);
	m_testSubClass = new TestSubClass(this);
	m_propertyEditor->addObject(m_testSubClass);
}


SampleApp::~SampleApp()
{

}

