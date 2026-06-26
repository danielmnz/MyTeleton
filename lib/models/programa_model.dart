import 'package:cloud_firestore/cloud_firestore.dart';

class ProgramaModel {
  String id;
  String nombre;
  String descripcion;
  List<String> idCoordinadores;
  DateTime? fechaInicio;
  DateTime? fechaFin;
  bool activo;

  ProgramaModel({
    required this.id,
    required this.nombre,
    this.descripcion = '',
    this.idCoordinadores = const [],
    this.fechaInicio,
    this.fechaFin,
    this.activo = true,
  });
  factory ProgramaModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ProgramaModel(
      id: doc.id,
      nombre: data['nombre'] ?? '',
      descripcion: data['descripcion'] ?? '',
      idCoordinadores: List<String>.from(data['idCoordinadores'] ?? []),
      fechaInicio: (data['fechaInicio'] as Timestamp?)?.toDate(),
      fechaFin: (data['fechaFin'] as Timestamp?)?.toDate(),
      activo: data['activo'] ?? true,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'descripcion': descripcion,
      'idCoordinadores': idCoordinadores,
      'fechaInicio': fechaInicio != null
          ? Timestamp.fromDate(fechaInicio!)
          : null,
      'fechaFin': fechaFin != null ? Timestamp.fromDate(fechaFin!) : null,
      'activo': activo,
    };
  }

  bool tieneComoCoordinador(String uid) => idCoordinadores.contains(uid);
  ProgramaModel copyWith({
    String? nombre,
    String? descripcion,
    List<String>? idCoordinadores,
    DateTime? fechaInicio,
    DateTime? fechaFin,
    bool? activo,
  }) {
    return ProgramaModel(
      id: id,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      idCoordinadores: idCoordinadores ?? this.idCoordinadores,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      activo: activo ?? this.activo,
    );
  }
}
