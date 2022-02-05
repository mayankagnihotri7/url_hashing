import React, { useEffect, useState } from "react";

import urlApi from "./apis/links";
import Input from "./components/Input";
import UrlTable from "./components/UrlTable";

const App = () => {
  const [url, setUrl] = useState("");
  const [showUrl, setShowUrl] = useState([]);
  const [error, setError] = useState(false);

  const handleSubmit = async event => {
    event.preventDefault();
    try {
      await urlApi.create({ link: { original_url: url } });
      window.location.href = "/";
      setUrl("");
      setError(false);
    } catch (error) {
      setError(true);
    }
  };

  const fetchUrl = async () => {
    try {
      const urls = await urlApi.list();
      setShowUrl(urls.data.url);
    } catch (error) {
      setError(true);
    }
  };

  useEffect(() => {
    fetchUrl();
  }, []);

  return (
    <>
      <Input handleSubmit={handleSubmit} url={url} setUrl={setUrl} />
      <UrlTable showUrl={showUrl} />
    </>
  );
};

export default App;
