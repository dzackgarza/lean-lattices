import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- The integral reflection in a root of square `2` or `-2`. -/
axiom reflectionMap (L : IntegralLattice) (r : L.carrier)
    (hr : L.form r r = -2 ∨ L.form r r = 2) : L.carrier →ₗ[ℤ] L.carrier

/-- The root reflection preserves the lattice bilinear form. -/
axiom reflectionMap_isometry (L : IntegralLattice) (r : L.carrier)
    (hr : L.form r r = -2 ∨ L.form r r = 2) (x y : L.carrier) :
  L.form (reflectionMap L r hr x) (reflectionMap L r hr y) = L.form x y

end LeanLattices.Categories.IntegralLat
