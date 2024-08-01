import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/common/helpers/is_dark_mode.dart';
import 'package:flutter_musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:flutter_musicplayer/core/configs/assets/app_vectors.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _homeCard(),
            _tabs()
          ],
        ),
      ),
    );
  }

  Widget _homeCard() {
    return Center(
      child: SizedBox(
        height: 118,
        width: 334,
        child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Release',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11
                        ),
                      ),
                      Text(
                        'Ok Computer',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),
                      ),
                      Text(
                        'Album • Radiohead',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  AppVectors.logoSquare
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabs() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      indicatorColor: AppColors.primary,
      dividerColor: Colors.transparent,
      tabs: const [
        Text(
          'News',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        Text(
          'Videos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        Text(
          'Artist',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        Text(
          'Podcast',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        )
      ],
    );
  }
}