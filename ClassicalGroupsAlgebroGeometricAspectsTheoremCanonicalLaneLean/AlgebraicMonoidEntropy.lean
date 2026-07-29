import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure AlgebraicMonoidPackage (n : ℕ) where
  monoidVariety : Type u
  multiplicationRegular : Prop
  identityElement : monoidVariety
  closureUnderMultiplication : Prop
  associativityHolds : Prop

structure AlgebraicMonoidEvidence (n : ℕ) (M : AlgebraicMonoidPackage n) where
  closureUnderMultiplicationClosed : M.closureUnderMultiplication
  associativityHoldsClosed : M.associativityHolds

structure AlgebraicMonoidClosed (n : ℕ) (M : AlgebraicMonoidPackage n) : Prop where
  closureUnderMultiplicationClosed : M.closureUnderMultiplication
  associativityHoldsClosed : M.associativityHolds

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean