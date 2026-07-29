import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure AlgebraicGroupScheme where
  underlyingScheme : Type u
  groupMultiplication : underlyingScheme → underlyingScheme → underlyingScheme
  identity : underlyingScheme
  inverse : underlyingScheme → underlyingScheme
  associativity : ∀ x y z : underlyingScheme,
    groupMultiplication (groupMultiplication x y) z = groupMultiplication x (groupMultiplication y z)
  identityLeft : ∀ x : underlyingScheme, groupMultiplication identity x = x
  identityRight : ∀ x : underlyingScheme, groupMultiplication x identity = x
  inverseLeft : ∀ x : underlyingScheme, groupMultiplication (inverse x) x = identity
  inverseRight : ∀ x : underlyingScheme, groupMultiplication x (inverse x) = identity

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse