import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure CayleyGraphPackage where
  group : Type u
  generatingSet : Set group
  wordMetric : group → group → ℝ
  cayleyGraphQuasiIsometricToWordMetric : Prop

structure CayleyGraphEvidence (C : CayleyGraphPackage) where
  wordMetricIsMetric : Prop
  cayleyGraphQuasiIsometricToWordMetricClosed : C.cayleyGraphQuasiIsometricToWordMetric

def CayleyGraphClosed (C : CayleyGraphPackage) : Prop :=
  C.cayleyGraphQuasiIsometricToWordMetric

theorem cayley_graph_closed_from_evidence (C : CayleyGraphPackage) (E : CayleyGraphEvidence C) :
    CayleyGraphClosed C := by
  exact E.cayleyGraphQuasiIsometricToWordMetricClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse