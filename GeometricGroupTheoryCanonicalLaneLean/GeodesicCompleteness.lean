import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure GeodesicMetricSpace where
  X : Type u
  dist : X → X → ℝ
  metricSpace : MetricSpace X
  geodesicSpace : GeodesicSpace X
  complete : CompleteSpace X
  proper : Prop

def GeodesicCompletenessEvidence (G : GeodesicMetricSpace) : Prop :=
  G.complete ∧ G.proper ∧ G.geodesicSpace

theorem geodesic_completeness_closed (G : GeodesicMetricSpace) : GeodesicCompletenessEvidence G :=
  by exact And.intro G.complete (And.intro G.proper G.geodesicSpace)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse