import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure ClassicalGroupVarietyConstruction (n : ℕ) where
  matrixGroup : Type u
  groupOperation : matrixGroup → matrixGroup → matrixGroup
  identityElement : matrixGroup
  inverseOperation : matrixGroup → matrixGroup
  polynomialCondition : Prop
  closureUnderOperation : Prop
  identityInGroup : Prop
  inversesInGroup : Prop

structure ClassicalGroupVarietyEvidence (n : ℕ) (G : ClassicalGroupVarietyConstruction n) where
  polynomialConditionClosed : G.polynomialCondition
  algebraicGroupStructure : G.closureUnderOperation ∧ G.identityInGroup ∧ G.inversesInGroup

structure ClassicalGroupVarietyClosed (n : ℕ) (G : ClassicalGroupVarietyConstruction n) : Prop where
  polynomialConditionClosed : G.polynomialCondition
  groupConditionsClosed : G.closureUnderOperation ∧ G.identityInGroup ∧ G.inversesInGroup

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean