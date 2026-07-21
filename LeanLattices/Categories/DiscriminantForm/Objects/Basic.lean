import LeanLattices.Categories.IntegralLat.Objects.Basic
import Mathlib.Data.QModZ

namespace LeanLattices.Categories.DiscriminantForm

/-- Finite quadratic module (A_L, b_L, q_L). -/
structure FiniteQuadraticModule where
  carrier : Type u
  [addCommGroup : AddCommGroup carrier]
  [finite : Finite carrier]

def discrGroup (L : IntegralLat.IntegralLattice) : Type _ :=
  Module.Dual ℤ L.carrier ⧸ LinearMap.range (L.form : L.carrier →ₗ[ℤ] (L.carrier →ₗ[ℤ] ℤ))

end LeanLattices.Categories.DiscriminantForm
