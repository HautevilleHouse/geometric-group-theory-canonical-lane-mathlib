import GeometricGroupTheoryCanonicalLaneLean.QuasiIsometries

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure BoundaryPackage {G : Type u} [Group G] [MetricSpace G] where
  boundaryType : Type u
  boundaryTopology : TopologicalSpace boundaryType
  boundaryAction : G → boundaryType → boundaryType
  compactness : Prop
  metrizable : Prop
  groupActionContinuous : Prop
  boundaryClassified : Prop

structure BoundaryEvidence {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryPackage G) where
  compactnessClosed : B.compactness
  metrizableClosed : B.metrizable
  groupActionContinuousClosed : B.groupActionContinuous
  boundaryClassifiedClosed : B.boundaryClassified

def BoundaryClosed {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryPackage G) : Prop :=
  B.compactness ∧ B.metrizable ∧ B.groupActionContinuous ∧ B.boundaryClassified

theorem boundary_closed_from_evidence {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryPackage G) (E : BoundaryEvidence B) : BoundaryClosed B := by
  exact And.intro E.compactnessClosed
    (And.intro E.metrizableClosed
      (And.intro E.groupActionContinuousClosed E.boundaryClassifiedClosed))

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse