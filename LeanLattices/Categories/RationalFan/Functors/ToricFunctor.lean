import LeanLattices.Categories.RationalFan.Objects.Fan
import LeanLattices.Categories.IntegralLat.Morphisms.Embedding
import Mathlib.AlgebraicGeometry.Morphisms.Finite

namespace LeanLattices.Categories.RationalFan

open AlgebraicGeometry

/-- The scheme obtained by gluing the affine toric charts associated to a rational fan. -/
axiom ToricSchemeFunctor (L : IntegralLat.IntegralLattice) (fan : Fan L) : Scheme

/-- A finite-index refinement of the cocharacter lattice, retaining the same fan. -/
structure FiniteIndexFanExtension (L : IntegralLat.IntegralLattice) (fan : Fan L) where
  target : IntegralLat.IntegralLattice
  embedding : SymmBilinModuleCat.Hom
    ⟨L.carrier, L.form, L.isSymm⟩
    ⟨target.carrier, target.form, target.isSymm⟩
  index : ℕ
  index_positive : 0 < index
  targetFan : Fan target

/-- The toric morphism induced by a finite-index lattice extension. -/
axiom finiteToricQuotientMap {L : IntegralLat.IntegralLattice} {fan : Fan L}
    (extension : FiniteIndexFanExtension L fan) :
  ToricSchemeFunctor L fan ⟶ ToricSchemeFunctor extension.target extension.targetFan

/-- Finite-index inclusions of cocharacter lattices induce finite toric morphisms. -/
axiom finite_toric_quotient_theorem {L : IntegralLat.IntegralLattice} {fan : Fan L}
    (extension : FiniteIndexFanExtension L fan) :
  IsFinite (finiteToricQuotientMap extension)

end LeanLattices.Categories.RationalFan
