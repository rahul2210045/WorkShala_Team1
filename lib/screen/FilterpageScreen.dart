import 'package:flutter/material.dart';

class FilterScreenPage extends StatefulWidget {
  const FilterScreenPage({Key? key}) : super(key: key);

  @override
  State<FilterScreenPage> createState() => _FilterScreenPageState();
}

class _FilterScreenPageState extends State<FilterScreenPage> {
  List<String> genders = ['Male', 'Female', 'Others'];
  List<String> locations = ['HTML/CSS', 'Kotlin', 'PHP/SQL', 'Python'];
  List<String> types = ['UI/UX Designer', 'Web Developer', 'App Developer'];

  String selectedGender = '';
  String selectedLocation = '';
  String selectedType = '';
  String selectedNavigationOption = '';

  // Additional checkbox options for different sections
  Map<String, List<String>> checkboxOptions = {
    'Salary': ['High', 'Medium', 'Low'],
    'Working hours': ['Full-time', 'Part-time'],
    'Field of Work': ['Art&Design', 'Meta'],
    'Country': ['USA', 'India', 'Canada'],
    'Skills': ['UI/UX Design', 'Web Development', 'Mobile App Development'],
    'Experience': ['1 year', '2 years', '3+ years'],
  };

  // Selected options for additional sections
  Map<String, String> selectedOptions = {
    'Salary': '',
    'Working hours': '',
    'Field of Work': '',
    'Country': '',
    'Skills': '',
    'Experience': '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
        actions: [
          TextButton(
            onPressed: () {
              // Implement logic to clear filters
              setState(() {
                selectedGender = '';
                selectedLocation = '';
                selectedType = '';
                selectedOptions.forEach((key, value) {
                  selectedOptions[key] = '';
                });
              });
            },
            child: Text('Clear Filter'),
          ),
        ],
      ),
      body: Row(
        children: [
          // Left Side: Navigation Options
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(16),
            color: Colors.white, // Change the color as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNavigationOption('Salary'),
                buildNavigationOption('Working hours'),
                buildNavigationOption('Field of Work'),
                buildNavigationOption('Country'),
                buildNavigationOption('Skills'),
                buildNavigationOption('Experience'),
              ],
            ),
          ),

          // Right Side: Dynamic Checkboxes
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(16),
            color: Colors.blue, // Change the color as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Dynamic Checkboxes
                buildDynamicCheckboxes(),

                SizedBox(height: 16),

                // Apply Button
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to apply filters
                    print('Applied Filters:');
                    print('Gender: $selectedGender');
                    print('Location: $selectedLocation');
                    print('Type: $selectedType');
                    selectedOptions.forEach((key, value) {
                      print('$key: $value');
                    });
                    // Add more filters as needed
                  },
                  child: Text('Apply'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavigationOption(String title) {
    return GestureDetector(
      onTap: () {
        _updateNavigationOption(title);
        setState(() {
          // Reset selected options for additional sections
          selectedOptions[title] = '';
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          title,
          style: TextStyle(
            color:
                title == selectedNavigationOption ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }

  void _updateNavigationOption(String option) {
    setState(() {
      selectedNavigationOption = option;
    });
  }

  Widget buildDynamicCheckboxes() {
    if (selectedNavigationOption.isNotEmpty) {
      List<String> options = checkboxOptions[selectedNavigationOption] ?? [];
      return buildCheckboxList(selectedNavigationOption, options);
    } else {
      return Container(); // Return an empty container if no option is selected
    }
  }

  Widget buildCheckboxList(String title, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options.map((option) {
        return buildCheckbox(
          title,
          option,
          options.contains(option),
          (value) {
            setState(() {
              if (value!) {
                selectedOptions[title] = option;
              }
            });
          },
        );
      }).toList(),
    );
  }

  Widget buildCheckbox(
    String title,
    String option,
    bool value,
    void Function(bool?) onChanged,
  ) {
    return Row(
      children: [
        StatefulBuilder(
          builder: (context, setState) {
            return Checkbox(
              value: value,
              onChanged: (newValue) {
                setState(() {
                  onChanged(newValue);
                });
              },
            );
          },
        ),
        InkWell(
          onTap: () {
            onChanged(!value);
          },
          child: Text(
            option,
            style: TextStyle(
              color: value ? Colors.red : Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  void main() {
    runApp(MaterialApp(
      home: FilterScreenPage(),
    ));
  }
}
