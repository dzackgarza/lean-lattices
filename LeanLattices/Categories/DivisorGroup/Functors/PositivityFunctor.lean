import LeanLattices.Categories.DivisorGroup.Objects.DivisorClass

namespace LeanLattices.Categories.DivisorGroup

/-- Pullback-stable positivity data selected from a divisor group. -/
structure PositivityData {X : AlgebraicGeometry.Scheme} (D : DivisorGroup X) where
  positive : Set D.group
  excludes_zero : (0 : D.group) ∉ positive

/-- The positivity construction on a divisor group. -/
def PositivityFunctor {X : AlgebraicGeometry.Scheme} (D : DivisorGroup X) :
    PositivityData D where
  positive := PositiveDivisors X D
  excludes_zero := by simp [PositiveDivisors]

end LeanLattices.Categories.DivisorGroup
