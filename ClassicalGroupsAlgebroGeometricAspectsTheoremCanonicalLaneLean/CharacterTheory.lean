import classicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.BorelWeilTheorem

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure CharacterTheoryPackage {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} (B : BorelWeilPackage F) where
  characterFormula : Type u
  weylCharacterFormula : Prop
  multiplicities : Prop
  characterClosed : Prop

structure CharacterTheoryEvidence {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} {B : BorelWeilPackage F} (C : CharacterTheoryPackage B) where
  weylCharacterFormulaClosed : C.weylCharacterFormula
  multiplicitiesClosed : C.multiplicities
  characterClosedTerm : C.characterClosed

def CharacterTheoryClosed {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} {B : BorelWeilPackage F} (C : CharacterTheoryPackage B) : Prop :=
  C.weylCharacterFormula ∧ C.multiplicities ∧ C.characterClosed

theorem character_theory_closed_from_evidence {G : ClassicalGroupPackage} {L : LieAlgebraPackage G} {F : FlagVarietyPackage L} {B : BorelWeilPackage F} (C : CharacterTheoryPackage B) (E : CharacterTheoryEvidence C) : CharacterTheoryClosed C := by
  exact And.intro E.weylCharacterFormulaClosed (And.intro E.multiplicitiesClosed E.characterClosedTerm)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse