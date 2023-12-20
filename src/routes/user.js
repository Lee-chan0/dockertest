const express = require('express');
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const router = express.Router();

router.get('/user', async (req, res) => {
    try {
        const userInfo = await prisma.users.findMany({
            where: { username: 'John' }
        });

        return res.status(200).json({ data: userInfo });
    } catch (error) {
        console.error('Error fetching user information:', error);
        return res.status(500).json({ error: 'Internal Server Error' });
    }
});

module.exports = router;
