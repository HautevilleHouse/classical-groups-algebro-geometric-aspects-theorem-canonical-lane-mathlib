import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

def ConstrainedClassicalGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classical_groups_endgame (A : AdmissibleClass) :
    ConstrainedClassicalGroupsClosure A := by
  refine And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean