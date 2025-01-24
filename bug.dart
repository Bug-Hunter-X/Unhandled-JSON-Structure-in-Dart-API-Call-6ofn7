```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonData = jsonDecode(response.body);
      // Accessing the data - this is where the error can occur
      final data = jsonData['data'];
      // Process the data
    } else {
      // Handle errors
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    rethrow; // Re-throw to allow higher level handling if needed
  }
}
```