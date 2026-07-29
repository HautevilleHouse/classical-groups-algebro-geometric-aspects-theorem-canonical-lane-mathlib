import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure FlagVarietyPackage (n : ℕ) where
  flagManifold : Type u
  borelSubgroup : Type v
  flagDimension : ℕ
  stabilizerCondition : Prop
  homogeneousSpaceStructure : Prop

structure FlagVarietyEvidence (n : ℕ) (F : FlagVarietyPackage n) where
  stabilizerConditionClosed : F.stabilizerCondition
  homogeneousSpaceStructureClosed : F.homogeneousSpaceStructure

structure FlagVarietyClosed (n : ℕ) (F : FlagVarietyPackage n) : Prop where
  stabilizerConditionClosed : F.stabilizerCondition
  homogeneousSpaceStructureClosed : F.homogeneousSpaceStructure

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean