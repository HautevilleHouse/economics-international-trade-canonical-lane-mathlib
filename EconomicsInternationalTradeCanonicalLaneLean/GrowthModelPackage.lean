import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : Type u
  laborForce : Type v
  productionFunction : capitalStock → laborForce → ℝ
  savingRate : ℝ
  depreciationRate : ℝ
  steadyStateCapital : Prop
  convergenceRate : Prop
  steadyStateCapitalTerm : steadyStateCapital
  convergenceRateTerm : convergenceRate

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateCapitalClosed : G.steadyStateCapital
  convergenceRateClosed : G.convergenceRate

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyStateCapital ∧ G.convergenceRate

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.steadyStateCapitalClosed E.convergenceRateClosed

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse