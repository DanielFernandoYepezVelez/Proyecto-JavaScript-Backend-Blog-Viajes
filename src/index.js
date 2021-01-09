import 'dotenv/config.js';

import express from 'express';
import morgan from 'morgan';
import cors from 'cors';
import path from 'path';

/* Routes All */
import routes from './routes/routes.js';

const app = express();

/* Middlewares */
app.use(cors());
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

/* Static Files */
//app.use(express.static(path.join(__dirname, './public/')));

/* Routes */
app.use('/api', routes);

/* Start Server */
app.listen(process.env.PORT, () => {
    console.log(`Server On Port ${process.env.PORT}`);
});