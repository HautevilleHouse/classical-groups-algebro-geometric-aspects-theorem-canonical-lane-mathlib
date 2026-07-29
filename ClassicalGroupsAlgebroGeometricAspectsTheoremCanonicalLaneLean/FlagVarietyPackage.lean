import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure FlagVarietyPackage where
  group : Type u
  parabolicSubgroup : Type v
  flagVariety : Type w
  projectiveVariety : Prop
  schubertCells : Prop
  cellClosureRelations : Prop

structure FlagVarietyEvidence (F : FlagVarietyPackage) where
  projectiveVarietyClosed : F.projectiveVariety
  schubertCellsClosed : F.schubertCells
  cellClosureRelationsClosed : F.cellClosureRelations

def FlagVarietyClosed (F : FlagVarietyPackage) : Prop :=
  F.projectiveVariety ∧ F.schubertCells ∧ F.cellClosureRelations

theorem flag_variety_closed_from_evidence (F : FlagVarietyPackage) (E : FlagVarietyEvidence F) : FlagVarietyClosed F := by
  exact And.intro E.projectiveVarietyClosed (And.intro E.schubertCellsClosed E.cellClosureRelationsClosed)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse