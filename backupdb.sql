-- sql backup database statement

-- backup database full back up of an existing sqldatabase

backup database db_name
to disk = 'filepath ';

-- sql backup with diffential statement 

backup database db_name 
to disk = 'filepath '
with diffential;         -- diffferential back only backs up the parts of the db that have changed since the lst full db backup.

-- example to similer 