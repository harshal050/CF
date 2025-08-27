"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.users = void 0;
const prisma_1 = require("../../src/generated/prisma");
const prisma = new prisma_1.PrismaClient();
const users = async (req, res) => {
    try {
        const data = await prisma.user.findMany();
        res.json({ msg: data });
    }
    catch (e) {
        res.json({ msg: e });
    }
};
exports.users = users;
//# sourceMappingURL=user.js.map