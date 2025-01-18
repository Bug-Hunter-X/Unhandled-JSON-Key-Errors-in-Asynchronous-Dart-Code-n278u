```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data here
      print(jsonData['key']); // Might throw an error if 'key' is missing
    } else {
      // Handle error responses
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request or JSON parsing
    print('Error: $e');
    // Consider rethrowing the exception to be handled at a higher level
    rethrow; 
  }
}
```