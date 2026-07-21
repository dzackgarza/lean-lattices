import LeanLattices.Algebra.BilinearForm.Discriminant

namespace LeanLattices.Categories.QuadraticModule

variable {R : Type*} [CommRing R] {M : Type*} [AddCommGroup M] [Module R M]

def DiscriminantFunctor (B : LinearMap.BilinForm R M) : Type _ :=
  IntegralLattice.DiscriminantModule B

end LeanLattices.Categories.QuadraticModule
