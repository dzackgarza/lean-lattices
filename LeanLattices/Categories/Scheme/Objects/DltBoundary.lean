module

public import LeanLattices.Categories.Scheme.Objects.Surface
public import LeanLattices.Categories.KSBAPair.Objects.ReflexiveSheaf
public import Mathlib.Data.Complex.Basic

@[expose] public section

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Boundary curve/surface types in dlt models: A_n, B_n, C_n, D_n, E_n. -/
inductive BoundarySurfaceType
  | TypeA (n : ℕ)
  | TypeB (n : ℕ)
  | TypeC (n : ℕ)
  | TypeD (n : ℕ)
  | TypeE (n : ℕ)

/-- Integral-affine dlt boundary model (X, B). -/
structure DltBoundaryModel where
  surface : Surface ℂ
  boundaryType : BoundarySurfaceType

end LeanLattices.Categories.Scheme
