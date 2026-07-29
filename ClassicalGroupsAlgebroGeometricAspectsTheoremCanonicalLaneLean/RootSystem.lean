import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure RootSystemPackage where
  rootSystemType : Type u
  weylGroup : Type v
  cartanMatrix : Type w
  rootPositivity : Prop
  simpleRoots : Prop
  fundamentalWeights : Prop
  highestWeightTheorem : Prop

structure RootSystemEvidence (R : RootSystemPackage) where
  rootPositivityClosed : R.rootPositivity
  simpleRootsClosed : R.simpleRoots
  fundamentalWeightsClosed : R.fundamentalWeights
  highestWeightTheoremClosed : R.highestWeightTheorem

def RootSystemClosed (R : RootSystemPackage) : Prop :=
  R.rootPositivity ∧ R.simpleRoots ∧ R.fundamentalWeights ∧ R.highestWeightTheorem

theorem root_system_closed_from_evidence (R : RootSystemPackage) (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.rootPositivityClosed (And.intro E.simpleRootsClosed (And.intro E.fundamentalWeightsClosed E.highestWeightTheoremClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse
