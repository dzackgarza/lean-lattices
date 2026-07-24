module

public import LeanLattices.Categories.SymmBilinModuleCat.Morphisms.Hom
public import Mathlib.CategoryTheory.ConcreteCategory.BundledHom

@[expose] public section

namespace LeanLattices.Categories.SymmBilinModuleCat

open CategoryTheory

universe u v

/-- The forgetful functor SymmBilinModuleCat R ⥤ ModuleCat R,
    sending (M, B, h_B) to M and forgetting the bilinear form. -/
def forgetForm (R : Type u) [CommRing R] : SymmBilinModuleCat.{u, v} R ⥤ ModuleCat.{v} R where
  obj L := ModuleCat.of R L.carrier
  map f := ModuleCat.ofHom f.toLinearMap
  map_id _ := rfl
  map_comp _ _ := rfl

/-- The forgetful functor is faithful: distinct form-preserving maps
    give distinct linear maps. -/
theorem forgetForm_faithful (R : Type u) [CommRing R] :
    (forgetForm.{u, v} R).Faithful where
  map_injective := by
    intro _ _ f g h
    have : f.toLinearMap = g.toLinearMap := by
      exact congr_arg ModuleCat.Hom.hom h
    cases f; cases g; congr

end LeanLattices.Categories.SymmBilinModuleCat
