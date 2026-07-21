import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.RationalFan

open IntegralLat

/-- Rational polyhedral cone over ZLat. -/
structure Cone (L : IntegralLattice) where
  generators : List L.carrier

/-- Rational polyhedral fan over ZLat. -/
structure Fan (L : IntegralLattice) where
  cones : Set (Cone L)

/-- Equivariant semifan and Wythoff coarsening. -/
structure Semifan (L : IntegralLattice) where
  cones : Set (Cone L)
  isEquivariant : Prop

structure FanMorphism (L : IntegralLattice) (F1 F2 : Fan L) where
  map : L.carrier →ₗ[ℤ] L.carrier

end LeanLattices.Categories.RationalFan
