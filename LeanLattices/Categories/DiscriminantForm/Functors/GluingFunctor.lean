import LeanLattices.NikulinGluing

namespace LeanLattices.Categories.DiscriminantForm

variable {L : Type*} [AddCommGroup L] [Module ℤ L] [Module.Finite ℤ L] [Module.Free ℤ L]

def GluingFunctor (M : IntegralLattice.IntegralLattice L) : Type _ :=
  IntegralLattice.DiscriminantGroup M

end LeanLattices.Categories.DiscriminantForm
