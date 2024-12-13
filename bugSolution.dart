```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // Return 0 if _value is null

  void setValue(int newValue) {
    if (newValue < 0) {
      throw Exception('Value cannot be negative');
    }
    _value = newValue;
  }
}

void main() {
  final myObject = MyClass(10);
  print('Initial value: ${myObject.value}'); // Output: 10

  try {
    myObject.setValue(-5); // Try to set a negative value
  } catch (e) {
    print('Error: $e'); // Handle the exception gracefully
  }
}
```