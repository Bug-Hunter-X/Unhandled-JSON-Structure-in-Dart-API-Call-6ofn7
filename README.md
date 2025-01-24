# Unhandled JSON Structure in Dart API Call

This repository demonstrates a common error in Dart applications involving API calls and JSON parsing: failing to handle unexpected JSON structures.  The `bug.dart` file contains code that attempts to access a specific key ('data') from the JSON response, without checking if that key exists.  The `bugSolution.dart` file provides a robust solution, showcasing error handling and defensive programming practices.

The issue is particularly common when dealing with external APIs, where the response structure can change or contain unexpected data.

## How to reproduce:
1. Clone the repository.
2. Run `bug.dart`.  Observe the error when the API response doesn't match the expected structure.
3. Run `bugSolution.dart`. Observe that it handles the missing key gracefully and continues to run.