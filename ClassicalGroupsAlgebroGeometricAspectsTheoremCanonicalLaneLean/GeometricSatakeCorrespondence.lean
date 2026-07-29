import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure GeometricSatakePackage (n : ℕ) where
  affineGrassmannian : Type u
  perverseSheaves : Type v
  tensorCategory : Type w
  functorConstruction : Prop
  tensorEquivalence : Prop

structure GeometricSatakeEvidence (n : ℕ) (G : GeometricSatakePackage n) where
  functorConstructionClosed : G.functorConstruction
  tensorEquivalenceClosed : G.tensorEquivalence

structure GeometricSatakeClosed (n : ℕ) (G : GeometricSatakePackage n) : Prop where
  functorConstructionClosed : G.functorConstruction
  tensorEquivalenceClosed : G.tensorEquivalence

end HautevilleHouse
end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean