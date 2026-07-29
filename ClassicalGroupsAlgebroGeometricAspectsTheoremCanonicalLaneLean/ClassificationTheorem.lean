import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.AlgebraicGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure ClassificationPackage where
  semisimpleGroupsClassified : Prop
  reductiveGroupsClassified : Prop
  parabolicSubgroupsDescribed : Prop
  leviDecomposition : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  semisimpleClassifiedClosed : C.semisimpleGroupsClassified
  reductiveClassifiedClosed : C.reductiveGroupsClassified
  parabolicDescribedClosed : C.parabolicSubgroupsDescribed
  leviDecompositionClosed : C.leviDecomposition

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.semisimpleGroupsClassified ∧ C.reductiveGroupsClassified ∧
  C.parabolicSubgroupsDescribed ∧ C.leviDecomposition

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.semisimpleClassifiedClosed (And.intro E.reductiveClassifiedClosed (And.intro E.parabolicDescribedClosed E.leviDecompositionClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse