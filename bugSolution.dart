```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check for key existence before accessing it
      if (jsonData.containsKey('key')) {
        print(jsonData['key']);
      } else {
        print('Error: key "key" not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Rethrow the exception to be handled higher up
  }
}
```