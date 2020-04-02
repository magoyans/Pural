const pool = require('../bd'); 

//Product by id
async function getProduct(id){
    try{
        let query = "select * from product_has_category_has_type join category on id_category = id_cat join type on product_has_category_has_type.id_type = type.id_type join product on product_has_category_has_type.id_product = product.id_prod where id_prod=?";
        let rows = await pool.query(query, id);
        console.log(rows);
        return rows;
    }catch(error){
        throw error;
    }
}

//Product by category
async function getProductsByCategory(id){
    try{
        let query = "select * from product_has_category_has_type join product on product_has_category_has_type.id_product = id_prod join type on product_has_category_has_type.id_type = type.id_type join category on category.id_cat = product_has_category_has_type.id_category where product_has_category_has_type.id_category = ?";
        let rows = await pool.query(query,id);
        return rows;
    }catch(error){
        throw error;
    }
}

//Category by id
async function getCategoryById(id) {
    try {   
        let query = "select name_cat from category where id_cat = ?";
        const rows = await pool.query(query,id);
        return rows;
    } catch(error) {
        throw error;
    }
}

//Category
async function indexCategory(){
    try{
        let query = "select * from category";
        const rows = await pool.query(query);
        return rows;
    }catch(error){
        throw error;
    }
}

module.exports = {getCategoryById, getProduct, getProductsByCategory, indexCategory} 