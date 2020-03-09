const pool = require('../bd'); 

//All products
async function getProducts(){
    try{ 
        let query = "select * from product"
        const rows = await pool.query(query); 
        return rows;
    }catch (error){
        throw error;
    }
}

//Product by id
async function getProduct(id){
    try{
        let query = "select * from product where id_prod=" + id;
        let rows = await pool.query(query);
        return rows;
    }catch(error){
        throw error;
    }
}

//Product by category
async function getProductsByCategory(id){
    try{
        let query = "select * from product where id_category = ? ";
        let rows = await pool.query(query,id);
        return rows;
    }catch(error){
        throw error;
    }
}

module.exports = {getProducts, getProduct, getProductsByCategory} 