import Mathlib.LinearAlgebra.BilinearForm.Basic

namespace LeanLattices.Categories.ReflectionGroup

variable {V : Type*} [AddCommGroup V] [Module ℤ V]

structure Representation (B : LinearMap.BilinForm ℤ V) where
  group_action : V →ₗ[ℤ] V

structure ChamberHom (R1 R2 : Representation (B := B)) where
  hom : V →ₗ[ℤ] V

end LeanLattices.Categories.ReflectionGroup
