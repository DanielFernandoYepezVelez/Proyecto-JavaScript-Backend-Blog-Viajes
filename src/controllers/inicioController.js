/* Services */
import inicioService from '../services/inicioService.js';

const inicioController = async(req, res) => {
    try {
        const viajes = await inicioService();
        return res.json({ ok: true, viajes });

    } catch (e) {
        return res.status(400).json({ ok: false, error: e });
    }
}

export default inicioController;