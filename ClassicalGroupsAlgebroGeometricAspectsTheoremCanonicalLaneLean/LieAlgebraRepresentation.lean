import classicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean.ClassicalGroupStructure

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure LieAlgebraPackage (G : ClassicalGroupPackage) where
  lieAlgebra : Type v
  lieBracket : lieAlgebra → lieAlgebra → lieAlgebra
  jacobiIdentity : Prop
  representationMap : G.groupType → (lieAlgebra → lieAlgebra)
  representationConsistent : Prop
  representationClosed : Prop

structure LieAlgebraEvidence {G : ClassicalGroupPackage} (L : LieAlgebraPackage G) where
  jacobiIdentityClosed : L.jacobiIdentity
  representationConsistentClosed : L.representationConsistent
  representationClosedTerm : L.representationClosed

def LieAlgebraClosed {G : ClassicalGroupPackage} (L : LieAlgebraPackage G) : Prop :=
  L.jacobiIdentity ∧ L.representationConsistent ∧ L.representationClosed

theorem lie_algebra_closed_from_evidence {G : ClassicalGroupPackage} (L : LieAlgebraPackage G) (E : LieAlgebraEvidence L) : LieAlgebraClosed L := by
  exact And.intro E.jacobiIdentityClosed (And.intro E.representationConsistentClosed E.representationClosedTerm)

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse