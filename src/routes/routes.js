import { Router } from 'express';

const router = Router();

/* Controllers */
import inicioController from '../controllers/inicioController.js'
import viajesController from '../controllers/viajesController.js'
import nosotrosController from '../controllers/nosotrosController.js'
import viajeDetalleController from '../controllers/viajeController.js'
import testimonialesController from '../controllers/testimonialesController.js'

router
    .get('/inicio', inicioController)
    .get('/nosotros', nosotrosController)
    .get('/viajes/:viajeId', viajeDetalleController)
    .get('/viajes', viajesController)
    .post('/testimonial', testimonialesController)

export default router;