const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const message = process.env.APP_MESSAGE || 'Hello DevSecOps!';

app.get('/healthz', (req, res) => res.json({ok: true}));
app.get('/', (req, res) => res.send(message));

app.listen(port, () => console.log(`app listening on ${port}`));
