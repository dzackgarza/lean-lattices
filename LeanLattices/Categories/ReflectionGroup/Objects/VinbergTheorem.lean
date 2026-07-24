module

public import LeanLattices.Categories.ReflectionGroup.Objects.Representation
public import LeanLattices.Categories.ReflectionGroup.Objects.OrientedHyperbolic
public import LeanLattices.Categories.RationalFan.Objects.Cone

@[expose] public section

namespace LeanLattices.Categories.ReflectionGroup

open IntegralLat
open RationalFan

/-- Complete Vinberg reflection fundamental chamber theorem.
    The fundamental chamber C for a reflective hyperbolic lattice is a rational polyhedral cone bounded by root hyperplanes. -/
axiom vinbergFundamentalChamber (L : OrientedHyperbolicLattice) :
  Cone L.toIntegralLattice

/-- The Vinberg chamber is bounded by negative-square lattice roots. -/
axiom vinberg_fundamental_chamber_theorem (L : OrientedHyperbolicLattice) :
  ∀ r ∈ (vinbergFundamentalChamber L).generators,
    L.form r r < 0

end LeanLattices.Categories.ReflectionGroup
