var express = require('express');
var router = express.Router();
var novedadesModel= require('../../models/novedades_model');

                // Obtiene el nombre del usuario

router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.get_novedades()

    res.render('admin/novedades',{
        layout: 'admin/layout',
        user: req.session.nombre,
        novedades
    });
});

            // ELIMINAR UNA NOVEDAD

    router.get('/eliminar/:id_novedades', async (req, res, next) => {
        var id_novedades = req.params.id_novedades;
        await novedadesModel.delete_novedades_by_id(id_novedades);
        res.redirect('/admin/novedades')
});

            // AGREAGAR UNA NOVEDAD
router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    })
});

router.post('/agregar', async (req, res, next) => {
    try {
        if (req.body.titulo != '' && req.body.subtitulo != '' && req.body.cuerpo != '') {
            await novedadesModel.insert_novedad(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'no se cargo la novedad'
        })
    }
})

router.get('/modificar/:id_novedades', async (req, res, next) => {
    var id_novedades = req.params.id_novedades;
    var novedad = await novedadesModel.get_novedades_by_id(id_novedades);
    res.render('admin/modificar', {
        layout: 'admin/layout', novedad
    });
});

router.post('/modificar', async (req, res, next) => {
    try {
        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo
        }
        console.log(obj)
        console.log(req.body)
        await novedadesModel.modificar_novedad_by_id(obj, req.body.id_novedades);

        res.redirect('/admin/novedades');
    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'no se modifico la novedad'
        })
    }
});

module.exports = router;