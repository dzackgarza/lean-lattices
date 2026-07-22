import Mathlib.Order.Lattice

def hello := "world"

theorem lattice_inf_self {α : Type*} [Lattice α] (a : α) : a ⊓ a = a :=
  inf_idem (a := a)



