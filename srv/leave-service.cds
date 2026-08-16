using { employee.leave as db } from '../db/schema';

@path: '/leave'
service LeaveService {

    @readonly
    entity Employees as projection on db.Employees;

    @Capabilities.InsertRestrictions.Insertable: true
    @Capabilities.UpdateRestrictions.Updatable: true
    @Capabilities.DeleteRestrictions.Deletable: true
    entity LeaveRequests as projection on db.LeaveRequests;
}