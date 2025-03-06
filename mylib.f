module mymodule
    use, intrinsic :: iso_c_binding
    implicit none
contains
    subroutine add_numbers(a, b, result) bind(C, name="add_numbers")
        use iso_c_binding
        real(c_float), intent(in) :: a, b
        real(c_float), intent(out) :: result
        result = a + b
    end subroutine add_numbers
end module mymodule