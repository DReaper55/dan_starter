/*

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomScaffold extends HookConsumerWidget {
   const CustomScaffold({super.key,
        required this.child,
        this.titleStyle,
        this.padding,
        this.showAccountSwitcher = false,
        this.floatingActionButton,
        this.showAppBarDivider = false,
        this.showLeadingBtn = true,
        this.title,
        this.scaffoldKey,
        this.centerTile = false,
        this.actions});

  final Widget child;
  final String? title;
  final FloatingActionButton? floatingActionButton;
  final TextStyle? titleStyle;
  final bool? centerTile;
  final EdgeInsets? padding;
  final List<Widget>? actions;
  final bool showLeadingBtn;
  final bool showAccountSwitcher;
  final bool showAppBarDivider;

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // .............................................
    // Use account notifier to get account details
    // .............................................

    // final accountNotifier = ref.watch(accountNotifierProvider);

    */
/*useEffect(() {
      if(accountNotifier.user.value.fullName == null){
        accountNotifier.setData();
      }

      return;
    }, []);*//*


    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      appBar: AppBar(
        leading: (){
          */
/*if(showAccountSwitcher){
            final user = accountNotifier.user.value;

            return Padding(
              padding: const EdgeInsets.only(left: Dimensions.medium, top: 4),
              child: CircleAvatar(child: CustomNetworkImage(src: user.imageUrl, name: user.fullName)),
            );
          }

          if(!showLeadingBtn) {
            return const SizedBox();
          }*//*


          return InkWell(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.arrow_back),
              ));
        }(),
        leadingWidth: (){
          if(!showLeadingBtn && !showAccountSwitcher) {
            return 0.0;
          }

          if(showAccountSwitcher){
            return 60.0;
          }

          return 40.0;
        }(),
        title: (){
          */
/*if(showAccountSwitcher){
            String name = '';
            // if(accountNotifier.user.value.fullName != null){
            //   name = accountNotifier.user.value.fullName!;
            // }

            return ListTile(
              title: Text(name.greetName(), style: Styles.w600(size: 16),),
              // subtitle: Text(accountNotifier.user.value.fullName),
            );
          }*//*


          return Text(
            title ?? AppStrings.name,
            style: titleStyle ??
                Styles.w600(
                  color: PickBinColors.black,
                ),
          );
        }(),
        actions: () {
          List<Widget> mActions = [];
          List<Widget> fixedActions = [
            // .............................................
            // Use the badges package to create a
            // notification counter
            // .............................................

                */
/*if(showAccountSwitcher)
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Routes.notification),
                    child: badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -6, end: -4),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: PickBinColors.red,
                      ),
                      badgeAnimation: const badges.BadgeAnimation.slide(),
                      badgeContent: Text(
                        ref.watch(notificationCounterProvider).toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: const Icon(Icons.notifications_none_outlined, size: 30,),
                    ),
                  ),*//*


            // if(showAccountSwitcher)
            // const Spacing.mediumWidth()
              ];

          if (actions != null) {
            mActions.addAll(actions!);
          }


          mActions.addAll(fixedActions);

          return mActions;
        }(),
        centerTitle: centerTile ?? true,
      ),
      floatingActionButton: floatingActionButton,
      body: Column(
        children: [
          if(showAppBarDivider)
            Container(height: 1.0, width: Helpers.width(context), color: Colors.grey.shade300,),

          const Spacing.mediumHeight(),

          Expanded(
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: Dimensions.medium),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
*/
