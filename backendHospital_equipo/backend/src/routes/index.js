const { Router } = require('express');
const router = Router();
const faker = require('faker');


const Historial_Cirugias = require('../models/historial_cirugias');
const Cirugias_por_ano = require('../models/cirugias_por_ano');


// Función para generar una fecha aleatoria dentro de un rango específico
function getRandomDate(startDate, endDate) {
    return new Date(startDate.getTime() + Math.random() * (endDate.getTime() - startDate.getTime()));
}
 
router.get('/create',async(req, res) => {
    const startDate = new Date('2002-01-01'); // Fecha inicial del rango
    const endDate = new Date('2024-12-31');   // Fecha final del rango

    for(let i = 0; i < 500; i++) {
        const randomDate = getRandomDate(startDate, endDate);

        await Historial_Cirugias.create({
        Paciente: faker.name.findName(),
        Nombre_Medico: faker.name.findName(),
        Tipo_Cirugias: faker.random.arrayElement(['Cirugía de corazón', 'Cirugía de cadera', 'Cirugía de rodilla', 'Cirugía de ojos']),
        Sala_Operaciones: faker.random.arrayElement(['Sala 1', 'Sala 2', 'Sala 3', 'Sala 4', 'Sala 5']),
        Complicaciones: faker.random.arrayElement(['Hemorragia excesiva',
        'Infección postoperatoria',
        'Problemas respiratorios',
        'Reacción alérgica a la anestesia',
        'Lesión de órganos internos',
        'Trombosis venosa profunda (TVP) o embolia pulmonar (EP)',
        'Daño a nervios o vasos sanguíneos',
        'Hematoma (acumulación de sangre) en el sitio quirúrgico',
        'Complicaciones relacionadas con el sistema cardiovascular, como un infarto de miocardio',
        'Lesiones en tejidos cercanos',
        'Perforación intestinal',
        'Obstrucción intestinal',
        'Lesiones de la vía biliar o del tracto urinario',
        'Complicaciones relacionadas con la anestesia, como náuseas y vómitos',
        'Rechazo del cuerpo a implantes o injertos'
        ]),
        Resultado_de_cirugia: faker.random.arrayElement(['Buen resultado sin complicaciones',
        'Complicaciones menores pero recuperación satisfactoria',
        'Complicaciones graves pero recuperación completa',
        'Necesidad de intervención adicional para corregir complicaciones',
        'Resultado insatisfactorio con consecuencias a largo plazo'
        ]),
        Descripcion: faker.random.arrayElement(['Paciente descansando cómodamente',
        'Signos vitales estables',
        'Herida quirúrgica limpio y sin signos de infección',
        'Reacción alérgica a la medicación postoperatoria',
        'Necesidad de analgesia adicional',
        'Incapacidad para tolerar la ingesta oral',
        'Nivel de dolor bajo control con analgésicos',
        'Presencia de drenajes quirúrgicos con salida adecuada',
        'Evidencia de edema en la zona operada',
        'Paciente despierto y orientado',
        'Complicaciones respiratorias leves, como tos ocasional',
        'Retención urinaria posquirúrgica',
        'Náuseas y vómitos postoperatorios',
        'Requerimiento de transfusión de sangre debido a pérdida durante la cirugía',
        'Recuperación de la función motora adecuada en extremidades afectadas'
        ]),
        date: randomDate,
        });
    }
    res.json({message: 'Se han realizado 500 inserciones'});
});

router.get('/historial_cirugias', async (req, res) => {
    const historial_cirugias = await Historial_Cirugias.find();
    res.json({historial_cirugias});
});

router.get('/cirugias_por_ano', async (req, res) => {
    const cirugias_por_ano = await Cirugias_por_ano.find();
    res.json({cirugias_por_ano});
});


module.exports = router;