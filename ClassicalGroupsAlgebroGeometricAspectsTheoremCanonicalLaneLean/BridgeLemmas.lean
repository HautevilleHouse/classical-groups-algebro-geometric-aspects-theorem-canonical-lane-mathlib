import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.orbitClosureAlgebraic A.object.stabilizerReductive

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse