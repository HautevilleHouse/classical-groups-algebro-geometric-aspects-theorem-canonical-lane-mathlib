import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure OrbitClosurePackage {G : Type u} {V : Type v} [Group G] [AddCommGroup V] where
  groupAction : G → V → V
  algebraicAction : Prop
  orbitType : Type w
  closureInTopology : Prop
  closureIsAlgebraic : Prop
  categoricalQuotientExists : Prop

structure OrbitClosureEvidence {G : Type u} {V : Type v} [Group G] [AddCommGroup V] (O : OrbitClosurePackage G V) where
  algebraicActionClosed : O.algebraicAction
  closureInTopologyClosed : O.closureInTopology
  closureIsAlgebraicClosed : O.closureIsAlgebraic
  categoricalQuotientExistsClosed : O.categoricalQuotientExists

def OrbitClosureClosed {G : Type u} {V : Type v} [Group G] [AddCommGroup V] (O : OrbitClosurePackage G V) : Prop :=
  O.algebraicAction ∧ O.closureInTopology ∧ O.closureIsAlgebraic ∧ O.categoricalQuotientExists

theorem orbit_closure_closed_from_evidence {G : Type u} {V : Type v} [Group G] [AddCommGroup V] (O : OrbitClosurePackage G V) (E : OrbitClosureEvidence O) : OrbitClosureClosed O := by
  exact And.intro E.algebraicActionClosed
    (And.intro E.closureInTopologyClosed (And.intro E.closureIsAlgebraicClosed E.categoricalQuotientExistsClosed))

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse