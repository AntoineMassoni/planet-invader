import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/airbnb.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#check-in", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#check-out"})]
});
