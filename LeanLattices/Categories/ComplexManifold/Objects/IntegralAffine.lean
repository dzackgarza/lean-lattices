module

public import Mathlib.Analysis.Complex.Basic

@[expose] public section

namespace LeanLattices.Categories.ComplexManifold

/-- Singular integral-affine manifold with cotangent local system in GL_n(Z). -/
structure IntegralAffineManifold (n : ℕ) where
  carrier : Type _
  localSystemInGLnZ : Prop

/-- Focus-focus singularity and monodromy charge. -/
structure FocusFocusSingularity where
  charge : ℤ

end LeanLattices.Categories.ComplexManifold
