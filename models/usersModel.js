const pool = require('../bd'); 

async function createUser(objeto){
    try{
        let query = "insert into user set ?";
        const rows = await pool.query(query, [objeto]);
        return rows;
    }catch(error){
        console.log(error);
    }
}

async function authUser(email, password){
    try{
        let query = "select * from user where email = ? and password = ?" //si no coincide con alguno devuelve empty set 
        const rows = await pool.query(query, [email, password]);
        return rows;
    }catch (error){
        console.log(error)
    }
}

module.exports = {createUser, authUser};