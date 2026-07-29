import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure GroupAction (G : AlgebraicGroupScheme) (X : Type u) where
  action : G.underlyingScheme → X → X
  identityAction : ∀ x : X, action G.identity x = x
  compatibility : ∀ (g h : G.underlyingScheme) (x : X), action (G.groupMultiplication g h) x = action g (action h x)

structure Orbit (G : AlgebraicGroupScheme) (X : Type u) (act : GroupAction G X) (x : X) where
  elements : Set X
  inOrbit : ∀ y : X, y ∈ elements ↔ ∃ g : G.underlyingScheme, act.action g x = y

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse