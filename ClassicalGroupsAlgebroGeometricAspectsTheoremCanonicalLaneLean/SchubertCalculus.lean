import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure SchubertCalculusPackage where
  schubertClass : Type u
  giambelliFormula : Prop
  pieriRule : Prop
  intersectionRing : Prop
  characteristicClasses : Prop

structure SchubertCalculusEvidence (S : SchubertCalculusPackage) where
  giambelliFormulaClosed : S.giambelliFormula
  pieriRuleClosed : S.pieriRule
  intersectionRingClosed : S.intersectionRing
  characteristicClassesClosed : S.characteristicClasses

def SchubertCalculusClosed (S : SchubertCalculusPackage) : Prop :=
  S.giambelliFormula ∧ S.pieriRule ∧ S.intersectionRing ∧ S.characteristicClasses

theorem schubert_calculus_closed_from_evidence (S : SchubertCalculusPackage) (E : SchubertCalculusEvidence S) : SchubertCalculusClosed S := by
  exact And.intro E.giambelliFormulaClosed (And.intro E.pieriRuleClosed (And.intro E.intersectionRingClosed E.characteristicClassesClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse
