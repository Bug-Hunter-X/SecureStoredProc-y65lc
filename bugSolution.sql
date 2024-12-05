The solution is to use parameterized queries or prepared statements to prevent SQL injection.  Here's how you rewrite the vulnerable stored procedure to prevent SQL injection:

```sql
-- Secure stored procedure using parameterized query
CREATE PROCEDURE usp_GetUserInfo (@UserID INT)
AS
BEGIN
    SELECT * FROM Users WHERE UserID = @UserID;
END;
GO
```

This version uses a parameter placeholder (@UserID) that the database system handles securely, preventing malicious input from being interpreted as SQL code.

Another example of parameterization for string inputs:

```sql
CREATE PROCEDURE GetUsersByName (@name VARCHAR(50))
AS
BEGIN
    SELECT * FROM Users WHERE name = @name
END
```
This parameterized version prevents SQL injection attacks, as the database treats `@name` as a data value, not as executable code.