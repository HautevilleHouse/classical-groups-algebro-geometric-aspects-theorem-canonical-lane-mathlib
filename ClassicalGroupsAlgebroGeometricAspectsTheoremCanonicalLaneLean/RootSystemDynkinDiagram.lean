import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean

structure RootSystem where
  underlyingVectorSpace : Type u
  roots : Set underlyingVectorSpace
  reflectionProperties : ∀ α : underlyingVectorSpace, α ∈ roots → (∀ β : underlyingVectorSpace, β ∈ roots → True)
  crystallographicCondition : Prop
  finite : Prop

structure DynkinDiagram where
  nodes : Set ℕ
  edges : Set (ℕ × ℕ × ℕ)  -- (i, j, multiplicity)
  simplyLaced : Prop
  classificationType : String

structure RootData where
  rootSystem : RootSystem
  dynkinDiagram : DynkinDiagram
  compatibility : Prop

end ClassicalGroupsAlgebroGeometricAspectsTheoremCanonicalLaneLean
end HautevilleHouse