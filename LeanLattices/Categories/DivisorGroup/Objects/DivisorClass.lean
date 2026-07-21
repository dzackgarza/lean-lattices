import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.DivisorGroup

open AlgebraicGeometry

/-- Cartier/Weil divisor groups Div(X) and Cl(X) as AddCommGroup objects. -/
structure DivisorGroup (X : Scheme) where
  group : Type _
  [addCommGroup : AddCommGroup group]

structure DivisorHom (X : Scheme) (D1 D2 : DivisorGroup X) where
  hom : D1.group →+ D2.group

/-- Positivity functor DivisorGroup -> Pic(X). -/
def PositivityFunctor (X : Scheme) (D : DivisorGroup X) : Prop :=
  True

end LeanLattices.Categories.DivisorGroup
