import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure GravityTradePackage where
  bilateralTradeFlows : Type u
  economicMass : Prop
  tradeCosts : Prop
  distanceEffect : Prop
  borderEffect : Prop
  structuralEstimation : Prop

structure GravityTradeEvidence (G : GravityTradePackage) where
  economicMassClosed : G.economicMass
  tradeCostsClosed : G.tradeCosts
  distanceEffectClosed : G.distanceEffect
  borderEffectClosed : G.borderEffect
  structuralEstimationClosed : G.structuralEstimation

def GravityTradeClosed (G : GravityTradePackage) : Prop :=
  G.economicMass ∧ G.tradeCosts ∧ G.distanceEffect ∧ G.borderEffect ∧ G.structuralEstimation

theorem gravity_trade_closed_from_evidence (G : GravityTradePackage) (E : GravityTradeEvidence G) : GravityTradeClosed G := by
  exact And.intro E.economicMassClosed (And.intro E.tradeCostsClosed (And.intro E.distanceEffectClosed (And.intro E.borderEffectClosed E.structuralEstimationClosed)))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse