import LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean.LCIDeterminantalStructure

/-!
# Linkage Class Package

Defines linkage equivalence classes and their closure under linkage.
-/

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean

struct LinkageClassPackage (R : LCIRing) (D : DeterminantalPackage R) where
  class : Set (Ideal R.carrier)
  closureUnderLinkage : Prop
  representedByDeterminantal : Prop
  linkageInvariant : Prop
  structureTheoremGlobal : Prop

struct LinkageClassEvidence (R : LCIRing) (D : DeterminantalPackage R) (L : LinkageClassPackage R D) where
  closureUnderLinkageClosed : L.closureUnderLinkage
  representedByDeterminantalClosed : L.representedByDeterminantal
  linkageInvariantClosed : L.linkageInvariant
  structureTheoremGlobalClosed : L.structureTheoremGlobal

def LinkageClassClosed (R : LCIRing) (D : DeterminantalPackage R) (L : LinkageClassPackage R D) : Prop :=
  L.closureUnderLinkage ∧ L.representedByDeterminantal ∧ L.linkageInvariant ∧ L.structureTheoremGlobal

theorem linkage_class_closed_from_evidence (R : LCIRing) (D : DeterminantalPackage R) (L : LinkageClassPackage R D) (E : LinkageClassEvidence R D L) : LinkageClassClosed R D L := by
  exact And.intro E.closureUnderLinkageClosed (And.intro E.representedByDeterminantalClosed (And.intro E.linkageInvariantClosed E.structureTheoremGlobalClosed))

end LinkageCompleteIntersectionsDeterminantalIdealsFoundationCanonicalLaneLean
end HautevilleHouse