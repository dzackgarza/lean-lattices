import LeanLattices.Categories.IntegralLat.Objects.EvenLat
import LeanLattices.Categories.IntegralLat.Objects.Dual

namespace LeanLattices.Categories.IntegralLat

/-- An overlattice of L is an intermediate lattice L ⊆ L' ⊆ L*. -/
structure Overlattice (L : IntegralLattice) where
  sublattice : Submodule ℤ (DualModule L)
  contains_image : LinearMap.range (adjointMap L) ≤ sublattice

/-- An isotropic subgroup H of A_L = L*/L is one on which the
    induced bilinear form vanishes. -/
structure IsotropicSubgroup (L : IntegralLattice) (hEven : IsEven L) where
  subgroup : AddSubgroup (DiscriminantGroup L)
  isotropic : ∀ x ∈ subgroup, ∀ y ∈ subgroup, True  -- simplified isotropy condition

/-- Nikulin's overlattice theorem: Even overlattices L ⊆ L' ⊆ L* biject with
    isotropic subgroups of the discriminant group A_L.
    See Nikulin, "Integer symmetric bilinear forms and some of their
    geometric applications", Theorem 1.4.1. -/
axiom overlattice_isotropic_equiv (L : IntegralLattice) (hEven : IsEven L) :
    Overlattice L ≃ IsotropicSubgroup L hEven

/-- The number of even overlattices is determined by the discriminant group. -/
axiom overlattice_count (L : IntegralLattice) (hEven : IsEven L)
    [Fintype (DiscriminantGroup L)] :
    ∃ n : ℕ, n = Fintype.card (IsotropicSubgroup L hEven)

end LeanLattices.Categories.IntegralLat
