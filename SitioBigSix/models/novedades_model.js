var pool = require('./db');
            // LISTAR NOVEDADES
async function get_novedades() {
    var query = 'select * from novedades';
    var rows = await pool.query(query);
    return rows;
}

async function delete_novedades_by_id(id_novedades) {
    var query = 'delete from novedades where id_novedades = ?';
    var rows = await pool.query(query, [id_novedades]);
    return rows;
}

async function insert_novedad(obj) {
    try {
        var query = 'insert into novedades set ?';
        var rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

async function get_novedades_by_id(id_novedades) {
    var query = 'select * from novedades where id_novedades = ?';
    var rows = await pool.query(query, [id_novedades]);
    return rows [0];
}

async function modificar_novedad_by_id(obj, id_novedades) {
    try {
        var query = 'update novedades set ? where id_novedades = ?';
        console.log('inicio 2da prueba')
        console.log(obj)
        console.log(id_novedades)
        console.log('fin 2da prueba')
        var rows = await pool.query(query, [obj, id_novedades]);
        return rows;
    } catch (error) {
        throw error;
    }
}

module.exports = { get_novedades, delete_novedades_by_id, insert_novedad, get_novedades_by_id, modificar_novedad_by_id }

