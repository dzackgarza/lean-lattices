import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.AlgebraicStack

open AlgebraicGeometry

structure AlgebraicSpace where
  space : Type _

structure KSBAStack where
  stack : Type _

structure KulikovModel where
  model : Scheme

structure IntegralAffineManifold where
  manifold : Type _

structure StackMorphism (S1 S2 : KSBAStack) where
  morphism : S1.stack → S2.stack

structure DeformationGroupoid (X : Scheme) where
  groupoid : Type _

def SemitoroidalFunctor (S : KSBAStack) : Type _ :=
  True

end LeanLattices.Categories.AlgebraicStack
