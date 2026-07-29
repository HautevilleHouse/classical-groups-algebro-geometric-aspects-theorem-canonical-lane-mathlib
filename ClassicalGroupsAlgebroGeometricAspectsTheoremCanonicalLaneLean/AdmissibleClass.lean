import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure ClassicalAdmittedObject where
  repType : Type
  algebraicGroup : Type
  representationSpace : Type
  groupAction : Prop
  orbitClosureAlgebraic : Prop
  stabilizerReductive : Prop

structure AdmissibleClass where
  object : ClassicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ClassicalWitnessClosed (O : ClassicalAdmittedObject) : Prop :=
  O.orbitClosureAlgebraic ∧ O.stabilizerReductive

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse