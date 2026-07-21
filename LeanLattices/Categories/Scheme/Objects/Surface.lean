import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Full subcategory Surface_k ⊂ Scheme_k of 2D integral schemes over k. -/
structure Surface (k : Type*) [Field k] where
  scheme : Scheme

/-- Minimal resolution pi : X_tilde -> X of RDP/ADE singularities. -/
structure RDPResolution (X : Scheme) where
  X_tilde : Scheme
  π : X_tilde ⟶ X

/-- ABCDE folded surface quotient map pi : X -> Y. -/
structure AnticanonicalQuotient (X : Scheme) where
  Y : Scheme
  π : X ⟶ Y

end LeanLattices.Categories.Scheme
