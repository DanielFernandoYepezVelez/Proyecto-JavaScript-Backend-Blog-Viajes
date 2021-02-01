/* Services */
import testimonialService from '../services/testimonialesService.js';

const testimonialesController = async(req, res) => {
    try {
        const message = await testimonialService(req.body);
        return res.json({ ok: true, message });

    } catch (e) {
        return res.status(400).json({ ok: false, error: e });
    }

    console.log('Correcto');
    res.send('hola mundo');
}

export default testimonialesController;