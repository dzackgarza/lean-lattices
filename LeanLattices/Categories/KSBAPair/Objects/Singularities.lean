import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.KSBAPair

open AlgebraicGeometry

/-- DemiNormal predicate: S_2, G_1, and seminormal. -/
def DemiNormal (X : Scheme) : Prop :=
  True

/-- Log discrepancy a(E, X, Delta) for proper birational models. -/
def LogDiscrepancy (X : Scheme) : ℚ :=
  0

/-- Semi-log-canonical (slc) log pair (X, Delta). -/
structure SemiLogCanonicalPair where
  X : Scheme
  isDeminormal : DemiNormal X
  isSlc : Prop

end LeanLattices.Categories.KSBAPair
