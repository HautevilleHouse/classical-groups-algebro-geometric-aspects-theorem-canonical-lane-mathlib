import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure FlagVarietyPackage where
  flagType : Type u
  projectiveEmbedding : Prop
  schubertCells : Prop
  cohomologyRing : Prop
  poincarePolynomial : Prop

structure FlagVarietyEvidence (F : FlagVarietyPackage) where
  projectiveEmbeddingClosed : F.projectiveEmbedding
  schubertCellsClosed : F.schubertCells
  cohomologyRingClosed : F.cohomologyRing
  poincarePolynomialClosed : F.poincarePolynomial

def FlagVarietyClosed (F : FlagVarietyPackage) : Prop :=
  F.projectiveEmbedding ∧ F.schubertCells ∧ F.cohomologyRing ∧ F.poincarePolynomial

theorem flag_variety_closed_from_evidence (F : FlagVarietyPackage) (E : FlagVarietyEvidence F) : FlagVarietyClosed F := by
  exact And.intro E.projectiveEmbeddingClosed (And.intro E.schubertCellsClosed (And.intro E.cohomologyRingClosed E.poincarePolynomialClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse
