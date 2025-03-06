module mymodule
  implicit none
contains
  subroutine add_numbers(a, b, result)
    integer, intent(in) :: a, b
    integer, intent(out) :: result
    result = a + b
  end subroutine add_numbers
end module mymodule
