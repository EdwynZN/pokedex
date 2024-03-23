import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:poke_app/utils/theme.dart';

class SearchAppbar extends HookWidget implements PreferredSizeWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController textController;
  final List<Widget>? actions;
  final Widget? title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Brightness? brightness;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final TextTheme? textTheme;
  final bool forceElevated;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? toolbarHeight;
  final double? leadingWidth;
  final bool? backwardsCompatibility;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final bool primary;

  SearchAppbar({
    super.key,
    required this.textController,
    this.onChanged,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.forceElevated = false,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.backwardsCompatibility,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.primary = true,
  })  : assert(elevation == null || elevation >= 0.0),
        preferredSize = Size.fromHeight((toolbarHeight ?? kToolbarHeight) +
            (bottom?.preferredSize.height ?? 0));

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final state = useState(false);
    final focusText = useFocusNode();
    final controller = useAnimationController(duration: kTabScrollDuration);
    useValueChanged<bool, void>(
      state.value,
      (oldValue, oldResult) {
        if (state.value) {
          controller.forward();
        } else {
          controller.animateBack(0.0);
        }
      },
    );
    useEffect(() {
      LocalHistoryEntry? historyEntry;
      void handleHistoryEntryRemoved() {
        historyEntry = null;
        if (!context.mounted) return;
        state.value = false;
        textController.clear();
      }

      void ensureHistoryEntry() {
        if (historyEntry == null) {
          final ModalRoute<dynamic>? route = ModalRoute.of(context);
          if (route != null) {
            historyEntry =
                LocalHistoryEntry(onRemove: handleHistoryEntryRemoved);
            route.addLocalHistoryEntry(historyEntry!);
            FocusScope.of(context).unfocus();
          }
        }
      }

      void listenTextController() {
        if (textController.text.isEmpty) {
          textController.removeListener(listenTextController);
          historyEntry?.remove();
          historyEntry = null;
        }
      }

      void stateChanged() {
        if (state.value) ensureHistoryEntry();
      }

      state.addListener(stateChanged);

      return () {
        historyEntry?.remove();
        state.removeListener(stateChanged);
        textController.removeListener(listenTextController);
      };
    }, [textController, state, controller]);

    final theme = Theme.of(context);
    final themeFlex = useRef(ThemeFlex(FlexScheme.bigStone));

    return RepaintBoundary(
      child: Stack(
        children: [
          AppBar(
            leading: leading,
            automaticallyImplyLeading: automaticallyImplyLeading,
            title: title,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => state.value = true,
                tooltip: MaterialLocalizations.of(context).searchFieldLabel,
              ),
              ...?actions,
            ],
            flexibleSpace: flexibleSpace,
            bottom: bottom,
            elevation: elevation,
            shadowColor: shadowColor,
            shape: shape,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            iconTheme: iconTheme,
            actionsIconTheme: actionsIconTheme,
            primary: primary,
            centerTitle: centerTitle,
            excludeHeaderSemantics: excludeHeaderSemantics,
            titleSpacing: titleSpacing,
            toolbarOpacity: toolbarOpacity,
            bottomOpacity: bottomOpacity,
            toolbarHeight: toolbarHeight,
            leadingWidth: leadingWidth,
            toolbarTextStyle: toolbarTextStyle,
            titleTextStyle: titleTextStyle,
            systemOverlayStyle: systemOverlayStyle,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: AnimatedBuilder(
              animation: controller,
              child: Theme(
                data: theme.copyWith(
                  appBarTheme: theme.brightness == Brightness.light
                      ? themeFlex.value.light.appBarTheme
                      : themeFlex.value.dark.appBarTheme,
                ),
                child: _SearchBar(
                  onChanged: onChanged,
                  focus: focusText,
                  controller: textController,
                  bottom: bottom,
                ),
              ),
              builder: (context, child) => ClipRect(
                child: Align(
                  alignment: Alignment.bottomRight,
                  widthFactor: controller.value,
                  child:
                      controller.isDismissed ? const SizedBox.shrink() : child,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final PreferredSizeWidget? bottom;
  final TextEditingController? controller;
  final FocusNode? focus;
  final ValueChanged<String>? onChanged;

  const _SearchBar({
    // ignore: unused_element
    super.key,
    this.controller,
    this.focus,
    this.onChanged,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.primaryTextTheme.titleLarge?.copyWith(
      color: theme.appBarTheme.foregroundColor,
    );
    return AppBar(
      elevation: 0.0,
      bottom: bottom,
      scrolledUnderElevation: 0.0,
      leading: const BackButton(),
      title: TextField(
        controller: controller,
        focusNode: focus,
        style: style,
        autofocus: true,
        textInputAction: TextInputAction.search,
        onChanged: onChanged,
        cursorColor: theme.appBarTheme.foregroundColor,
        onTapOutside: (_) => focus?.unfocus(),
        decoration: InputDecoration(
          filled: false,
          hintText: 'Search',
          hintStyle: style,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            controller?.clear();
            onChanged?.call('');
          },
          tooltip: 'Clear',
        ),
      ],
    );
  }
}
