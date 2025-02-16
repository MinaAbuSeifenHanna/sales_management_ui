import 'package:flutter/material.dart';

void main() {
  runApp(const SalesManagementApp());
}

class SalesManagementApp extends StatelessWidget {
  const SalesManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نظام إدارة المبيعات'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          _buildMenuItem(context, 'إدارة المبيعات', Icons.point_of_sale, Colors.green, const SalesManagementScreen()),
          _buildMenuItem(context, 'إدارة مبيعات المناديب', Icons.delivery_dining, Colors.orange, const RepresentativeSalesScreen()),
          _buildMenuItem(context, 'تسجيل العملاء والمناطق', Icons.people, Colors.blue, const CustomerRegionsScreen()),
          _buildMenuItem(context, 'مراجعة حسابات العملاء', Icons.account_balance_wallet, Colors.purple, const CustomerAccountsScreen()),
          _buildMenuItem(context, 'الفواتير والجرد', Icons.receipt, Colors.teal, const InvoicesInventoryScreen()),
          _buildMenuItem(context, 'إدارة المخزن', Icons.store, Colors.brown, const InventoryManagementScreen()),
          _buildMenuItem(context, 'إدارة الحسابات والمدفوعات', Icons.payment, Colors.red, const PaymentsManagementScreen()),
          _buildMenuItem(context, 'التقارير والتحليل', Icons.bar_chart, Colors.indigo, const ReportsAnalysisScreen()),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon, Color color, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        color: color.withOpacity(0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// إدارة المبيعات
class SalesManagementScreen extends StatelessWidget {
  const SalesManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إدارة المبيعات')),
      body: const Center(child: Text('شاشة إدارة المبيعات - تسجيل بيع / فواتير / بيع آجل')),
    );
  }
}

// إدارة مبيعات المناديب
class RepresentativeSalesScreen extends StatelessWidget {
  const RepresentativeSalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إدارة مبيعات المناديب')),
      body: const Center(child: Text('شاشة إدارة مبيعات المناديب - جرد السيارة / تحديث المخزون')),
    );
  }
}

// تسجيل العملاء والمناطق
class CustomerRegionsScreen extends StatelessWidget {
  const CustomerRegionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تسجيل العملاء والمناطق')),
      body: const Center(child: Text('شاشة تسجيل العملاء والمناطق')),
    );
  }
}

// مراجعة حسابات العملاء
class CustomerAccountsScreen extends StatelessWidget {
  const CustomerAccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مراجعة حسابات العملاء')),
      body: const Center(child: Text('شاشة مراجعة حسابات العملاء - كشف حساب')),
    );
  }
}

// الفواتير والجرد
class InvoicesInventoryScreen extends StatelessWidget {
  const InvoicesInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الفواتير والجرد')),
      body: const Center(child: Text('شاشة الفواتير والجرد - بحث / عرض تفاصيل / تحديث الجرد')),
    );
  }
}

// إدارة المخزن
class InventoryManagementScreen extends StatelessWidget {
  const InventoryManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إدارة المخزن')),
      body: const Center(child: Text('شاشة إدارة المخزن - المنتجات / تحويل المخزون')),
    );
  }
}

// إدارة الحسابات والمدفوعات
class PaymentsManagementScreen extends StatelessWidget {
  const PaymentsManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إدارة الحسابات والمدفوعات')),
      body: const Center(child: Text('شاشة إدارة الحسابات والمدفوعات - تسجيل الدفع / المصروفات')),
    );
  }
}

// التقارير والتحليل
class ReportsAnalysisScreen extends StatelessWidget {
  const ReportsAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التقارير والتحليل')),
      body: const Center(child: Text('شاشة التقارير والتحليل - رسوم بيانية / تقارير مبيعات')),
    );
  }
}
