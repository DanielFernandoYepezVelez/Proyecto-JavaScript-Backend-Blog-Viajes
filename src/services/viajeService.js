import pool from '../config/db.js';

const viajeService = async(idViaje) => {
    const [rows, fields] = await pool.query('SELECT * FROM viajes WHERE id = ?', [idViaje]);

    if (rows.length === 0) {
        throw new Error('El Id No Existe En La Base De Datos').message;
    }

    return rows;
}

export default viajeService;