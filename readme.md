# Employee Leave Management – SAP CAP & Fiori

A full-stack Employee Leave Management application built using **SAP CAP (Cloud Application Programming Model)**, **SAPUI5/Fiori**, **OData**, and **SQLite**.

The application provides a Fiori-based interface for managing employee leave requests, including creating, viewing, editing, deleting, approving, and rejecting leave requests.

---

## 📑 Table of Contents

- [Features](#-features)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [How to Run the Application](#️-how-to-run-the-application)
- [Opening the Fiori Application](#-opening-the-fiori-application)
- [Using the Application](#-using-the-application)
- [Create a Leave Request](#-create-a-leave-request)
- [Edit a Leave Request](#-edit-a-leave-request)
- [Delete a Leave Request](#-delete-a-leave-request)
- [Approve a Leave Request](#-approve-a-leave-request)
- [Reject a Leave Request](#-reject-a-leave-request)
- [CRUD Operations](#-crud-operations)
- [Leave Request Workflow](#-leave-request-workflow)
- [Validation](#-validation)
- [Database](#️-database)
- [Backend Service](#-backend-service)
- [Application Architecture](#-application-architecture)
- [Testing](#-testing)
- [Useful Commands](#-useful-commands)
- [Development Environment](#-development-environment)
- [GitHub](#-github)
- [Project Status](#-project-status)
- [License](#-license)

---

## 🚀 Features

- Create a new leave request
- View existing leave requests
- Edit leave requests
- Delete leave requests
- Approve leave requests
- Reject leave requests
- Leave status management
- Input validation
- Employee ID management
- Leave type management
- Start date and end date management
- Leave reason management
- OData backend communication
- SQLite database
- CSV seed data
- SAPUI5/Fiori frontend
- SAP CAP backend
- Database persistence

### 📊 Feature Overview

| Feature | Status |
|---|---|
| Create Leave Request | ✅ Complete |
| View Leave Requests | ✅ Complete |
| Edit Leave Request | ✅ Complete |
| Delete Leave Request | ✅ Complete |
| Approve Leave Request | ✅ Complete |
| Reject Leave Request | ✅ Complete |
| Input Validation | ✅ Complete |
| Leave Status Display | ✅ Complete |
| OData Backend | ✅ Complete |
| SQLite Database | ✅ Complete |
| Fiori/UI5 Frontend | ✅ Complete |
| Database Persistence | ✅ Complete |

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
- CDS
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
│       │   ├── i18n/
│       │   └── test/
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
```

---

## 📋 Prerequisites

Before running the application, make sure the following are available:

- SAP Business Application Studio
- Node.js
- npm
- SAP CAP Development Kit
- Git

The project is designed to be developed and run in **SAP Business Application Studio**.

---

## ▶️ How to Run the Application

Follow these steps to run the Employee Leave Management application from a fresh clone.

### Step 1 — Clone the Repository

Open a terminal in SAP Business Application Studio and run:

```bash
git clone https://github.com/Anshuman200409/employee-leave-management_SAP.git
```

Move into the project directory:

```bash
cd employee-leave-management_SAP
```

### Step 2 — Install Dependencies

Install all required project dependencies:

```bash
npm install
```

This installs the dependencies required by the SAP CAP backend, SQLite database, UI5 application, and other project components.

### Step 3 — Start the SAP CAP Application

From the project root directory, run:

```bash
cds watch
```

This starts the SAP CAP development server and the OData backend service.

The CAP development server normally runs on:

```text
http://localhost:4004
```

### Step 4 — Open the Fiori Application

After running:

```bash
cds watch
```

SAP Business Application Studio opens the Fiori application/launch page.

The initial page may contain multiple applications or options.

To access the Employee Leave Management application:

1. Open the Fiori application page.
2. Locate the available applications/options.
3. Open `index.html`.
4. The **Employee Leave Management** application will open.

The main application file is located at:

```text
app/leave-ui/webapp/index.html
```

### Application Startup Flow

```text
Clone GitHub Repository
          ↓
      npm install
          ↓
       cds watch
          ↓
 Fiori Application Page
          ↓
     Open index.html
          ↓
Employee Leave Management
          ↓
Create / View / Edit / Delete
          ↓
     Approve / Reject
```

---

## 🌐 Opening the Fiori Application

The Fiori UI is located inside:

```text
app/leave-ui/webapp/
```

The main entry point is:

```text
app/leave-ui/webapp/index.html
```

After starting the CAP application using:

```bash
cds watch
```

SAP Business Application Studio may display a page containing multiple applications or available options.

### To access Employee Leave Management:

1. Open the Fiori application page.
2. Look for `index.html`.
3. Open `index.html`.
4. The Employee Leave Management interface will be displayed.

---

## 🖥️ Using the Application

After opening `index.html`, the Employee Leave Management interface displays the available leave requests.

The main table contains:

| Field | Description |
|---|---|
| ID | Unique leave request ID |
| Employee ID | Employee associated with the request |
| Leave Type | Type of leave requested |
| Start Date | First day of leave |
| End Date | Last day of leave |
| Reason | Reason for requesting leave |
| Status | Current status of the leave request |
| Actions | Available actions for the request |

---

## ➕ Create a Leave Request

Click the **Create Leave Request** option.

Enter the required information:

- Employee ID
- Leave Type
- Start Date
- End Date
- Reason

After successful creation, the new leave request appears in the table.

New leave requests start with:

```text
Pending
```

---

## ✏️ Edit a Leave Request

Click the **Edit** button for the required leave request.

The existing request information is loaded into the edit form.

Modify the required information and save the changes.

The updated information is reflected in the leave request table and persisted in the database.

---

## 🗑️ Delete a Leave Request

Click the **Delete** button for the required leave request.

A confirmation dialog is displayed.

Select **OK** to confirm the deletion.

The leave request is then removed from the table and database.

---

## ✅ Approve a Leave Request

For a pending leave request, click **Approve**.

After approval, the status changes to:

```text
Approved
```

The approved status is displayed using the corresponding success status indicator.

---

## ❌ Reject a Leave Request

For a pending leave request, click **Reject**.

After rejection, the status changes to:

```text
Rejected
```

The rejected status is displayed using the corresponding error status indicator.

---

## 🔧 CRUD Operations

The application implements the complete CRUD lifecycle.

| Operation | Description |
|---|---|
| Create | Create a new employee leave request |
| Read | Display existing leave requests |
| Update | Edit, approve, or reject a leave request |
| Delete | Delete an existing leave request |

---

## 🔄 Leave Request Workflow

```text
                 Create Request
                       ↓
                    Pending
                   /       \
                  /         \
                 ↓           ↓
             Approved     Rejected
```

A pending request can also be edited or deleted.

---

## 🎯 Application Actions

| Action | Result |
|---|---|
| Create Leave Request | Creates a new request with Pending status |
| Edit | Updates an existing request |
| Delete | Removes a request after confirmation |
| Approve | Changes status to Approved |
| Reject | Changes status to Rejected |

---

## ✅ Validation

The application performs validation when creating or editing leave requests.

The validation includes:

- Employee ID must be provided
- Leave Type must be provided
- Start Date must be provided
- End Date must be provided
- Reason must be provided
- End Date cannot be before Start Date

Invalid requests are prevented from being submitted.

---

## 🗄️ Database

The application uses **SQLite** for local development.

The database configuration is defined in:

```text
package.json
```

### Seed Data

Initial application data is provided through CSV files.

#### Employees

```text
db/data/employee.leave-Employees.csv
```

#### Leave Requests

```text
db/data/employee.leave-LeaveRequests.csv
```

### Database Schema

The CDS database schema is located at:

```text
db/schema.cds
```

The local SQLite database files are excluded from Git tracking using `.gitignore`.

---

## 🔌 Backend Service

The SAP CAP backend service is defined in:

```text
srv/leave-service.cds
```

The backend exposes the application data through **OData**.

The Fiori frontend communicates with the backend through the OData service.

The main backend operations are:

```text
Create
Read
Update
Delete
```

---

## 🏗️ Application Architecture

The application follows a standard SAP CAP application structure.

```text
                SAPUI5 / Fiori
                      │
                      │ OData
                      ▼
                SAP CAP Service
                      │
                      ▼
                   SQLite
                      │
                      ▼
                CSV Seed Data
```

### Frontend

Located in:

```text
app/leave-ui/
```

Main application entry point:

```text
app/leave-ui/webapp/index.html
```

### Database

Located in:

```text
db/
```

Contains:

- CDS schema
- CSV seed data

### Backend

Located in:

```text
srv/
```

Contains the CAP/OData service definition.

---

## 🧪 Testing

The application has been manually tested for:

- Creating leave requests
- Viewing leave requests
- Editing leave requests
- Deleting leave requests
- Approving leave requests
- Rejecting leave requests
- Input validation
- SQLite database persistence
- Restarting the CAP server
- Loading the Fiori application
- Opening `index.html`

SAPUI5 integration test files are also included under:

```text
app/leave-ui/webapp/test/
```

---

## 💻 Useful Commands

### Install Dependencies

```bash
npm install
```

### Start the CAP Development Server

```bash
cds watch
```

### Start the Application

```bash
npm start
```

The `npm start` script uses:

```text
cds-serve
```

### Start the Fiori UI Separately

If the Fiori UI needs to be started separately:

```bash
cd app/leave-ui
npx ui5 serve --port 8008 --open
```

The UI will then be available at:

```text
http://localhost:8008
```

---

## 🧑‍💻 Development Environment

The project was developed and tested using:

- SAP Business Application Studio
- Node.js
- SAP CAP
- SAPUI5
- Fiori
- OData
- SQLite
- Git
- GitHub

---

## 📦 Project Configuration

The main project configuration is stored in:

```text
package.json
```

The project uses:

- `@sap/cds`
- `@cap-js/sqlite`
- `@sap/cds-dk`
- `cds-plugin-ui5`

The Fiori application is configured as part of the project workspace.

---

## 🔐 GitHub

The project is maintained using Git and hosted on GitHub.

Repository:

https://github.com/Anshuman200409/employee-leave-management_SAP

The repository contains:

- Application source code
- CAP backend
- CDS schema
- CSV seed data
- Fiori/UI5 frontend
- Project configuration
- Documentation

The following files are excluded from Git tracking through `.gitignore`:

```text
node_modules/
.env
*.db
*.db-shm
*.db-wal
```

---

## 📊 Project Status

| Component | Status |
|---|---|
| SAP CAP Backend | ✅ Complete |
| OData Service | ✅ Complete |
| SQLite Database | ✅ Complete |
| CSV Seed Data | ✅ Complete |
| Fiori/UI5 Frontend | ✅ Complete |
| Create Leave Request | ✅ Complete |
| View Leave Requests | ✅ Complete |
| Edit Leave Request | ✅ Complete |
| Delete Leave Request | ✅ Complete |
| Approve Leave Request | ✅ Complete |
| Reject Leave Request | ✅ Complete |
| Input Validation | ✅ Complete |
| Database Persistence | ✅ Complete |
| GitHub Repository | ✅ Complete |
| Documentation | ✅ Complete |

---

## 🎓 Project Purpose

This project demonstrates the development of a full-stack enterprise application using the **SAP Cloud Application Programming Model (CAP)** and **SAPUI5/Fiori**.

The project demonstrates:

- SAP CAP backend development
- CDS data modeling
- OData service development
- SQLite database integration
- CSV seed data
- SAPUI5/Fiori frontend development
- CRUD operations
- Leave approval and rejection workflow
- Input validation
- Database persistence
- Git and GitHub usage

---

## 📄 License

This project is intended for educational, learning, and demonstration purposes.