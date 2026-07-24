module

public import Mathlib.AlgebraicGeometry.Scheme

@[expose] public section

namespace LeanLattices.Categories.AlgebraicStack

open AlgebraicGeometry

/-- Kulikov degeneration type. -/
inductive KulikovType where
  | I | II | III

/-- A semistable Kulikov degeneration with trivial relative canonical class. -/
structure KulikovModel where
  totalSpace : Scheme
  base : Scheme
  family : totalSpace ⟶ base
  degenerationType : KulikovType
  semistable : Prop
  trivialRelativeCanonical : Prop

end LeanLattices.Categories.AlgebraicStack
