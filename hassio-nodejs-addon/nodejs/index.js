import express from "express";
import axios from "axios";

const app = express();
const port = 8000;

app.get('/', (req, res) => {
	res.send('Hello World!');
});

app.get('/homeassistant/get/api', async (req, res) => {
	const response = await axios({
		method: req.params.method,
		URL: `http://supervisor/core/api`
	});
	res.status(response.status).send(response.data);
});

app.listen(port, () => console.log(`App started at on port ${port}`));
