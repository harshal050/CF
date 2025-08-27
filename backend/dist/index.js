"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const user_1 = require("./controller/user");
const app = express();
const PORT = 3001;
app.get('/', user_1.users);
app.listen(PORT, () => {
    console.log(`SERVER IS LISTEN ON PORT ${PORT}`);
});
//# sourceMappingURL=index.js.map