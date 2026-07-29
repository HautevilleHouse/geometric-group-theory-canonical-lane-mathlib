import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure WordHyperbolicGroup (G : Type*) [Group G] where
  generatingSet : Set G
  finiteGeneratingSet : Finset G
  hyperbolicityConstant : ℕ
  geodesicTriangleThin : Prop
  infiniteGroup : Prop

structure WordHyperbolicEvidence {G : Type*} [Group G] (H : WordHyperbolicGroup G) where
  thinTriangleCondition : H.geodesicTriangleThin
  infiniteGroupCert : H.infiniteGroup

def WordHyperbolicClosed {G : Type*} [Group G] (H : WordHyperbolicGroup G) : Prop :=
  H.geodesicTriangleThin ∧ H.infiniteGroup

theorem word_hyperbolic_closed_from_evidence
    {G : Type*} [Group G] (H : WordHyperbolicGroup G) (E : WordHyperbolicEvidence H) :
    WordHyperbolicClosed H := by
  exact And.intro E.thinTriangleCondition E.infiniteGroupCert

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse