import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure BoundaryOfGroup (G : Type u) [MetricSpace G] [ProperGeodesicSpace G] where
  boundary : Type u
  topology : TopologicalSpace boundary
  GAction : G → boundary → boundary
  continuity : ∀ g, Continuous (GAction g)
  minimality : ∀ x : boundary, orbit G x = boundary

structure CannonThurstonMap (Γ : Subgroup G) [HyperbolicGroup G] [HyperbolicGroup Γ] where
  boundaryInclusion : BoundaryOfGroup Γ → BoundaryOfGroup G
  continuous : Continuous boundaryInclusion
  equivariant : ∀ γ : Γ, boundaryInclusion ∘ (BoundaryOfGroup.GAction γ) = (BoundaryOfGroup.GAction (γ : G)) ∘ boundaryInclusion

structure BoundaryExtension (Γ : Subgroup G) where
  inclusion : Γ → G
  cannonThurston : CannonThurstonMap Γ G
  filling : (BoundaryOfGroup G \ BoundaryOfGroup Γ) → Tree

end HautevilleHouse
end GeometricGroupTheoryCanonicalLaneLean