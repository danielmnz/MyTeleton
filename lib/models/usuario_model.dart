import 'package:cloud_firestore/cloud_firestore.dart';

enum RolUsuario { jefeGestion, coordinador, voluntario }

extension RolUsuarioExtension on RolUsuario {
  String get valor {
    switch (this) {
      case RolUsuario.jefeGestion:
        return 'jefe_gestion';
      case RolUsuario.coordinador:
        return 'coordinador';
      case RolUsuario.voluntario:
        return 'voluntario';
    }
  }

  static RolUsuario desdeTexto(String texto) {
    switch (texto) {
      case 'jefe_gestion':
        return RolUsuario.jefeGestion;
      case 'coordinador':
        return RolUsuario.coordinador;
      case 'voluntario':
        return RolUsuario.voluntario;
      default:
        throw ArgumentError('Rol desconocido: $texto');
    }
  }
}

class UsuarioModel {
  String uid;
  String nombre;
  String email;
  RolUsuario rol;
  String? programaId; // null solo para jefe_gestion
  String telefono;
  bool activo;
  DateTime? creadoEn;

  UsuarioModel({
    required this.uid,
    required this.nombre,
    required this.email,
    required this.rol,
    this.programaId,
    this.telefono = '',
    this.activo = true,
    this.creadoEn,
  });

  factory UsuarioModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UsuarioModel(
      uid: doc.id,
      nombre: data['nombre'] ?? '',
      email: data['email'] ?? '',
      rol: RolUsuarioExtension.desdeTexto(data['rol'] ?? 'voluntario'),
      programaId: data['programaId'],
      telefono: data['telefono'] ?? '',
      activo: data['activo'] ?? true,
      creadoEn: (data['creadoEn'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'email': email,
      'rol': rol.valor,
      'programaId': programaId,
      'telefono': telefono,
      'activo': activo,
      'creadoEn': creadoEn != null
          ? Timestamp.fromDate(creadoEn!)
          : FieldValue.serverTimestamp(),
    };
  }

  UsuarioModel copyWith({
    String? nombre,
    String? email,
    RolUsuario? rol,
    String? programaId,
    String? telefono,
    bool? activo,
  }) {
    return UsuarioModel(
      uid: uid,
      nombre: nombre ?? this.nombre,
      email: email ?? this.email,
      rol: rol ?? this.rol,
      programaId: programaId ?? this.programaId,
      telefono: telefono ?? this.telefono,
      activo: activo ?? this.activo,
      creadoEn: creadoEn,
    );
  }

  bool get esJefeDeGestion => rol == RolUsuario.jefeGestion;
  bool get esCoordinador => rol == RolUsuario.coordinador;
  bool get esVoluntario => rol == RolUsuario.voluntario;
}
