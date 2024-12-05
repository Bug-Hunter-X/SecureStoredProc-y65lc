# SQL Injection Vulnerability in Stored Procedure

This repository demonstrates a common SQL injection vulnerability in a stored procedure that uses string concatenation to construct SQL queries.  This is a critical security flaw that can allow attackers to gain unauthorized access to sensitive data or even modify the database.  The solution showcases how to use parameterized queries to prevent this vulnerability.

## Vulnerable Code

The `bug.sql` file contains the vulnerable stored procedure.  Review this code to understand how the vulnerability arises.

## Solution

The `bugSolution.sql` file provides a secure alternative using parameterized queries, which effectively prevent SQL injection attacks. 

## Mitigation

Always use parameterized queries (prepared statements) or stored procedures with proper parameter handling to prevent SQL injection vulnerabilities.  Never directly concatenate user input into SQL queries. Avoid dynamic SQL when possible. Regularly audit and update your code and database access methods for security.