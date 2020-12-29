import 'package:flutter/material.dart';

const _CELL_PADDING = 10.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 80,
    );
  }
}

class _SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(color: Colors.blue),
            ),
          ),
          Container(width: _CELL_PADDING),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(color: Colors.yellow),
                  ),
                  Expanded(
                    child: Container(color: Colors.purple),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AdjustableBlock extends StatelessWidget {
  final double widthFactor;
  _AdjustableBlock(this.widthFactor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widthFactor,
              child: Container(color: Colors.red, height: 20),
            ),
          )
        ],
      ),
    );
  }
}

class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        color: Colors.grey[300],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            _FirstRow(),
            _SecondRow(),
            _ThirdRow(),
            _AdjustableBlock(1.0),
            _AdjustableBlock(0.75),
            _AdjustableBlock(0.5),
          ],
        )
      ),
    );
  }
}
