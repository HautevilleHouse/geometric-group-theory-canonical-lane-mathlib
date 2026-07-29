import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure GraphOfGroups (V : Type u) (E : Type v) where
  vertexGroups : V → Group
  edgeGroups : E → Group
  incidence : E → V × V
  injections : ∀ e : E, edgeGroups e → vertexGroups (incidence e).1 ∧ edgeGroups e → vertexGroups (incidence e).2

structure BassSerreTree (Γ : GraphOfGroups V E) where
  tree : Tree
  vertexStabilizers : Vertex tree → Group
  edgeStabilizers : Edge tree → Group
  isomorphism : ∀ v, vertexStabilizers v ≅ Γ.vertexGroups v

structure FundamentalGroup (Γ : GraphOfGroups V E) where
  generators : Set (FreeGroup)
  relations : Set (FreeGroup)
  presentation : Group := Group.Presentation generators relations

def HNNExtension (G : Type u) [Group G] (A B : Subgroup G) (φ : A ≃ B) : Group :=  -- Placeholder
  Group.Presentation ⟨{t}, G⟩ (relators_for_HNN A B φ)

end HautevilleHouse
end GeometricGroupTheoryCanonicalLaneLean