import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure HyperbolicGroup (G : Type u) [Group G] where
  generatingSet : Set G
  delta : ℝ
  slimTriangle : ∀ x y z : G, d(x, y) ≤ d(x, z) + d(z, y) ∧ d(x, y) ≤ max (d(x, z), d(z, y)) + delta
  geodesicSpace : MetricSpace G
  properness : ProperGeodesicSpace G

def GromovBoundary (G : Type u) [MetricSpace G] [ProperGeodesicSpace G] : Type u :=  -- Placeholder
  Quotient (ray_equivalence G)

structure GromovBoundaryAction (G : Type u) [Group G] [HyperbolicGroup G] where
  action : G → GromovBoundary G → GromovBoundary G
  continuous : ∀ g, Continuous (action g)
  convergence : ∀ (gₙ : ℕ → G) (ξ : GromovBoundary G), (∀ n, gₙ ≠ 1) → (gₙ → ∞) → (∃ η, action gₙ ξ → η)

end HautevilleHouse
end GeometricGroupTheoryCanonicalLaneLean