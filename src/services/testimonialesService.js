import pool from '../config/db.js';

const testimonialService = async({ name, email, message }) => {
    if (name === undefined || email === undefined || message === undefined) {
        throw new Error('Todos Los Campos Son Requeridos').message;
    }

    const [rows, fields] = await pool.query('INSERT INTO tasks SET ?', [name, email, message]);
    console.log([rows, fields]);

    // return rows;
}

export default testimonialService;