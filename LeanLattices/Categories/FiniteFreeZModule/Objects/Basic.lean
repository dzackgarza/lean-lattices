import Mathlib.Algebra.Module.Basic

namespace LeanLattices.Categories.FiniteFreeZModule

/-- Property defining objects of FiniteFreeZModule: finite and free Z-modules. -/
structure FiniteFreeZModule where
  carrier : Type u
  [addCommGroup : AddCommGroup carrier]
  [module : Module ℤ carrier]
  [finite : Module.Finite ℤ carrier]
  [free : Module.Free ℤ carrier]

end LeanLattices.Categories.FiniteFreeZModule
