#include "TestReporterCout.h"
#include <iostream>

#include "TestDetails.h"

namespace UnitTest {

void TestReporterCout::ReportFailure(TestDetails const& details, char const* failure)
{
	using namespace std;

#if defined(__APPLE__) || defined(__GNUG__)
    //char const* const errorFormat = "%s:%d: error: Failure in %s: %s\n";
    cout << details.filename << ":" << details.lineNumber << ": error: Failure in "
         << details.testName << ": " << failure << endl;
#else
    //char const* const errorFormat = "%s(%d): error: Failure in %s: %s\n";
    cout << details.filename << "(" << details.lineNumber << "): error: Failure in "
         << details.testName << ": " << failure << endl;
#endif

}

void TestReporterCout::ReportTestStart(TestDetails const& /*test*/)
{
}

void TestReporterCout::ReportTestFinish(TestDetails const& /*test*/, float)
{
}

void TestReporterCout::ReportSummary(int const totalTestCount, int const failedTestCount,
                                       int const failureCount, float secondsElapsed)
{
	using namespace std;

    if (failureCount > 0)
        //printf("FAILURE: %d out of %d tests failed (%d failures).\n", failedTestCount, totalTestCount, failureCount);
        cout << "FAILURE: " << failedTestCount << " out of " << totalTestCount
             << " tests failed (" << failureCount << " failures)." << endl;
    else
        //printf("Success: %d tests passed.\n", totalTestCount);
        cout << "Success: " << totalTestCount << " tests passed" << endl;

    //printf("Test time: %.2f seconds.\n", secondsElapsed);
    cout << "Test time: " << secondsElapsed << " seconds." << endl;
}

}
