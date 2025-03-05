program testdll
    use, intrinsic :: iso_c_binding
    implicit none

    interface
        subroutine add_numbers(a, b, result) bind(C, name="add_numbers")
            use iso_c_binding
            real(c_float), intent(in) :: a, b
            real(c_float), intent(out) :: result
        end subroutine add_numbers
    end interface

    real(c_float) :: x, y, result
    x = 3.5
    y = 2.5

    call add_numbers(x, y, result)
    print *, "Sum: ", result

end program testdll
