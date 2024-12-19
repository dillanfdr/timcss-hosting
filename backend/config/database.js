import { Sequelize } from "sequelize";;

const db = new Sequelize('ecosphere','tom','Tom-1234',{
    host : "localhost",
    dialect: "mysql"
})

export default db;