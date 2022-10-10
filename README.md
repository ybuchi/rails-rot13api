# ROT-13 Rails Application
A simple rails API that enables a user to store a string of 1,000 characters, stores that string in a PostgreSQL database, and returns an ROT-13 version of that string.

There are only 2 API endpoints:
- A GET endpoint at "/original_strings" which retrieves all of the original strings submitted by users.
- A POST endpoint at "/original_strings" which enables a user to post a new string and receive an ROT-13 version of that string in return. 

## Notes
To run the server, run the following command:
```
rails s
```
