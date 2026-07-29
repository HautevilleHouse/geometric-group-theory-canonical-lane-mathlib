import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure DehnFunctionPackage where
  group : Type u
  presentation : Type v
  dehnFunction : ℕ → ℕ
  isoperimetricInequality : Prop
  fillingLengthFunction : ℕ → ℕ
  fillingLengthDefined : Prop

structure DehnFunctionEvidence (D : DehnFunctionPackage) where
  isoperimetricInequalityClosed : D.isoperimetricInequality
  fillingLengthDefinedClosed : D.fillingLengthDefined

def DehnFunctionClosed (D : DehnFunctionPackage) : Prop :=
  D.isoperimetricInequality ∧ D.fillingLengthDefined

theorem dehn_function_closed_from_evidence (D : DehnFunctionPackage) (E : DehnFunctionEvidence D) :
    DehnFunctionClosed D := by
  exact And.intro E.isoperimetricInequalityClosed E.fillingLengthDefinedClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse