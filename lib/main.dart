import 'package:flutter/material.dart';
import 'LasPaginas/inicio.dart';
import 'LasPaginas/portafolio.dart';
import 'LasPaginas/inversiones.dart';
import 'LasPaginas/gastos.dart';
import 'LasPaginas/perfil.dart';

void main() {
  runApp(const FinanTrackApp());
}

class FinanTrackApp extends StatelessWidget {
  const FinanTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinanTrack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0A7E6C),
          primary: const Color(0xFF0A7E6C),
        ),
      ),
      // Configuración de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/portafolio': (context) => const PantallaPortafolio(),
        '/inversiones': (context) => const PantallaInversiones(),
        '/gastos': (context) => const PantallaGastos(),
        '/perfil': (context) => const PantallaPerfil(),
      },
    );
  }
}
