import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Quadratic refinement Q_L(x) = B(x,x)/2 for even lattices. -/
def quadRefinement (L : IntegralLattice) (hEven : IsEven L) (x : L.carrier) : ℤ :=
  (L.form x x) / 2

end LeanLattices.Categories.IntegralLat
