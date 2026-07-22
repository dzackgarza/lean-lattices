import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Relative Spec of a quasicoherent algebra on a base scheme. -/
structure RelativeSpec (X : Scheme) where
  algebra : Type
  isQuasiCoherent : Prop
  spec : Scheme
  π : spec ⟶ X
  universalProperty : Prop

end LeanLattices.Categories.Scheme
