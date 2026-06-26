import 'package:cloud_firestore/cloud_firestore.dart';

enum Estado { inscrito, asistio, noAsistio, cancelado }

extension EstadoExtension on Estado {
  String get valor {
    switch (this) {
      case Estado.inscrito:
        return 'inscrito';
      case Estado.asistio:
        return 'asistio';
      case Estado.noAsistio:
        return 'noAsistio';
      case Estado.cancelado:
        return 'cancelado';
    }
  }

  static Estado desdeTexto(String texto) {
    switch (texto) {
      case 'asistio':
        return Estado.asistio;
      case 'noAsistio':
        return Estado.noAsistio;
      case 'cancelado':
        return Estado.cancelado;
      default:
        return Estado.inscrito;
    }
  }
}

class InscripcionModel {
  String idVoluntario;
  Estado estado;
  DateTime? fechaInscrito;
  DateTime? fechaMarcado;

  InscripcionModel({
    required this.idVoluntario,
    this.estado = Estado.inscrito,
    this.fechaInscrito,
    this.fechaMarcado,
  });

  factory InscripcionModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return InscripcionModel(
      idVoluntario: doc.id,
      estado: EstadoExtension.desdeTexto(data['estado'] ?? 'inscrito'),
      fechaInscrito: (data['fechaInscrito'] as Timestamp?)?.toDate(),
      fechaMarcado: (data['fechaMarcado'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idVoluntario': idVoluntario,
      'estado': estado.valor,
      'fechaInscrito': fechaInscrito != null
          ? Timestamp.fromDate(fechaInscrito!)
          : FieldValue.serverTimestamp(),
      'fechaMarcado': fechaMarcado != null
          ? Timestamp.fromDate(fechaMarcado!)
          : null,
    };
  }

  InscripcionModel copyWith({Estado? estado, DateTime? fechaMarcado}) {
    return InscripcionModel(
      idVoluntario: idVoluntario,
      estado: estado ?? this.estado,
      fechaInscrito: fechaInscrito,
      fechaMarcado: fechaMarcado ?? this.fechaMarcado,
    );
  }
}
