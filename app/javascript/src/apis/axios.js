import axios from "axios";

axios.defaults.baseURL = "/";

axios.defaults.headers = {
  Accept: "application/json",
  "Content-Type": "application/json",
  "X-CSRF-TOKEN": document
    .querySelector('[name="csrf-token"]')
    .getAttribute("content"),
};
