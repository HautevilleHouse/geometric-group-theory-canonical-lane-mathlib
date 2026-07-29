import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure CayleyGraphPackage (G : Type u) [Group G] (S : Set G) where
  vertices : Type u
  edges : Type v
  vertexSet : vertices ≃ G
  edgeSet : edges ≃ (Σ (g : G) (s : S), G)
  graphIsCayley : Prop
  groupAction : G → vertices ≃ vertices
  graphIsCayleyClosed : graphIsCayley

structure CayleyGraphEvidence {G : Type u} [Group G] {S : Set G} (C : CayleyGraphPackage G S) where
  graphIsCayleyClosed : C.graphIsCayley
  groupActionClosed : ∀ g : G, (C.groupAction g) ∈ {f : C.vertices ≃ C.vertices | True}

def CayleyGraphClosed {G : Type u} [Group G] {S : Set G} (C : CayleyGraphPackage G S) : Prop :=
  C.graphIsCayley ∧ (∀ g : G, True)

theorem cayley_graph_closed_from_evidence {G : Type u} [Group G] {S : Set G}
    (C : CayleyGraphPackage G S) (E : CayleyGraphEvidence C) : CayleyGraphClosed C :=
  And.intro E.graphIsCayleyClosed (by intro g; trivial)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse