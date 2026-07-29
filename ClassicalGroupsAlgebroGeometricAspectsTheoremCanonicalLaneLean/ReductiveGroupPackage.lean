import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure ReductiveGroupPackage where
  group : Type u
  lieAlgebra : Type v
  killingFormNondegenerate : Prop
  repTheoryFullyReducible : Prop
  weylGroupAction : Prop
  connectedComponentStructure : Prop

structure ReductiveGroupEvidence (R : ReductiveGroupPackage) where
  killingFormNondegenerateClosed : R.killingFormNondegenerate
  repTheoryFullyReducibleClosed : R.repTheoryFullyReducible
  weylGroupActionClosed : R.weylGroupAction
  connectedComponentStructureClosed : R.connectedComponentStructure

def ReductiveGroupClosed (R : ReductiveGroupPackage) : Prop :=
  R.killingFormNondegenerate ∧ R.repTheoryFullyReducible ∧ R.weylGroupAction ∧ R.connectedComponentStructure

theorem reductive_group_closed_from_evidence (R : ReductiveGroupPackage) (E : ReductiveGroupEvidence R) : ReductiveGroupClosed R := by
  exact And.intro E.killingFormNondegenerateClosed
    (And.intro E.repTheoryFullyReducibleClosed (And.intro E.weylGroupActionClosed E.connectedComponentStructureClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse