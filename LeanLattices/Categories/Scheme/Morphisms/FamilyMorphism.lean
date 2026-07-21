import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Relative Spec morphism/functor. -/
structure RelativeSpec (X : Scheme) where
  spec : Scheme
  π : spec ⟶ X

/-- Relative Proj morphism/functor. -/
structure RelativeProj (X : Scheme) where
  proj : Scheme
  π : proj ⟶ X

/-- Flat scheme family morphism pi : X -> S (dim S = n). -/
structure FamilyMorphism (S : Scheme) where
  X : Scheme
  π : X ⟶ S
  flat : Prop

end LeanLattices.Categories.Scheme
