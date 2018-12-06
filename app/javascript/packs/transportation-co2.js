const carbonPerKm = {'car': 130, 'bus': 70, 'train': 28, 'plane': 1500};


const calculateCarbon = (modeOfTransport) => {
  const carbonDisplay = document.getElementById('totalTranspCarbon');
  if (carbonDisplay) {
    const vehicleId = `mode-${modeOfTransport}`;
    const vehicle = document.getElementById(vehicleId);
    if (Number(vehicle.value)) {
      const carbonPerVehicle = Number(vehicle.value);
      const carbonKg = carbonPerKm[modeOfTransport] * 0.001;
      const calculated = Math.round(carbonPerVehicle*carbonKg * 100) / 10;
      return calculated;
    } else {
      return 0;
    }
  };
};

function listenToTransporationInputs() {
  const elements = document.querySelectorAll(".transportation-input")
  const carbon = document.getElementById('totalTranspCarbon');
  const carbonBg = document.querySelector('.co2-transp-info');
  elements.forEach((element) => {
    element.addEventListener('keyup', (event) => {
      total = 0;
      Object.keys(carbonPerKm).forEach((key) => {
        const value = calculateCarbon(key);
        total += value;
      })
      carbon.value = Math.round(total * 100) / 100;
      if(carbon.value > 300) {
        carbonBg.style.backgroundColor = '#EE5F5B'
      } else if (carbon.value > 0) {
        carbonBg.style.backgroundColor = '#E67E22'
      } else {
        carbonBg.style.backgroundColor = '#50B774'
      }
    })
  })
}

listenToTransporationInputs();
