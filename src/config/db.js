import mysql from 'mysql2/promise';

const connect = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

connect.getConnection()
    .then(() => console.log("===== Successfully Database Connected ====="))
    .catch((err) => mensajesError(err));

const mensajesError = (err) => {
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
        console.error('===== La conexión fue Cerrada =====');
    }

    if (err.code === 'ER_CON_COUNT_ERROR') {
        console.error('===== La DB tiene muchas conexiones =====');
    }

    if (err.code === 'ECONNREFUSED') {
        console.error('===== La conexion de la BD fue rechazada =====');
    }

    if (err.code === 'ER_ACCESS_DENIED_ERROR') {
        console.error('===== Acceso Denegado A La Base De Datos =====');
    }

    //console.log(err)
}

export default connect;