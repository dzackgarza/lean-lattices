import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Dual module L* = Hom(L, Z). -/
def DualModule (L : IntegralLattice) : Type _ :=
  Module.Dual ℤ L.carrier

/-- Adjoint map beta_B : L -> L*. -/
def adjointMap (L : IntegralLattice) : L.carrier →ₗ[ℤ] DualModule L :=
  L.form

/-- Intrinsic discriminant group A_L = coker(beta_B) = L* / range(beta_B). -/
def DiscriminantGroup (L : IntegralLattice) : Type _ :=
  DualModule L ⧸ LinearMap.range (adjointMap L)

instance (L : IntegralLattice) : AddCommGroup (DiscriminantGroup L) :=
  QuotientAddGroup.Quotient.addCommGroup _

/-- Unimodular predicate: beta_B is surjective. -/
def IsUnimodular (L : IntegralLattice) : Prop :=
  Function.Surjective (adjointMap L)

end LeanLattices.Categories.IntegralLat
