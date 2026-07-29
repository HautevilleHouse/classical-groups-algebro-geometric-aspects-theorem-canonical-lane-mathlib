import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.AlgebraicGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure AlgebraicVariety (X : Type u) where
  coordinateRing : Type u
  sheaf : Prop
  separated : Prop

structure GroupRepresentation (G : AlgebraicGroupScheme) (V : Type u) where
  representation : G.underlyingScheme → V → V
  linear : ∀ g : G.underlyingScheme, LinearMap V V (representation g)
  identity : ∀ v : V, representation G.identity v = v
  compatibility : ∀ (g h : G.underlyingScheme) (v : V), representation (G.groupMultiplication g h) v = representation g (representation h v)

structure InvariantRing (G : AlgebraicGroupScheme) (V : Type u) (ρ : GroupRepresentation G V) where
  ring : Type u
  invariants : Set ring
  finitelyGenerated : Prop
  hilbertSeries : Prop

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse