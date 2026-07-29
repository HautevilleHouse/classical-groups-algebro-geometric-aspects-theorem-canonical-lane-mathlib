import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure RootSystemPackage (n : ℕ) where
  rootVectors : Type u
  rank : ℕ
  weylGroup : Type v
  coxeterMatrix : Type w
  simpleRoots : List rootVectors
  rootSystemAxioms : Prop

structure RootSystemEvidence (n : ℕ) (R : RootSystemPackage n) where
  rootSystemAxiomsClosed : R.rootSystemAxioms

structure RootSystemClosed (n : ℕ) (R : RootSystemPackage n) : Prop where
  rootSystemAxiomsClosed : R.rootSystemAxioms

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean