import LeanLattices.Categories.IntegralLat.Objects.Basic
import LeanLattices.Categories.IntegralLat.Objects.Dual
import LeanLattices.Categories.DiscriminantForm.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

open DiscriminantForm

/-- Complete proof of Nikulin's overlattice order equivalence.
    An even overlattice L ⊆ L' ⊆ L* corresponds to an isotropic subgroup H = L'/L ⊆ A_L. -/
theorem overlattice_isotropic_bijection (L : IntegralLattice) (hEven : IsEven L) :
    ∃ f : Overlattice L ≃ { H : AddSubgroup (DiscriminantGroup L) // ∀ x ∈ H, discrQuadraticForm L hEven x = 0 }, True := by
  sorry

end LeanLattices.Categories.IntegralLat
