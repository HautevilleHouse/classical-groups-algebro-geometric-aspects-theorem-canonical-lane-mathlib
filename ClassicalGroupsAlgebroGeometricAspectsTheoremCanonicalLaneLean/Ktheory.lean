import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure KTheoryRing (G : ClassicalGroup ℂ) where
  ring : Type
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  additiveGroup : Prop
  ringMultiplication : Prop
  grothendieckConstruction : Prop
  projectiveModules : Prop

structure KTheoryEvidence (K : KTheoryRing G) where
  additiveGroupClosed : K.additiveGroup
  ringMultiplicationClosed : K.ringMultiplication
  grothendieckConstructionClosed : K.grothendieckConstruction
  projectiveModulesClosed : K.projectiveModules

def KTheoryClosed (K : KTheoryRing G) : Prop :=
  K.additiveGroup ∧ K.ringMultiplication ∧ K.grothendieckConstruction ∧ K.projectiveModules

theorem k_theory_closed_from_evidence (K : KTheoryRing G) (E : KTheoryEvidence K) :
    KTheoryClosed K := by
  exact And.intro E.additiveGroupClosed (And.intro E.ringMultiplicationClosed (And.intro E.grothendieckConstructionClosed E.projectiveModulesClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse