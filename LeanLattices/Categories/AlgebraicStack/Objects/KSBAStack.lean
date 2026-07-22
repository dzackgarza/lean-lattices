import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.AlgebraicStack

open AlgebraicGeometry

/-- A moduli stack of stable pairs with its geometric properties and lattice-labelled components. -/
structure KSBAStack where
  stack : Type _
  objects : stack → Scheme
  latticeLabel : stack → Type
  proper : Prop
  separated : Prop

end LeanLattices.Categories.AlgebraicStack
