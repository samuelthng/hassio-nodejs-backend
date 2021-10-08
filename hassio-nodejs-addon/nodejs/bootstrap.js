// ES6 Transpiler.
require("@babel/core").transform("code", {
  presets: ["@babel/preset-env"],
});

// Initialize node project.
require("./index");
