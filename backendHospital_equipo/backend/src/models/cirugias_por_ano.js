const {Schema, model } = require('mongoose');

const Cirugias_por_anoSchema = new Schema({
    "_id": Number,
    "total_cirugias": Number
});

module.exports = model('CirugiasPorAno', Cirugias_por_anoSchema);