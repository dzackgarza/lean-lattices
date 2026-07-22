import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Flat scheme family morphism pi : X -> S (dim S = n). -/
structure FamilyMorphism (S : Scheme) where
  X : Scheme
  π : X ⟶ S
  flat : Prop
  fiberDimension : ℕ
  genericFiber : Scheme
  specialFiber : ∀ s : S, Scheme

end LeanLattices.Categories.Scheme
