import { Controller } from "@hotwired/stimulus"
// import Chart from "chart.js";

// Connects to data-controller="chart"
export default class extends Controller {
  static targets = ["graph"]
  static values = {
    ratings: Array
  }

  connect() {
    new Chart(this.graphTarget, {
      type: 'line',
      data: {
        labels: this.ratingsValue.map(r => r.date),
        datasets: [{
          label: 'Evolution of feelings',
          data: this.ratingsValue.map(r => r.rating),
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            ticks: {
              callback: function(value) {
                if (value === 0)
                  return '😱'
                else if (value === 1)
                  return '😧'
                else if (value === 2)
                  return '🫠'
                else if (value === 3)
                  return '😊'
                else
                  return ''
              }
            }
          },
          x: {
            ticks: {
              callback: (index) => {
                const rating = this.ratingsValue[index]
                return new Date(rating.date).toLocaleDateString('en-CA', {dateStyle: 'medium'} );
              }
            }
          }
        }
      }
    });
  }
}
