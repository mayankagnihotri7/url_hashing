import React, { useEffect, useState } from "react";

import { useHistory } from "react-router-dom";

import urlApi from "./apis/links";
import Input from "./components/Input";
import UrlTable from "./components/UrlTable";

const App = () => {
  const [url, setUrl] = useState("");
  const [error, setError] = useState(false);

  const history = useHistory();

  const handleSubmit = async event => {
    event.preventDefault();
    try {
      await urlApi.create({ link: { original_url: url } });
      history.push("/");
      setUrl("");
      setError(false);
    } catch (error) {
      setError(true);
    }
  };

  return (
    <>
      <Input handleSubmit={handleSubmit} url={url} setUrl={setUrl} />
      <UrlTable />
    </>
  );
};

export default App;
