import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="products"
export default class extends Controller {
  static targets = ["input"]

  connect() {
    console.log('Im connected');
  }

  addProduct(event) {
    let amount = parseInt(this.inputTarget.dataset.sum, 10)
    amount += 1
    this.inputTarget.dataset.sum = amount
    this.inputTarget.value = amount
    console.log(this.inputTarget.dataset.sum);
    console.log(this.inputTarget.value);
  }

  removeProduct() {
    let sum = this.inputTarget.value
    let amount = parseInt(sum, 10)
    amount -= 1
    this.inputTarget.value = amount
  }
}
