import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="products"
export default class extends Controller {
  static targets = ["input"]

  connect() {
    console.log('Im connected');
  }

  addProduct() {
    let sum = this.inputTarget.value
    let amount = parseInt(sum, 10)
    amount += 1
    this.inputTarget.value = amount
  }

  removeProduct() {
    let sum = this.inputTarget.value
    let amount = parseInt(sum, 10)
    amount -= 1
    this.inputTarget.value = amount
  }
}
