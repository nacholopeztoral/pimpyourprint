const carbonPerKm = {'car': 130, 'bus': 70, 'train': 28,
  'scooter': 77, 'tram': 20, 'plane': 1500};

const carbonDisplay = document.getElementById('totalTranspCarbon');

const calculateCarbon = (modeOfTransport) => {
    const vehicleId = `mode-${modeOfTransport}`;
    const vehicle = document.getElementById(vehicleId);
    if(vehicle) {
      vehicle.addEventListener('keyup', (event) => {
        const carbonPerVehicle = Number(vehicle.value);
        const carbonKg = carbonPerKm[modeOfTransport] * 0.001;
        const calculated = Math.round(carbonPerVehicle*carbonKg * 10) / 10;
        let total = Number(carbonDisplay.value)
        total += calculated
        carbonDisplay.value = total;
    });
  };
};

const car = calculateCarbon('car');
const bus = calculateCarbon('bus');
const train = calculateCarbon('train');
const scooter = calculateCarbon('scooter');
const tram = calculateCarbon('tram');
const plane = calculateCarbon('plane');
