import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure BoundaryAtInfinityPackage (G : Type u) [Group G] [MetricSpace G] where
  boundaryType : Type v
  boundaryTopology : TopologicalSpace boundaryType
  boundaryAction : G → boundaryType ≃ boundaryType
  convergenceAction : Prop
  boundaryIdentification : Prop
  convergenceActionClosed : convergenceAction

structure BoundaryAtInfinityEvidence {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryAtInfinityPackage G) where
  convergenceActionClosed : B.convergenceAction
  boundaryIdentificationClosed : B.boundaryIdentification

def BoundaryAtInfinityClosed {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryAtInfinityPackage G) : Prop :=
  B.convergenceAction ∧ B.boundaryIdentification

theorem boundary_at_infinity_closed_from_evidence {G : Type u} [Group G] [MetricSpace G]
    (B : BoundaryAtInfinityPackage G) (E : BoundaryAtInfinityEvidence B) : BoundaryAtInfinityClosed B :=
  And.intro E.convergenceActionClosed E.boundaryIdentificationClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse