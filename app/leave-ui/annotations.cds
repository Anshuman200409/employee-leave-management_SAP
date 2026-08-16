using LeaveService as service from '../../srv/leave-service';
annotate service.LeaveRequests with @(
    UI.CreateHidden: false
);
annotate service.LeaveRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'employee_ID',
                Value : employee_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'leaveType',
                Value : leaveType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'startDate',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'endDate',
                Value : endDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'reason',
                Value : reason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'ID',
        Value : ID,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Employee ID',
        Value : employee_ID,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Leave Type',
        Value : leaveType,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Start Date',
        Value : startDate,
    },
    {
        $Type : 'UI.DataField',
        Label : 'End Date',
        Value : endDate,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Reason',
        Value : reason,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Status',
        Value : status,
    },
],
);

annotate service.LeaveRequests with {
    employee @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Employees',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : employee_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'department',
            },
        ],
    }
};
annotate service.LeaveRequests with @(
    UI.CreateHidden: false
);