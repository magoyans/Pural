const pool = require('../bd'); 

//Agregar nuevos productos
async function addProduct(objeto){
    try{
        let query = "insert into products set ?";
        let rows = await pool.query(query, [objeto]);
        return rows;
    }catch(error){
        throw error;
    }
}

//Eliminar productos por ID 
async function deleteProducts(id){
    try{
        let query = "delete from product where id_prod = ?"
        let rows = await pool.query(query, id);
        return rows;
    }catch(error){
        throw error;
    }
}

//Mostrar todos los productos
async function getProductsAdmin(){
    try{
        let query = "select * from product order by id_prod desc";
        let rows = await pool.query(query);
        return rows;
    }catch(error){
        throw error;
    }
}

//Updatear cambios de un producto
async function updateProd(obj,id){
    try{
        let query = "update product set ? where id_prod = ?";
        let rows = await pool.query(query, [obj,id]);
        return rows;
    }catch(error){
        throw error
    }
}



module.exports = {getProductsAdmin, addProduct, deleteProducts, updateProd}