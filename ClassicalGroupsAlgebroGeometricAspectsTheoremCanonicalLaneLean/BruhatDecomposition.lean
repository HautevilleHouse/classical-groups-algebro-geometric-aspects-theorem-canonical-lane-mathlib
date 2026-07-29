import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure BruhatDecompositionPackage where
  algGroup : Type u
  borelSubgroup : Type v
  doubleCosets : Prop
  cellDecomposition : Prop
  closureRelations : Prop
  dimensionFormula : Prop

structure BruhatDecompositionEvidence (B : BruhatDecompositionPackage) where
  doubleCosetsClosed : B.doubleCosets
  cellDecompositionClosed : B.cellDecomposition
  closureRelationsClosed : B.closureRelations
  dimensionFormulaClosed : B.dimensionFormula

def BruhatDecompositionClosed (B : BruhatDecompositionPackage) : Prop :=
  B.doubleCosets ∧ B.cellDecomposition ∧ B.closureRelations ∧ B.dimensionFormula

theorem bruhat_decomposition_closed_from_evidence (B : BruhatDecompositionPackage) (E : BruhatDecompositionEvidence B) : BruhatDecompositionClosed B := by
  exact And.intro E.doubleCosetsClosed (And.intro E.cellDecompositionClosed (And.intro E.closureRelationsClosed E.dimensionFormulaClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse
