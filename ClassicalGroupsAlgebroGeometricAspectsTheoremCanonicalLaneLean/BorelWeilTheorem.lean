import classicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure BorelWeilPackage {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} (F : FlagVarietyPackage L) where
  lineBundle : Type u
  globalSections : Type v
  representationRealized : Prop
  highestWeightIdentified : Prop
  borelWeilClosed : Prop

structure BorelWeilEvidence {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} (B : BorelWeilPackage F) where
  representationRealizedClosed : B.representationRealized
  highestWeightIdentifiedClosed : B.highestWeightIdentified
  borelWeilClosedTerm : B.borelWeilClosed

def BorelWeilClosed {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} (B : BorelWeilPackage F) : Prop :=
  B.representationRealized ∧ B.highestWeightIdentified ∧ B.borelWeilClosed

theorem borel_weil_closed_from_evidence {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} (B : BorelWeilPackage F) (E : BorelWeilEvidence B) : BorelWeilClosed B := by
  exact And.intro E.representationRealizedClosed (And.intro E.highestWeightIdentifiedClosed E.borelWeilClosedTerm)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse