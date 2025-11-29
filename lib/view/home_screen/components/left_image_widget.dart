import 'package:flutter/material.dart';
import 'package:maanicare_test/services/utils.dart';

class LeftImageWidget extends StatelessWidget {
  const LeftImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(Icons.keyboard_arrow_up_outlined, color: Colors.grey),
              const SizedBox(height: 8),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(Utilities.isWeb(context) ? 4 : 3, (i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F4F1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFE9E6E1)),
                      ),
                      child: const Center(
                        child: Icon(Icons.image_outlined, size: 20),
                      ),
                    ),
                  );
                }),
              ),
              // const Spacer(),
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.grey),
            ],
          ),
          const SizedBox(width: 24),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2EFEA),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE4E0DB)),
                ),
                child: Center(
                  child: Text(
                    'Product Image',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
