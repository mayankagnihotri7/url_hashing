import axios from "axios";

const list = () => axios.get("/links");

const create = payload => axios.post("/links", payload);

const urlApi = { create, list };

export default urlApi;
