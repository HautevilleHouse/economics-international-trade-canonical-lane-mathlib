import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure RicardianPackage where
  laborProductivity : Prop
  opportunityCost : Prop
  comparativeAdvantage : Prop
  specializationGains : Prop
  termsOfTrade : Prop
  welfareGains : Prop

structure RicardianEvidence (R : RicardianPackage) where
  laborProductivityClosed : R.laborProductivity
  opportunityCostClosed : R.opportunityCost
  comparativeAdvantageClosed : R.comparativeAdvantage
  specializationGainsClosed : R.specializationGains
  termsOfTradeClosed : R.termsOfTrade
  welfareGainsClosed : R.welfareGains

def RicardianClosed (R : RicardianPackage) : Prop :=
  R.laborProductivity ∧ R.opportunityCost ∧ R.comparativeAdvantage ∧ R.specializationGains ∧ R.termsOfTrade ∧ R.welfareGains

theorem ricardian_closed_from_evidence (R : RicardianPackage) (E : RicardianEvidence R) : RicardianClosed R := by
  exact And.intro E.laborProductivityClosed (And.intro E.opportunityCostClosed (And.intro E.comparativeAdvantageClosed (And.intro E.specializationGainsClosed (And.intro E.termsOfTradeClosed E.welfareGainsClosed))))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse