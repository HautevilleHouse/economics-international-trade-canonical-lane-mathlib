import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure UtilityTheoryPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  utilityFunction : consumptionSet → ℝ
  utilityMaximization : Prop
  rationalPreferences : Prop
  utilityRepresentation : Prop
  utilityMaximizationTerm : utilityMaximization
  rationalPreferencesTerm : rationalPreferences
  utilityRepresentationTerm : utilityRepresentation

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  utilityMaximizationClosed : U.utilityMaximization
  rationalPreferencesClosed : U.rationalPreferences
  utilityRepresentationClosed : U.utilityRepresentation

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.utilityMaximization ∧ U.rationalPreferences ∧ U.utilityRepresentation

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage)
    (E : UtilityTheoryEvidence U) : UtilityTheoryClosed U := by
  exact And.intro E.utilityMaximizationClosed
    (And.intro E.rationalPreferencesClosed E.utilityRepresentationClosed)

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse