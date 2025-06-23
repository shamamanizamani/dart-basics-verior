// Define the Student class
class Student {
  String name;
  int rollNo;
  Set<String> courses;
  // Constructor
  Student({required this.name, required this.rollNo, required this.courses});
  // Method to display student info
  void displayInfo() {
    print('Name: $name');
    print('Roll No: $rollNo');
    print('Courses: ${courses.join(', ')}');
    print('---');
  }}
void main() {
  // Creating a list of students
  List<Student> students = [
    Student(name: 'Shamama', rollNo: 4, courses: {'Math', 'Physics'}),
    Student(name: 'AR', rollNo: 5, courses: {'Chemistry', 'Biology'}),
    Student(name: 'Haad', rollNo: 6, courses: {'English', 'Computer'}),
  ];
  // Map to store marks: rollNo -> marks
  Map<int, double> marks = {
    1: 85.5,
    2: 78.0,
    3: 92.3, };
  // Display student data and calculate total marks
  double totalMarks = 0;
  for (Student student in students) {
    student.displayInfo();
    totalMarks += marks[student.rollNo] ?? 0;
  }
  // Calculate and print average marks
  double average = totalMarks / students.length;
  print('Average Marks: ${average.toStringAsFixed(2)}');
}