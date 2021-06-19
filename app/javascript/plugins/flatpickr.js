import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    enableTime: true,
    dateFormat: 'Z',
    altFormat: 'Y-m-d h:i K'
  });
}

export { initFlatpickr };
