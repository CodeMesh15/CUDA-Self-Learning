#include <iostream>

int main() {
    // Basic pointer usage
    int x = 42;
    int* ptr = &x;  // ptr holds address of x
    
    std::cout << "Value of x: " << x << std::endl;
    std::cout << "Address of x: " << &x << std::endl;
    std::cout << "Value of ptr: " << ptr << std::endl;
    std::cout << "Value pointed to by ptr: " << *ptr << std::endl;
    
    return 0;
}

// int value = 42;
  //  int* ptr1 = &value;
  //  int** ptr2 = &ptr1;
  //  int*** ptr3 = &ptr2; --> Multi level pointers
