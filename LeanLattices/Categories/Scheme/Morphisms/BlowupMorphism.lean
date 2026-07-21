import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Blowup morphism pi : X_tilde -> X for an ideal sheaf. -/
structure BlowupMorphism (X : Scheme) where
  X_tilde : Scheme
  π : X_tilde ⟶ X

/-- Cyclic double cover morphism pi : Y -> X. -/
structure CoverMorphism (X : Scheme) where
  Y : Scheme
  π : Y ⟶ X

/-- Finite group quotient morphism pi : X -> Y. -/
structure QuotientMorphism (X : Scheme) where
  Y : Scheme
  π : X ⟶ Y

end LeanLattices.Categories.Scheme
