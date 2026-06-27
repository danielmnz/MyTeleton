import 'package:cloud_firestore/cloud_firestore.dart';

enum Estado { activa, cancelada, finalizada }

extension EstadoExtension on Estado {
  String get valor {
    switch (this) {
      case Estado.activa:
        return 'activa';
      case Estado.cancelada:
        return 'cancelada';
      case Estado.finalizada:
        return 'finalizada';
    }
  }

  static Estado desdeTexto(String texto) {
    switch (texto) {
      case 'cancelada':
        return Estado.cancelada;
      case 'finalizada':
        return Estado.finalizada;
      default:
        return Estado.activa;
    }
  }
}

class ActividadModel {
  String id;
  String idPrograma;
  String nombre;
  String descripcion;
  DateTime? fecha;
  String ubicacion;
  int cupoMaximo;
  String creadoPor;
  Estado estado;

  ActividadModel({
    required this.id,
    required this.idPrograma,
    required this.nombre,
    this.descripcion = '',
    this.fecha,
    this.ubicacion = '',
    this.cupoMaximo = 0,
    required this.creadoPor,
    this.estado = Estado.activa,
  });

  factory ActividadModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ActividadModel(
      id: doc.id,
      idPrograma: data['idPrograma'] ?? '',
      nombre: data['nombre'] ?? '',
      descripcion: data['descripcion'] ?? '',
      fecha: (data['fecha'] as Timestamp?)?.toDate(),
      ubicacion: data['ubicacion'] ?? '',
      cupoMaximo: data['cupoMaximo'] ?? 0,
      creadoPor: data['creadoPor'] ?? '',
      estado: EstadoExtension.desdeTexto(data['estado'] ?? 'activa'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idPrograma': idPrograma,
      'nombre': nombre,
      'descripcion': descripcion,
      'fecha': fecha != null ? Timestamp.fromDate(fecha!) : null,
      'ubicacion': ubicacion,
      'cupoMaximo': cupoMaximo,
      'creadoPor': creadoPor,
      'estado': estado.valor,
    };
  }

  bool tieneCupo(int actuales) => actuales < cupoMaximo;

  ActividadModel copyWith({
    String? nombre,
    String? descripcion,
    DateTime? fecha,
    String? ubicacion,
    int? cupoMaximo,
    Estado? estado,
  }) {
    return ActividadModel(
      id: id,
      idPrograma: idPrograma,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      fecha: fecha ?? fecha,
      ubicacion: ubicacion ?? this.ubicacion,
      cupoMaximo: cupoMaximo ?? this.cupoMaximo,
      creadoPor: creadoPor,
      estado: estado ?? this.estado,
    );
  }
}
