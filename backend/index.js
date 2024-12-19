import dotenv from "dotenv";
dotenv.config();
import express from "express";
import db from "./config/database.js";
import Users from "./models/UserModel.js";
import router from "./routes/index.js";
import cors from "cors";
import bodyParser from "body-parser";

const app = express();

app.use(bodyParser())
app.use(express.static('uploads'))

app.use(
	cors({
		origin: "http://localhost:5173", // Allow requests from your frontend
		methods: ["GET", "POST", "PUT", "DELETE", "PATCH"], // Allow all HTTP methods
		credentials: false
	})
);

try {
	await db.authenticate();
	console.log("Database Connected...");
	await Users.sync();
} catch (error) {
	console.error(error);
}

app.use(express.json());
app.use(router);

const PORT = 3016
app.listen(PORT, () => console.log("Server running at port ", PORT));