import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

structure Curve (k : Type*) [Field k] where
  scheme : Scheme
  genus : ℕ
  isSmooth : Prop
  isNodal : Prop

end LeanLattices.Categories.Scheme
