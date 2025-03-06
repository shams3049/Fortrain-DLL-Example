module mymodule
  use iso_c_binding
  implicit none
contains
  subroutine add_numbers(a, b, result)
    real(c_float), intent(in) :: a, b
    real(c_float), intent(out) :: result
    result = a + b
  end subroutine add_numbers
end module mymodule
