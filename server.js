const express = require("express");
const mysql = require("mysql2");
const inquirer = require("inquirer");
const { printTable } = require("console-table-printer");

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to db
const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "OSU_b00tcamp",
    database: "employees_db",
  },
  console.log("Connected to the employee database.")
);

function questList() {
  inquirer
    .prompt([
      {
        type: "list",
        name: "selection",
        message:
          "Welcome to our employee database application. What would you like to do?",
        choices: [
          "View all departments",
          "View all jobs",
          "View all employees",
          "Add a department",
          "Add a job",
          "Add an employee",
          "Update an employee",
          "Delete a department",
          "Delete a job",
          "Delete an employee",
          "Quit",
        ],
      },
    ])
    .then(function ({ selection }) {
      switch (selection) {
        case "View all departments":
          viewDepts();
          break;

        case "View all jobs":
          viewJobs();
          break;

        case "View all employees":
          viewEmps();
          break;

        // case "Add a department":
        //   addNewDept();
        //  break;

        case "Add an employee":
          addNewEmp();

        // case "Add a job":
        //   addNewJob();
        //  break;

        // case "Update an employee":
        //   updateEmp();
        //  break;

        // case "Delete an employee":
        //   deleteDept();
        //  break;

        // case "Delete an employee":
        //   deleteJob();
        //  break;

        // case "Delete an employee":
        //   deleteEmp();
        //  break;

        case "Quit":
          quit();
      }
    });
}

// Select all departments
function viewDepts() {
  db.query(`SELECT * FROM department`, (err, department) => {
    if (err) {
      console.log(err);
    }
    printTable(department);

    questList();
  });
}

// Select all jobs
function viewJobs() {
  db.query(`SELECT * FROM job`, (err, job) => {
    if (err) {
      console.log(err);
    }
    printTable(job);

    questList();
  });
}

// Select all employees
function viewEmps() {
  db.query(`SELECT * FROM employee ORDER BY last_name`, (err, emps) => {
    if (err) {
      console.log(err);
    }
    printTable(emps);

    questList();
  });
}

// Create a department
// function addNewDept() {}

// Create an employee
function addNewEmp() {
  inquirer.prompt([
    {
      type: "input",
      name: "first_name",
      message: "What is the new employee's first name?",
    },
    {
      type: "input",
      name: "last_name",
      message: "What is the new employee's last name?",
    },
    {
      type: "list",
      name: "job",
      message: "What is the new employee's job?",
    },
  ]);

  questList();
}

// Create a job
// function addNewJob() {}

// Update an employee
// function updateEmp() {}

// Delete a department
// function deleteDept() {}

// Delete an employee
// function deleteEmp() {
//   db.query(`DELETE FROM employee WHERE emp_id = ?`, (err, emps) => {
//     if (err) {
//       console.log(err);
//     }
//     printTable(emps);

//     questList();
//   });
// }

// Delete a job
// function deleteJob() {}

function quit() {
  db.end();
}

// Default response for requests (Not Found)
// app.use((req, res) => {
//   res.status(404).end();
// });

questList();

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
