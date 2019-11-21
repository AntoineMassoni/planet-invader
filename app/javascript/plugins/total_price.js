const checkIn = document.getElementById("check-in");
const checkOut = document.getElementById("check-out");
let total_price = 0;
let total_days = 0;
let startDate = 0;
let endDate = 0;
const price = Number.parseInt(document.getElementById("price").innerText);
const new_price = document.getElementById("total-price");

checkIn.addEventListener("change", (event) => {
  total_milliseonde = Date.parse(checkOut.value) - Date.parse(checkIn.value);
  let total_days = (total_milliseonde / 86400000);
  let total_price = total_days * price;
  new_price.innerText = total_price;
});



