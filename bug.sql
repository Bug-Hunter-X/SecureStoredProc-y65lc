SQL injection vulnerability in a stored procedure. The stored procedure uses string concatenation to build SQL queries, making it vulnerable to SQL injection attacks. For example:

```sql
CREATE PROCEDURE GetUsersByName (@name VARCHAR(50))
AS
BEGIN
    SELECT * FROM Users WHERE name = '@name'
END
```

If an attacker passes a malicious value for `@name`, such as `' OR 1=1 --`, the query becomes:

```sql
SELECT * FROM Users WHERE name = '' OR 1=1 --'
```

This query will return all users from the Users table, bypassing the intended filtering.

Another Example:

```sql
-- Vulnerable stored procedure
CREATE PROCEDURE usp_GetUserInfo (@UserID INT)
AS
BEGIN
    DECLARE @SQLQuery NVARCHAR(MAX);
    SET @SQLQuery = 'SELECT * FROM Users WHERE UserID = ' + CAST(@UserID AS VARCHAR(10));
    EXEC sp_executesql @SQLQuery;
END;
GO
```

This procedure is vulnerable because it concatenates user input directly into the SQL query. An attacker could manipulate the @UserID parameter to inject malicious SQL code and potentially gain unauthorized access to the database.
