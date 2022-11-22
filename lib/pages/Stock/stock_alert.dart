import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mobile_umkm/widget/stock_alert_item.dart';
import 'package:mobile_umkm/widget/stock_expired_item.dart';

class StockAlertExpired extends StatefulWidget {
  const StockAlertExpired({Key? key}) : super(key: key);

  @override
  State<StockAlertExpired> createState() => _StockAlertExpiredState();
}

class _StockAlertExpiredState extends State<StockAlertExpired>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    ScrollController _scrollControllerStockAlert = ScrollController();
    ScrollController _scrollControllerStockExpired = ScrollController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[850],
      ),
      body: Padding(
          padding: EdgeInsets.all(15.0),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: TabBar(
                      indicatorWeight: 3.0,
                      labelColor: Colors.red[700],
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.red[700],
                      controller: _tabController,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                          child: Text(
                            "STOCK ALERT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                          child: Text(
                            "STOCK EXPIRED",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ];
              },
              body: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      controller: _scrollControllerStockAlert,
                      children: [
                        StockAlertItem(),
                        SizedBox(height: 5),
                        StockAlertItem()
                      ],
                    ),
                    ListView(
                      controller: _scrollControllerStockAlert,
                      children: [
                        StockExpiredItem(),
                        SizedBox(height: 5),
                        StockExpiredItem()
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}


              // SizedBox(height: 10),
 