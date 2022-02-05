import axios from "axios";

const create = payload => axios.post("/links", payload);

const urlApi = { create };

export default urlApi;
