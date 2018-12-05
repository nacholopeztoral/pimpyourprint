// initializing Algolia Places
const places = require('places.js');
const placesAutocomplete = places({
  appId: 'plAG2VLY8AEN',
  apiKey: '33775c2b9601a46956a5343d78393f44',
  container: document.querySelector('#address-input')
});
