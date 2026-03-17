import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
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

// --- PANTALLA PRINCIPAL (CON DRAWER) ---
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FinanTrack - Inicio'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text(
          'Bienvenido a FinanTrack',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// --- WIDGET DEL DRAWER (MENÚ LATERAL) ---
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Encabezado del Drawer modificado con un Container flexible
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 20, // Deja espacio para la barra de estado del teléfono
              bottom: 20,
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/EdgarOrozco21/imagenes-para-flutter-6-j-11-02-26/refs/heads/main/ingresos.png'), // Gráfico financiero
                ),
                SizedBox(height: 10),
                Text(
                  'FinanTrack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Av. Finanzas 123, Ciudad Juárez',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  'Tel: 6561234567',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  'contacto@finantrack.com',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          // Opciones del menú
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text('Portafolio'),
            onTap: () {
              Navigator.pop(context); // Cierra el menú antes de navegar
              Navigator.pushNamed(context, '/portafolio');
            },
          ),
          ListTile(
            leading: const Icon(Icons.trending_up),
            title: const Text('Inversiones'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/inversiones');
            },
          ),
          ListTile(
            leading: const Icon(Icons.money_off),
            title: const Text('Gastos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/gastos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/perfil');
            },
          ),
        ],
      ),
    );
  }
}

// --- PANTALLAS DE DESTINO ---

class PantallaPortafolio extends StatelessWidget {
  const PantallaPortafolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portafolio')),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://raw.githubusercontent.com/EdgarOrozco21/imagenes-para-flutter-6-j-11-02-26/refs/heads/main/ingresos2.jpg', // Imagen de billetera/dinero
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class PantallaInversiones extends StatelessWidget {
  const PantallaInversiones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inversiones')),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://raw.githubusercontent.com/EdgarOrozco21/imagenes-para-flutter-6-j-11-02-26/refs/heads/main/ingresos3.png', // Imagen de mercado/tendencia
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class PantallaGastos extends StatelessWidget {
  const PantallaGastos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gastos')),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://raw.githubusercontent.com/EdgarOrozco21/imagenes-para-flutter-6-j-11-02-26/refs/heads/main/finan1.jpg', // Imagen de recibos/calculadora
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&h=200&fit=crop', // Imagen de perfil profesional
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}