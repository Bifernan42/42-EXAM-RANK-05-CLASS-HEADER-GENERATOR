# Automatic C++ Class Header Generator

## 📖 Introduction

During my first attempt at **Exam Rank 05**, I found myself running out of time while working on `cpp_module_02`. Despite completing the task, I couldn't push my project in time, and it was just a matter of minutes — a frustrating experience.

To avoid this in future attempts, I created a simple Bash script that automates the creation of C++ class headers for empty `.hpp` files in the current directory.

## 🛠️ What Does the Script Do?

This script scans the current directory for `.hpp` header files and generates a basic C++ class template for each **empty** file it finds. If a header file already contains content, it will **not** overwrite it, preserving your existing code.

### 🔑 Key Features
- **No Overwriting**: Only processes empty `.hpp` files, so existing content is safe.
- **Time-Saving**: Quickly generates boilerplate code for C++ classes, allowing you to focus on implementation.

## 🚀 How to Use

### Step 1: Prepare Your Header Files

1. Copy the files requested by the exam subject into your current working directory.
2. Use the `touch` command to create any necessary empty header files:
   ```bash
   touch MyClass.hpp MyOtherClass.hpp SomeUtility.hpp

### Step 2: Run the Script

1. Ensure your script file is executable. If not, make it executable with:
   ```bash
   chmod +x generate_classes.sh
2. Run the script:
   ```bash
   ./generate_classes.sh

### Step 3: Check the Generated Files

The script automatically generates the basic C++ class structure in each empty `.hpp` file. For example, if you have an empty file named `MyClass.hpp`, it will look like this after running the script:
```cpp
#ifndef MYCLASS_HPP
#define MYCLASS_HPP
#include <iostream>

class MyClass
{
  private:
      std::string attribute_1;
      std::string attribute_2;
  public:
      MyClass();
      MyClass(const MyClass &);
      MyClass &operator=(const MyClass &);
      ~MyClass();
};

#endif
```
### 📚 Conclusion
This script is a time-saving tool designed to automate repetitive boilerplate coding during C++ module exams or projects requiring multiple class headers. By handling the creation of C++ class structures automatically, you can focus on implementing core functionality without worrying about setting up header files manually.

Feel free to use and modify the script as needed. Good luck on your exams and happy coding!
