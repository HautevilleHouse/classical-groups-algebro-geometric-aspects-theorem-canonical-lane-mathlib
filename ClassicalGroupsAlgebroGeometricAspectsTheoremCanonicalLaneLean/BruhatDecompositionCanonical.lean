import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure BruhatDecompositionPackage (n : ℕ) where
  borelSubgroupType : Type u
  weylGroup : Type v
  cellDecomposition : Type w
  disjointUnionProperty : Prop
  cellDimensionCondition : Prop

structure BruhatDecompositionEvidence (n : ℕ) (B : BruhatDecompositionPackage n) where
  disjointUnionPropertyClosed : B.disjointUnionProperty
  cellDimensionConditionClosed : B.cellDimensionCondition

structure BruhatDecompositionClosed (n : ℕ) (B : BruhatDecompositionPackage n) : Prop where
  disjointUnionPropertyClosed : B.disjointUnionProperty
  cellDimensionConditionClosed : B.cellDimensionCondition

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean