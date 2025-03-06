module mymodule
contains
  subroutine add(a, b, result)
    implicit none
    integer, intent(in) :: a, b
    integer, intent(out) :: result
    result = a + b
  end subroutine add
end module mymodule
