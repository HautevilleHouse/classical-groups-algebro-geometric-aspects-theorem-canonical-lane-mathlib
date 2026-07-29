import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure Representation (G : ClassicalGroup ℂ) where
  space : Type
  action : G.carrier → (space → space)
  linearAction : Prop
  finiteDimensional : Prop
  irreducible : Prop

structure RepresentationEvidence (R : Representation G) where
  linearActionClosed : R.linearAction
  finiteDimensionalClosed : R.finiteDimensional
  irreducibleClosed : R.irreducible

def RepresentationClosed (R : Representation G) : Prop :=
  R.linearAction ∧ R.finiteDimensional ∧ R.irreducible

theorem representation_closed_from_evidence (R : Representation G) (E : RepresentationEvidence R) :
    RepresentationClosed R := by
  exact And.intro E.linearActionClosed (And.intro E.finiteDimensionalClosed E.irreducibleClosed)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse