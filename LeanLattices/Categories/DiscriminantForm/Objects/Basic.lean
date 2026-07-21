import LeanLattices.Categories.IntegralLat.Objects.Dual
import LeanLattices.Categories.IntegralLat.Objects.EvenLat

namespace LeanLattices.Categories.DiscriminantForm

open IntegralLat

/-- A finite bilinear module: a finite abelian group equipped with a
    symmetric bilinear form valued in ℚ/ℤ (represented abstractly). -/
structure FiniteBilinearModule where
  carrier : Type u
  [addCommGroup : AddCommGroup carrier]
  [finite : Finite carrier]
  /-- The bilinear pairing b : A × A → ℚ/ℤ, represented abstractly
      as a symmetric bilinear function to ℤ (the actual ℚ/ℤ values
      require quotient types not available without further setup). -/
  bilinForm : carrier → carrier → ℤ
  isSymm : ∀ x y, bilinForm x y = bilinForm y x

attribute [instance] FiniteBilinearModule.addCommGroup FiniteBilinearModule.finite

/-- A finite quadratic module: a finite abelian group A with quadratic form
    q : A → ℚ/2ℤ satisfying the polarization identity
    q(x+y) - q(x) - q(y) = b(x,y). -/
structure FiniteQuadraticModule extends FiniteBilinearModule where
  quadForm : carrier → ℤ
  polarization : ∀ x y, quadForm (x + y) - quadForm x - quadForm y = bilinForm x y

/-- The discriminant group A_L = L*/L of an integral lattice,
    equipped with the induced bilinear form. -/
noncomputable def discrGroup (L : IntegralLattice) : Type _ :=
  DiscriminantGroup L

instance (L : IntegralLattice) : AddCommGroup (discrGroup L) :=
  QuotientAddGroup.Quotient.addCommGroup _

/-- The induced discriminant bilinear form b_L : A_L × A_L → ℚ/ℤ.
    For x̃, ỹ lifts of x, y ∈ A_L, b_L(x,y) = B(x̃, ỹ) mod ℤ.
    See Nikulin, §1.3. Since the actual ℚ/ℤ construction requires
    substantial infrastructure, we axiomatize this. -/
axiom discrBilinearForm (L : IntegralLattice) :
    discrGroup L → discrGroup L → ℤ

axiom discrBilinearForm_symm (L : IntegralLattice) :
    ∀ x y, discrBilinearForm L x y = discrBilinearForm L y x

/-- The induced discriminant quadratic form q_L : A_L → ℚ/2ℤ for even lattices.
    For x̃ a lift of x ∈ A_L, q_L(x) = B(x̃, x̃)/2 mod ℤ.
    See Nikulin, §1.3. -/
axiom discrQuadraticForm (L : IntegralLattice) (hEven : IsEven L) :
    discrGroup L → ℤ

/-- Polarization identity for the discriminant forms. -/
axiom discrQuad_polarization (L : IntegralLattice) (hEven : IsEven L) :
    ∀ x y, discrQuadraticForm L hEven (x + y) - discrQuadraticForm L hEven x -
            discrQuadraticForm L hEven y = discrBilinearForm L x y

end LeanLattices.Categories.DiscriminantForm
