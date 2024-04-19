const {Schema, model } = require('mongoose');

const Historial_CirugiasSchema = new Schema({
    Paciente: String,
    Nombre_Medico:String,
    Tipo_Cirugias:String ,
    Sala_Operaciones: String,
    Complicaciones: String,
    Resultado_de_cirugia: String,
    Descripcion: String,
    date:{type: Date, default: Date.now},
});

module.exports = model('HistorialCirugias', Historial_CirugiasSchema);