import pool from '../config/db.js';

const inicioService = async() => {
    const [rows, fields] = await pool.query('SELECT * FROM viajes');
    return rows;
}

export default inicioService;