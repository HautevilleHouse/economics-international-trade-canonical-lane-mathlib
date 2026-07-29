import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure UtilityRepresentationPackage where
  consumptionSet : Type u
  preferenceRelation : Type v
  utilityFunction : Type w
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  representationTheorem : Prop

structure UtilityRepresentationEvidence (P : UtilityRepresentationPackage) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  representationTheoremClosed : P.representationTheorem

def UtilityRepresentationClosed (P : UtilityRepresentationPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.representationTheorem

theorem utility_representation_closed_from_evidence
    (P : UtilityRepresentationPackage) (E : UtilityRepresentationEvidence P) :
    UtilityRepresentationClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.representationTheoremClosed))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse