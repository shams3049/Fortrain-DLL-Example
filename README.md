# Fortran DLL Example

This project demonstrates how to create and use a Fortran dynamic link library (DLL) with a simple example of adding two numbers.

## Project Structure

- `mylib.f90`: Contains the Fortran module with the `add_numbers` subroutine.
- `main.f90`: Contains the main program that uses the `add_numbers` subroutine from the DLL.

## System Requirements

- Windows operating system
- Fortran compiler (e.g., `gfortran`)
- Command-line interface (e.g., Command Prompt or PowerShell)

## Setup

1. Ensure you have a Fortran compiler installed (e.g., `gfortran`).
2. Navigate to the project directory:
    ```sh
    cd /c:/Users/shams/Desktop/DLL_TestCompilation
    ```

## Compilation and Execution

### Step 1: Compile the Fortran module to create the DLL

```sh
gfortran -shared -o mylib.dll -fPIC mylib.f90
```

### Step 2: Compile the main program and link it with the DLL

```sh
gfortran -o main.exe main.f90 mylib.dll
```

### Step 3: Run the executable

```sh
./main.exe
```

## Expected Output

```
 Sum: 6.0
```

## Notes

- Ensure that the DLL (`mylib.dll`) is in the same directory as the executable (`main.exe`) or in a directory that is included in your system's PATH.
- This example uses `iso_c_binding` to ensure compatibility between Fortran and C.

## .gitignore

```
# Ignore binary files
*.dll
*.exe

# Ignore object files
*.o
*.mod

# Ignore temporary files
*.tmp
*.log
```

Feel free to modify and extend this project for your own use cases.
