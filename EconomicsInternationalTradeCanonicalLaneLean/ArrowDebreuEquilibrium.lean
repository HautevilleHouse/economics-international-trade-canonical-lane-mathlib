import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure ArrowDebreuEconomyPackage where
  commoditySpace : Type u
  priceSystem : Type v
  householdPreferences : Prop
  firmProductionSets : Prop
  walrasLaw : Prop
  excessDemandContinuity : Prop
  equilibriumExistence : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEconomyPackage) where
  householdPreferencesClosed : A.householdPreferences
  firmProductionSetsClosed : A.firmProductionSets
  walrasLawClosed : A.walrasLaw
  excessDemandContinuityClosed : A.excessDemandContinuity
  equilibriumExistenceClosed : A.equilibriumExistence

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEconomyPackage) : Prop :=
  A.householdPreferences ∧ A.firmProductionSets ∧ A.walrasLaw ∧ A.excessDemandContinuity ∧ A.equilibriumExistence

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEconomyPackage) (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.householdPreferencesClosed (And.intro E.firmProductionSetsClosed (And.intro E.walrasLawClosed (And.intro E.excessDemandContinuityClosed E.equilibriumExistenceClosed)))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse