import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/airbnb.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const bookingForm = document.getElementById('booking-form-div');


 if (bookingForm) {
  const bookings = JSON.parse(bookingForm.dataset.bookings);

  flatpickr("#check-in", {
    minDate: "today",
    plugins: [new rangePlugin({ input: "#check-out"})],
    "disable": bookings,
  });
}
