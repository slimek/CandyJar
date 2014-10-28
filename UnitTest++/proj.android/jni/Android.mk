LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := UnitTest++

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/AssertException.cpp \
	$(MY_SRC_DIR)/Checks.cpp \
	$(MY_SRC_DIR)/CurrentTest.cpp \
	$(MY_SRC_DIR)/DeferredTestReporter.cpp \
	$(MY_SRC_DIR)/DeferredTestResult.cpp \
	$(MY_SRC_DIR)/MemoryOutStream.cpp \
	$(MY_SRC_DIR)/ReportAssert.cpp \
	$(MY_SRC_DIR)/Test.cpp \
	$(MY_SRC_DIR)/TestDetails.cpp \
	$(MY_SRC_DIR)/TestList.cpp \
	$(MY_SRC_DIR)/TestReporter.cpp \
	$(MY_SRC_DIR)/TestReporterStdout.cpp \
	$(MY_SRC_DIR)/TestResults.cpp \
	$(MY_SRC_DIR)/TestRunner.cpp \
	$(MY_SRC_DIR)/TimeConstraint.cpp \
	$(MY_SRC_DIR)/XmlTestReporter.cpp \
	$(MY_SRC_DIR)/Posix/SignalTranslator.cpp \
	$(MY_SRC_DIR)/Posix/TimeHelpers.cpp \

	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include/UnitTest++
	
include $(BUILD_STATIC_LIBRARY)
