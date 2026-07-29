import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.AlgebraicGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure ParabolicSubgroup (G : AlgebraicGroupScheme) where
  subgroup : AlgebraicGroupScheme
  inclusion : subgroup.underlyingScheme → G.underlyingScheme
  containsBorel : Prop
  connected : Prop

structure LeviDecomposition (G : AlgebraicGroupScheme) (P : ParabolicSubgroup G) where
  leviFactor : AlgebraicGroupScheme
  unipotentRadical : AlgebraicGroupScheme
  semiDirectProduct : Prop
  projection : P.subgroup.underlyingScheme → leviFactor.underlyingScheme

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse