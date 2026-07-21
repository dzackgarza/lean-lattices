import LeanLattices.Categories.IntegralLat.Objects.EvenLat
import LeanLattices.Categories.IntegralLat.Objects.Dual

namespace LeanLattices.Categories.IntegralLat

/-- A finite quadratic module: a finite abelian group A equipped with
    a quadratic form q : A → ℚ/2ℤ (represented abstractly). -/
structure FiniteQuadraticModule where
  carrier : Type u
  [addCommGroup : AddCommGroup carrier]
  [finite : Finite carrier]

attribute [instance] FiniteQuadraticModule.addCommGroup FiniteQuadraticModule.finite

/-- The discriminant module of an even lattice L: the pair (A_L, q_L). -/
noncomputable def discriminantModule (L : EvenLattice) : FiniteQuadraticModule where
  carrier := DiscriminantGroup L.toIntegralLattice

/-- The discriminant functor sends an even lattice to its discriminant module.
    On the groupoid Core(EvenLat), an isometry φ : L₁ ≅ L₂ induces an
    isomorphism φ* : (A_{L₁}, q_{L₁}) ≅ (A_{L₂}, q_{L₂}).
    See Nikulin, §1.3. -/
axiom discriminantFunctor_map
    (L₁ L₂ : EvenLattice)
    (φ : L₁.carrier ≃ₗ[ℤ] L₂.carrier)
    (hIsom : ∀ x y, L₂.form (φ x) (φ y) = L₁.form x y) :
    DiscriminantGroup L₁.toIntegralLattice ≃+ DiscriminantGroup L₂.toIntegralLattice

/-- The discriminant functor preserves composition of isometries. -/
axiom discriminantFunctor_comp
    (L₁ L₂ L₃ : EvenLattice)
    (φ : L₁.carrier ≃ₗ[ℤ] L₂.carrier)
    (ψ : L₂.carrier ≃ₗ[ℤ] L₃.carrier)
    (hφ : ∀ x y, L₂.form (φ x) (φ y) = L₁.form x y)
    (hψ : ∀ x y, L₃.form (ψ x) (ψ y) = L₂.form x y) :
    ∀ x, discriminantFunctor_map L₁ L₃ (φ.trans ψ) (fun a b => by rw [hψ, hφ]) x =
         discriminantFunctor_map L₂ L₃ ψ hψ (discriminantFunctor_map L₁ L₂ φ hφ x)

end LeanLattices.Categories.IntegralLat
