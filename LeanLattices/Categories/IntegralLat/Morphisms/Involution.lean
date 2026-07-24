module

public import LeanLattices.Categories.IntegralLat.Objects.Basic

@[expose] public section

namespace LeanLattices.Categories.IntegralLat

/-- Lattice involution J : L -> L with J^2 = id. -/
structure Involution (L : IntegralLattice) where
  hom : SymmBilinModuleCat.Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨L.carrier, L.form, L.isSymm⟩
  involutive : ∀ x, hom.toLinearMap (hom.toLinearMap x) = x

/-- Fixed sublattice L^J = ker(J - 1). -/
def FixedSublattice (L : IntegralLattice) (J : Involution L) : Submodule ℤ L.carrier :=
  LinearMap.ker (J.hom.toLinearMap - LinearMap.id)

/-- Anti-fixed sublattice L^-J = ker(J + 1). -/
def AntiFixedSublattice (L : IntegralLattice) (J : Involution L) : Submodule ℤ L.carrier :=
  LinearMap.ker (J.hom.toLinearMap + LinearMap.id)

end LeanLattices.Categories.IntegralLat
