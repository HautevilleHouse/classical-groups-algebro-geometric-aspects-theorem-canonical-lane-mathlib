import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.AlgebraicGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure FlagVariety (G : AlgebraicGroupScheme) where
  borelSubgroup : AlgebraicGroupScheme
  flagManifold : Type u
  projection : G.underlyingScheme → flagManifold
  fibersAreBorelCosets : Prop

structure BruhatDecomposition (G : AlgebraicGroupScheme) (F : FlagVariety G) where
  weylGroup : Set (G.underlyingScheme → G.underlyingScheme)
  cells : Set (G.underlyingScheme → flagManifold)
  cellDecomposition : Prop
  closureRelations : Prop

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse