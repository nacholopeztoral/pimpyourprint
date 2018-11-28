const carbonPerKm = {'car': 130, 'bus': 70, 'train': 28,
  'scooter': 77, 'tram': 20, 'plane': 1500};


const calculateCarbon = (modeOfTransport) => {
  const carbonDisplay = document.getElementById('totalTranspCarbon');
  if (carbonDisplay) {
    const vehicleId = `mode-${modeOfTransport}`;
    const vehicle = document.getElementById(vehicleId);
    if (Number(vehicle.value)) {
      const carbonPerVehicle = Number(vehicle.value);
      const carbonKg = carbonPerKm[modeOfTransport] * 0.001;
      const calculated = (carbonPerVehicle*carbonKg * 10) / 10;
      return calculated;
    } else {
      return 0;
    }
  };
};

function listenToTransporationInputs() {
  const elements = document.querySelectorAll(".transportation-input")
  const carbon = document.getElementById('totalTranspCarbon');
  elements.forEach((element) => {
    element.addEventListener('keyup', (event) => {
      total = 0;
      Object.keys(carbonPerKm).forEach((key) => {
        const value = calculateCarbon(key);
        total += value;
      })
      carbon.value = total;
    })
  })
}

listenToTransporationInputs();
