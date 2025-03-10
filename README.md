# Fortran DLL Example

This project demonstrates how to create and use a Fortran dynamic link library (DLL) with a simple example of adding two numbers.

## Project Structure

- `mylib.f`: Contains the Fortran module with the `add_numbers` subroutine.
- `main.f`: Contains the main program that uses the `add_numbers` subroutine from the DLL.

## System Requirements

- Fortran compiler (e.g., `gfortran`)
- Command-line interface (e.g., Terminal)

## Setup

1. Ensure you have a Fortran compiler installed (e.g., `gfortran`).
2. Navigate to the project directory:
    ```sh
    cd /path/to/project
    ```

## Compilation and Execution

### Step 1: Compile the Fortran module to create the DLL

```sh
gfortran -shared -o mylib.dll -fPIC mylib.f
```

### Step 2: Compile the main program and link it with the DLL

```sh
gfortran -o main.exe main.f mylib.dll
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

## GitHub Actions

This project includes a GitHub Actions workflow to automatically compile the Fortran code and check if the examples compile successfully. The workflow is defined in the `.github/workflows/compile.yml` file.

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
