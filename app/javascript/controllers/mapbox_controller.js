import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    console.log(this.markerValue)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"

    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }
  #addMarkersToMap() {
    const popup = new mapboxgl.Popup().setHTML(this.markerValue.info_window)

    const customMarker = document.createElement("div")
    customMarker.className = "this.markerValue"
    customMarker.style.backgroundImage = `url('${this.markerValue.image_url}')`
    customMarker.style.backgroundSize = "contain"
    customMarker.style.width = "80px"
    customMarker.style.height = "80px"

    new mapboxgl.Marker(customMarker)
      .setLngLat([this.markerValue.lng, this.markerValue.lat])
      .setPopup(popup)
      .addTo(this.map)
  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([this.markerValue.lng, this.markerValue.lat])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
