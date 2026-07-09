// Recupere les elements necessaires pour attacher l'interaction.
const learnMoreButton = document.getElementById("learn-more-button");
const detailsText = document.getElementById("details-text");

// Met a jour le texte afin de montrer un comportement JS visible dans la page.
learnMoreButton.addEventListener("click", () => {
  detailsText.textContent =
    "SpecForge structure une demande en resume, questions bloquantes, plan d'action et idees de tests pour mieux cadrer avant de coder.";
});
