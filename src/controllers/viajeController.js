/* Services */
import viajeService from '../services/viajeService.js';

const viajeDetalleController = async(req, res) => {
    const { viajeId } = req.params;

    try {
        const viaje = await viajeService(viajeId);
        return res.json({ ok: true, viaje });

    } catch (e) {
        return res.status(400).json({ ok: false, error: e });
    }
}

export default viajeDetalleController;