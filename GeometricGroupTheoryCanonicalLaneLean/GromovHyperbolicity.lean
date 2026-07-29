import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure GromovHyperbolicMetricSpace where
  X : Type u
  dist : X → X → ℝ
  metricSpace : MetricSpace X
  hyperbolicityConstant : ℝ
  thinTriangles : ∀ x y z p : X, δ_thin_triangle x y z p hyperbolicityConstant
  properness : Prop
  geodesicSpace : Prop

def GromovHyperbolicityEvidence (G : GromovHyperbolicMetricSpace) : Prop :=
  G.thinTriangles ∧ G.properness ∧ G.geodesicSpace

theorem gromov_hyperbolicity_closed (G : GromovHyperbolicMetricSpace) : GromovHyperbolicityEvidence G :=
  by
    refine And.intro G.thinTriangles ?_
    exact And.intro G.properness G.geodesicSpace

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse