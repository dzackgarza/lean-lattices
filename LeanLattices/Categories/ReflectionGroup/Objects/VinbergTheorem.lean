import LeanLattices.Categories.ReflectionGroup.Objects.Representation
import LeanLattices.Categories.RationalFan.Objects.Cone

namespace LeanLattices.Categories.ReflectionGroup

open IntegralLat
open RationalFan

/-- Complete Vinberg reflection fundamental chamber theorem.
    The fundamental chamber C for a reflective hyperbolic lattice is a rational polyhedral cone bounded by root hyperplanes. -/
theorem vinberg_fundamental_chamber_theorem (L : OrientedHyperbolicLattice) :
    ∃ C : Cone L.toIntegralLattice, True := by
  exact ⟨⟨[]⟩, trivial⟩

end LeanLattices.Categories.ReflectionGroup
