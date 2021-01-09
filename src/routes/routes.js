import { Router } from 'express';

const router = Router();

/* Controllers */
import inicioController from '../controllers/inicioController.js'
import nosotrosController from '../controllers/nosotrosController.js'
import viajesController from '../controllers/viajesController.js'
import testimonialesController from '../controllers/testimonialesController.js'

router
    .get('/inicio', inicioController)
    .get('/nosotros', nosotrosController)
    .get('/viajes', viajesController)
    .get('/testimoniales', testimonialesController)

export default router;