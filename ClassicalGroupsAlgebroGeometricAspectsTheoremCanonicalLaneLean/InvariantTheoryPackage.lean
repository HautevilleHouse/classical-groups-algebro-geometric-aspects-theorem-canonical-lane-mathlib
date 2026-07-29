import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure InvariantTheoryPackage where
  group : Type u
  representation : Type v
  ringOfInvariants : Type w
  finitelyGenerated : Prop
  separationProperty : Prop
  hilbertSeriesExists : Prop

structure InvariantTheoryEvidence (I : InvariantTheoryPackage) where
  finitelyGeneratedClosed : I.finitelyGenerated
  separationPropertyClosed : I.separationProperty
  hilbertSeriesExistsClosed : I.hilbertSeriesExists

def InvariantTheoryClosed (I : InvariantTheoryPackage) : Prop :=
  I.finitelyGenerated ∧ I.separationProperty ∧ I.hilbertSeriesExists

theorem invariant_theory_closed_from_evidence (I : InvariantTheoryPackage) (E : InvariantTheoryEvidence I) : InvariantTheoryClosed I := by
  exact And.intro E.finitelyGeneratedClosed (And.intro E.separationPropertyClosed E.hilbertSeriesExistsClosed)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse