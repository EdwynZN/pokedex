
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poke_app/assets/pokemon_icons.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/presentation/model/detail_base_info.dart';
import 'package:poke_app/presentation/widget/page_indicator.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:provider/provider.dart';

class DetailPokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final List<String> sprites;
  final String image;
  final DetailBaseInfo? detailBaseInfo;

  const DetailPokemonCard({
    // ignore: unused_element
    super.key,
    this.sprites = const [],
    required this.id,
    required this.name,
    required this.image,
    required this.detailBaseInfo,
  });

  DetailPokemonCard.fromPokemonShallow({
    // ignore: unused_element
    super.key,
    required PokemonShallow pokemon,
  })  : id = pokemon.id,
        name = pokemon.name,
        image = pokemon.image,
        sprites = const [],
        detailBaseInfo = null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.primaryContainer;

    final asset = Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(
          width: 140.0,
          height: 140.0,
        ),
        child: Ink(
          child: InkWell(
            customBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            highlightColor: Colors.transparent,
            splashColor: color.withOpacity(0.12),
            onTap: sprites.isEmpty
                ? null
                : () async {
                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      elevation: 4.0,
                      enableDrag: true,
                      constraints: const BoxConstraints.tightFor(height: 400.0),
                      showDragHandle: true,
                      builder: (_) => _ImageGallerySheet(images: sprites),
                    );
                  },
            child: Hero(
              transitionOnUserGestures: true,
              tag: id,
              child: SvgPicture.network(
                image,
                semanticsLabel: name,
                height: 140.0,
                width: 120.0,
                allowDrawingOutsideViewBox: false,
                fit: BoxFit.contain,
                alignment: Alignment.center,
                placeholderBuilder: (BuildContext context) => const Image(
                  image: AssetImage(PokemonIcons.pokeball),
                  height: 140.0,
                  width: 120.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final infoCard = detailBaseInfo == null
        ? SizedBox.fromSize(
            size: const Size.fromHeight(120),
          )
        : Card(
            elevation: 1.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _RowTable(
                    title: 'Height',
                    detail: '${detailBaseInfo!.pokemonHeight * 10} cm',
                  ),
                  const Divider(height: 16.0),
                  _RowTable(
                    title: 'Weight',
                    detail: '${detailBaseInfo!.pokemonWeight / 10} kg',
                  ),
                  const Divider(height: 16.0),
                  _RowTable(
                    title: 'Base XP',
                    detail: '${detailBaseInfo!.pokemonHeight * 10} xp',
                  ),
                ],
              ),
            ),
          );

    final Widget info = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '#$id',
          style: const TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w600,
            height: 0.0,
          ),
          maxLines: 1,
        ),
        gap8,
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 250),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 650),
            switchInCurve: const Cubic(0.3, 0.0, 0.8, 0.15),
            layoutBuilder: (Widget? currentChild, List<Widget> previousChildren) {
              return Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  ...previousChildren,
                  if (currentChild != null) currentChild,
                ],
              );
            },
            child: infoCard,
          ),
        ),
      ],
    );

    final Widget child = DefaultTextStyle.merge(
      style: TextStyle(color: theme.colorScheme.onSecondaryContainer),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            asset,
            gap12,
            Expanded(child: info),
          ],
        ),
      ),
    );

    return SliverToBoxAdapter(
      child: Card(
        elevation: 0.0,
        color: theme.colorScheme.primaryContainer.withOpacity(0.36),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.5,
          ),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: child,
      ),
    );
  }
}

class _RowTable extends StatelessWidget {
  final String title;
  final String detail;
  // ignore: unused_element
  const _RowTable({super.key, required this.detail, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            height: 0.0,
          ),
          maxLines: 1,
        ),
        const Spacer(),
        Text(
          detail,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            height: 0.0,
          ),
          maxLines: 1,
        ),
      ],
    );
  }
}

class _ImageGallerySheet extends StatelessWidget {
  final List<String> images;

  _ImageGallerySheet({
    // ignore: unused_element
    super.key,
    required this.images,
  }) : assert(images.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final manager = context.watch<CacheManager>();
    return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 1,
      initialChildSize: 1,
      builder: (context, scrollController) {
        return HookBuilder(
          builder: (context) {
            final controller = usePageController(keys: const []);
            return SafeArea(
              top: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (context, index) {
                        final image = images[index];
                        return SizedBox.expand(
                          child: InteractiveViewer(
                            panEnabled: true,
                            minScale: 1,
                            maxScale: 2.5,
                            child: CachedNetworkImage(
                              memCacheHeight: 150,
                              height: 150,
                              width: 150,
                              memCacheWidth: 150,
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                              cacheManager: manager,
                              imageUrl: image,
                              placeholder: (_, __) => const Center(
                                child: Image(
                                  image: AssetImage(PokemonIcons.pokeball),
                                  height: 32.0,
                                  width: 32.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ),
                  gap8,
                  PageIndicator(controller: controller, count: images.length),
                  gap8,
                ],
              ),
            );
          },
        );
      },
    );
  }
}
