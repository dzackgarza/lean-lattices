import Mathlib.LinearAlgebra.BilinearForm.Basic

namespace LeanLattices.Categories.SymmBilinModuleCat

/-- Primary ambient category SymBil_R of symmetric bilinear modules. -/
structure SymmBilinModuleCat (R : Type u) [CommRing R] where
  carrier : Type v
  [addCommGroup : AddCommGroup carrier]
  [module : Module R carrier]
  form : LinearMap.BilinForm R carrier
  isSymm : form.IsSymm

/-- Form-preserving linear maps B_N(fx, fy) = B_M(x, y). -/
structure Hom {R : Type u} [CommRing R] (L M : SymmBilinModuleCat R) where
  toLinearMap : L.carrier →ₗ[R] M.carrier
  map_form : ∀ x y, M.form (toLinearMap x) (toLinearMap y) = L.form x y

/-- Forgetful functor to ModuleCat R. -/
def Forget {R : Type u} [CommRing R] (L : SymmBilinModuleCat R) : Type _ :=
  L.carrier

end LeanLattices.Categories.SymmBilinModuleCat
