import React from "react";

import Url from "./Url";

const UrlTable = ({ showUrl }) => {
  return (
    <section className="my-4 mx-auto w-4/6 p-4">
      <div>
        <ul className="border shadow-sm">
          <li className="mb-px flex items-center justify-between bg-purple-600 p-4 text-xl text-white">
            <p className="flex w-2/5 justify-center">Original</p>
            <p className="flex w-2/5 justify-center">Shortened</p>
          </li>
          {showUrl?.map(url => {
            return <Url {...url} key={url.id} />;
          })}
        </ul>
      </div>
    </section>
  );
};

export default UrlTable;
