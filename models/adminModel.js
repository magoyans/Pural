const pool = require('../bd'); 

//Agregar nuevos productos
async function addProduct(obj1,obj2){
    try{
        let query1 = "insert into product set ?";
        const rows1 = await pool.query(query1, [obj1]);
        obj2.id_product = rows1.insertId
        let query2 = "insert into product_has_category_has_type set ?"
        const rows2 = await pool.query(query2,obj2)
        return rows2;
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
        let query = "select * from product_has_category_has_type join category on product_has_category_has_type.id_category = category.id_cat join type on product_has_category_has_type.id_type = type.id_type join product on product_has_category_has_type.id_product = product.id_prod order by id_prod desc";
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

//Get categories
async function getCategory(){
    try{
        let query = "select * from category";
        let rows = await pool.query(query);
        return rows;
    }catch(error){
        throw error;
    }
}

//Get types
async function getType(){
    try{
        let query = "select * from type";
        let rows = await pool.query(query);
        return rows;
    }catch(error){
        throw error;
    }
}



module.exports = {getProductsAdmin, addProduct, deleteProducts, updateProd, getCategory, getType}