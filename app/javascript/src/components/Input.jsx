import React from "react";

const Input = ({ url, setUrl, handleSubmit }) => {
  return (
    <section className="my-4 mx-auto w-4/6 p-4">
      <form className="flex w-full shadow-sm" onSubmit={handleSubmit}>
        <div className="w-full">
          <input
            type="text"
            className="focus:outline-none w-full appearance-none border-2 border-white bg-white py-2 px-4 leading-tight text-gray-700 focus:border-purple-500 focus:bg-white"
            placeholder="https://www.facebook.com"
            required
            value={url}
            onChange={e => setUrl(e.target.value)}
          />
        </div>
        <div>
          <button
            type="submit"
            className="focus:outline-none cursor-pointer bg-purple-500 py-2 px-2 font-bold text-white hover:bg-purple-400 focus:shadow-outline"
          >
            Create
          </button>
        </div>
      </form>
    </section>
  );
};

export default Input;
