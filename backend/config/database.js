import { Sequelize } from "sequelize";

const DB_NAME = process.env.DATABASE_NAME;
console.log("DB_NAME", DB_NAME);

const db = new Sequelize('ecosphere','root','',{
    host : "localhost",
    dialect: "mysql"
})

export default db;