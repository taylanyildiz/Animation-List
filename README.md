# animation_list

Animation ListView.builder ScrollController with AnimatedBuilder.

```dart
AnimatedBuilder(
animation: _scrollController,
builder: (context, child) {
    final itemPositionOffset = index * 100;
    final difference =
        _scrollController.offset - itemPositionOffset;
    final percent = 1 - (difference / 100);
    double opacity = percent;
    double scale = percent;
    if (opacity > 1.0) opacity = 1.0;
    if (opacity < 0.0) opacity = 0.0;
    if (percent > 1) scale = 1.0;
    return Align(
    heightFactor: .5,
    child: Opacity(
        opacity: opacity,
        child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale, 1.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Card(
                shadowColor: Colors.red,
                elevation: 5.0,
                child: Image.asset(
                moviesList[index].imgUrl!,
                fit: BoxFit.fill,
                ),
            ),
            ),
        ),
        ),
    ),
    );
},
);
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
