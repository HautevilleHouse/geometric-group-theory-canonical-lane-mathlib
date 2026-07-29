import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure HyperbolicGroupPackage where
  group : Type u
  wordMetric : group → group → ℝ
  hyperbolicConstant : ℝ
  geodesicTriangleThin : Prop
  gromovBoundary : Type v
  groupActsOnBoundary : Prop

structure HyperbolicGroupEvidence (H : HyperbolicGroupPackage) where
  geodesicTriangleThinClosed : H.geodesicTriangleThin
  groupActsOnBoundaryClosed : H.groupActsOnBoundary

def HyperbolicGroupClosed (H : HyperbolicGroupPackage) : Prop :=
  H.geodesicTriangleThin ∧ H.groupActsOnBoundary

theorem hyperbolic_group_closed_from_evidence (H : HyperbolicGroupPackage) (E : HyperbolicGroupEvidence H) :
    HyperbolicGroupClosed H := by
  exact And.intro E.geodesicTriangleThinClosed E.groupActsOnBoundaryClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse