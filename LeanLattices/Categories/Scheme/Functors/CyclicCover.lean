import LeanLattices.Categories.Scheme.Divisors.Reflexive

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Reflexive cyclic cover algebra ⊕_{i=0}^{n-1} L^[-i]. -/
structure ReflexiveCyclicCover (X : Scheme) (n : ℕ) where
  coverScheme : Scheme
  π : coverScheme ⟶ X

/-- Index-one cover data for singular Enriques and ADE surface bases. -/
structure IndexOneCover (X : Scheme) where
  canonicalCover : Scheme
  π : canonicalCover ⟶ X

end LeanLattices.Categories.Scheme
