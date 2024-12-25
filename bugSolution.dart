```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with 'response'
      //Example: Parse JSON response
      final jsonData = jsonDecode(response.body);
      print(jsonData);  // Handle JSON data
    } else {
      // Handle error gracefully. Don't rethrow unless absolutely necessary.
      print('Error: Failed to load data. Status code: ${response.statusCode}');
       //Optionally, show user-friendly error message
    }
  } catch (e) {
    // Handle exception. Log error for debugging
    print('An unexpected error occurred: $e');
    // Optionally display a user-friendly message, avoiding detailed error info
    //For example: print("An error occurred. Please try again later");
  }
}
```