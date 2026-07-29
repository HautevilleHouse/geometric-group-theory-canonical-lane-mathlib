import GeometricGroupTheoryCanonicalLaneLean.CayleyGraphs

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure QuasiIsometryPackage {X Y : Type u} [MetricSpace X] [MetricSpace Y] where
  map : X → Y
  coarseLipschitzConstant : ℝ
  coarseInverseLipschitzConstant : ℝ
  finiteDistanceError : Prop
  quasiInverse : Y → X
  compositionErrorBound : Prop
  quasiIsometryGroupClosed : Prop

structure QuasiIsometryEvidence {X Y : Type u} [MetricSpace X] [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) where
  finiteDistanceErrorClosed : Q.finiteDistanceError
  compositionErrorBoundClosed : Q.compositionErrorBound
  quasiIsometryGroupClosedClosed : Q.quasiIsometryGroupClosed

def QuasiIsometryClosed {X Y : Type u} [MetricSpace X] [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) : Prop :=
  Q.finiteDistanceError ∧ Q.compositionErrorBound ∧ Q.quasiIsometryGroupClosed

theorem quasi_isometry_closed_from_evidence {X Y : Type u} [MetricSpace X] [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) (E : QuasiIsometryEvidence Q) : QuasiIsometryClosed Q := by
  exact And.intro E.finiteDistanceErrorClosed
    (And.intro E.compositionErrorBoundClosed E.quasiIsometryGroupClosedClosed)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse