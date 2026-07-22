import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.AlgebraicStack

open AlgebraicGeometry

/-- An algebraic space with an etale scheme presentation. -/
structure AlgebraicSpace where
  points : Type
  presentation : Scheme
  atlas : presentation → points
  etale : Prop
  surjective : Function.Surjective atlas

end LeanLattices.Categories.AlgebraicStack
