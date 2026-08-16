# Employee Leave Management – SAP CAP & Fiori

## 📑 Table of Contents

- [Features](#-features)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [How to Run the Application](#️-how-to-run-the-application)
- [Opening the Fiori Application](#-opening-the-fiori-application)
- [Application Features](#-application-features)
- [Application Workflow](#-application-workflow)
- [Database](#️-database)
- [Testing](#-testing)
- [Development](#-development)



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
- Input validation
- Leave status visualization
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

<details>
<summary>📁 Click to expand project structure</summary>

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
│   └── schema.cds
│
├── srv/
│   └── leave-service.cds
│
├── package.json
├── package-lock.json
├── .gitignore
└── readme.md

## ▶️ How to Run the Application

<details>
<summary>Click here to see the complete setup instructions</summary>

### 1. Clone the Repository

```bash
git clone https://github.com/Anshuman200409/employee-leave-management_SAP.git
cd employee-leave-management_SAP

## 2. Install Dependencies

Install all required project dependencies:

```bash
npm install
```

This installs the SAP CAP, SQLite, UI5, and other required dependencies.

## 3. Start the SAP CAP Application

From the project root directory, run:

```bash
cds watch
```

This starts the SAP CAP development server and the OData backend service.

## 4. Open the Fiori Application

After running `cds watch`, SAP Business Application Studio opens the Fiori application page.

The initial page may display multiple applications or options.

To access the Employee Leave Management application:

1. Open the Fiori application page.
2. Locate `index.html`.
3. Open `index.html`.
4. The **Employee Leave Management** application will open.

The main application file is located at:

```text
app/leave-ui/webapp/index.html
```

<details>
<summary>📋 Click here for the complete application setup</summary>

### Step 1 — Clone the Repository

```bash
git clone https://github.com/Anshuman200409/employee-leave-management_SAP.git
cd employee-leave-management_SAP
```

### Step 2 — Install Dependencies

```bash
npm install
```

### Step 3 — Start the Application

```bash
cds watch
```

### Step 4 — Open the Fiori Application

After `cds watch` starts:

1. Open the Fiori application page.
2. Find the available applications.
3. Open `index.html`.
4. The **Employee Leave Management** application will appear.

</details>

## 🎯 Application Actions

| Action | Result |
|---|---|
| Create Leave Request | Creates a new leave request |
| Edit | Updates an existing leave request |
| Delete | Deletes a leave request after confirmation |
| Approve | Changes status to Approved |
| Reject | Changes status to Rejected |

## 🔧 CRUD Operations

| Operation | Description |
|---|---|
| Create | Create a new employee leave request |
| Read | Display existing leave requests |
| Update | Edit, approve, or reject a leave request |
| Delete | Delete an existing leave request |

## 🔄 Application Workflow

```text
        Start Application
               │
               ▼
          Fiori Page
               │
               ▼
          Open index.html
               │
               ▼
    Employee Leave Management
               │
       ┌───────┼────────┐
       ▼       ▼        ▼
     Create   Edit    Delete
       │
       ▼
    Pending
      /   \
     ▼     ▼
 Approved  Rejected
```

## 🗄️ Database

The application uses SQLite for local development.

Initial data is provided through CSV files located in:

```text
db/data/
```

The main data files are:

```text
employee.leave-Employees.csv
employee.leave-LeaveRequests.csv
```

The database schema is defined in:

```text
db/schema.cds
```

The backend service is defined in:

```text
srv/leave-service.cds
```

## 🧪 Testing

The application has been tested for:

- Creating leave requests
- Viewing leave requests
- Editing leave requests
- Deleting leave requests
- Approving leave requests
- Rejecting leave requests
- Input validation
- SQLite database persistence

## 👨‍💻 Development

The project follows the SAP CAP application structure:

```text
app/  → Fiori/UI5 frontend
db/   → Database schema and seed data
srv/  → CAP/OData backend service
```

The application was developed and tested using SAP Business Application Studio.

## 📄 License

This project is intended for educational and demonstration purposes.