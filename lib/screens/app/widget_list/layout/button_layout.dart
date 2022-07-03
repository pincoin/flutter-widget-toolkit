import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Layout'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Fit Size'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: const Text('Fit Size (start)'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: const Text('Fit Size (end)'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      child: const Text('CrossAxisAlignment.stretch'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('SizedBox.width: double.infinity'),
                    onPressed: () {},
                  ),
                ),
              ),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      child: const Text('Intrinsic Button'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text('Long Button'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text('Very Long Button'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('One Expanded'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: ElevatedButton(
                        child: const Text('Two Evenly'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('One Expanded'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24, // height constraints required
                    child: VerticalDivider(
                      thickness: 1,
                      width: 24,
                      color: Colors.black26,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: ElevatedButton(
                        child: const Text('Two Evenly'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('One'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('Two'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: ElevatedButton(
                        child: const Text('Three'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('One'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('Two'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        child: const Text('Three'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: ElevatedButton(
                        child: const Text('Four'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                        child: ElevatedButton(
                          child: const Text('Intrinsic'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: ElevatedButton(
                          child: const Text('Row Center'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                        child: ElevatedButton(
                          child: const Text('Expanded'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                        child: ElevatedButton(
                          child: const Text('Intrinsic Width'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24, // height constraints required
                      child: VerticalDivider(
                        thickness: 1,
                        width: 24,
                        color: Colors.black26,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                        child: ElevatedButton(
                          child: const Text('Expanded'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: const Text('Space'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text('Between'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: const Text('Space'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text('Around'),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text('Space'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text('Evenly'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
