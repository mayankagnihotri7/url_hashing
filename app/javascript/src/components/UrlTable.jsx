import React from "react";

const UrlTable = () => {
  return (
    <section className="my-4 mx-auto w-4/6 p-4">
      <div>
        <ul className="border shadow-sm">
          <li className="mb-px flex items-center justify-between bg-purple-600 p-4 text-xl text-white">
            <p className="flex w-2/5 justify-center">Original</p>
            <p className="flex w-2/5 justify-center">Shortened</p>
          </li>
        </ul>
      </div>
    </section>
  );
};

export default UrlTable;
