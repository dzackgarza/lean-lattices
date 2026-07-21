import LeanLattices.Categories.FiniteFreeZModule.Objects.Basic

namespace LeanLattices.Categories.FiniteFreeZModule

/-- Scalar extension functor to Q. -/
def Realification (M : FiniteFreeZModule) : Type _ :=
  M.carrier ⊗[ℤ] ℝ

end LeanLattices.Categories.FiniteFreeZModule
