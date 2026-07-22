import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry CategoryTheory

/-- A cyclic double cover with its deck involution and branch locus. -/
structure CoverMorphism (X : Scheme) where
  Y : Scheme
  π : Y ⟶ X
  deckInvolution : Y ⟶ Y
  involutive : (deckInvolution ≫ deckInvolution) = 𝟙 Y
  branchLocus : Set X
  finiteDegreeTwo : Prop

end LeanLattices.Categories.Scheme
