# Employee Leave Management – SAP CAP & Fiori

A full-stack Employee Leave Management application built using **SAP CAP (Cloud Application Programming Model)**, **SAPUI5/Fiori**, **OData**, and **SQLite**.

The application allows users to create, view, edit, delete, approve, and reject employee leave requests through a Fiori-based user interface.

---

## 🚀 Features

- Create a new leave request
- View all leave requests
- Edit existing leave requests
- Delete leave requests
- Approve leave requests
- Reject leave requests
- Display leave status
- Employee ID and leave type management
- Start date and end date management
- Leave reason management
- OData-based backend communication
- SQLite database for local development
- CSV-based initial/seed data
- SAPUI5/Fiori frontend
- SAP CAP backend

---

## 🛠️ Technology Stack

### Frontend
- SAPUI5
- Fiori
- JavaScript
- HTML
- CSS

### Backend
- SAP CAP
- Node.js
- OData

### Database
- SQLite
- CSV seed data

### Development Environment
- SAP Business Application Studio
- Git
- GitHub

---

## 📁 Project Structure

```text
employee-leave-management/
│
├── app/
│   └── leave-ui/
│       ├── webapp/
│       │   ├── index.html
│       │   ├── Component.js
│       │   ├── manifest.json
│       │   └── i18n/
│       │
│       ├── package.json
│       └── ui5.yaml
│
├── db/
│   ├── data/
│   │   ├── employee.leave-Employees.csv
│   │   └── employee.leave-LeaveRequests.csv
│   │
│   └── schema.cds
│
├── srv/
│   └── leave-service.cds
│
├── package.json
├── package-lock.json
├── .gitignore
└── readme.md