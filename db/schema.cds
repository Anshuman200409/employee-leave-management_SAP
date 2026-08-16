namespace employee.leave;

entity Employees {
    key ID     : Integer;
    name       : String(100);
    email      : String(100);
    department : String(100);
}

entity LeaveRequests {
    key ID        : Integer;
    employee      : Association to Employees;
    leaveType     : String(50);
    startDate     : Date;
    endDate       : Date;
    reason        : String(500);
    status        : String(30);
}