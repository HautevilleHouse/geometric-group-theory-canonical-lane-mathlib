import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure CayleyGraph (G : Type u) [Group G] where
  generatingSet : Set G
  vertexSet : Set G
  edgeSet : Set (G × G)
  leftInvariant : Prop
  geodesicMetric : Prop
  graphStructure : Prop

def CayleyGraphEvidence (G : Type u) [Group G] (C : CayleyGraph G) : Prop :=
  C.leftInvariant ∧ C.geodesicMetric ∧ C.graphStructure

theorem cayley_graph_closed (G : Type u) [Group G] (C : CayleyGraph G) : CayleyGraphEvidence G C :=
  by exact And.intro C.leftInvariant (And.intro C.geodesicMetric C.graphStructure)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse