```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if 'data' key exists before accessing it
      final data = jsonData.containsKey('data') ? jsonData['data'] : null;

      if (data != null) {
        // Process the data
        print('Data: $data');
      } else {
        print('Data key not found in JSON response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```