import LeanLattices.Categories.IntegralLat.Objects.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Gram matrix of a lattice with respect to an indexed family. -/
def gramMatrix {n : ℕ} (L : IntegralLattice) (b : Fin n → L.carrier) :
    Matrix (Fin n) (Fin n) ℤ := fun i j => L.form (b i) (b j)

/-- Gram determinant of an indexed family. -/
noncomputable def determinant {n : ℕ} (L : IntegralLattice) (b : Fin n → L.carrier) : ℤ :=
  Matrix.det (gramMatrix L b)

/-- Orthogonal direct sum of integral lattices. -/
axiom OrthogonalSum (L₁ L₂ : IntegralLattice) : IntegralLattice

/-- The direct-sum form is the sum of the two component forms. -/
axiom orthogonalSum_form (L₁ L₂ : IntegralLattice) :
  ∃ e : (OrthogonalSum L₁ L₂).carrier ≃ₗ[ℤ] L₁.carrier × L₂.carrier,
    ∀ x y, (OrthogonalSum L₁ L₂).form x y =
      L₁.form (e x).1 (e y).1 + L₂.form (e x).2 (e y).2

end LeanLattices.Categories.IntegralLat
