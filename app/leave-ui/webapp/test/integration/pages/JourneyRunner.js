sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"employee/leave/leaveui/test/integration/pages/LeaveRequestsList.gen",
	"employee/leave/leaveui/test/integration/pages/LeaveRequestsObjectPage.gen"
], function (JourneyRunner, LeaveRequestsListGenerated, LeaveRequestsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('employee/leave/leaveui') + '/test/flp.html#app-preview',
        pages: {
			onTheLeaveRequestsListGenerated: LeaveRequestsListGenerated,
			onTheLeaveRequestsObjectPageGenerated: LeaveRequestsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

