import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightDetailsWidget extends StatelessWidget {
  const RightDetailsWidget({super.key});

  static const _olive = Color(0xFF6B6648);

  @override
  Widget build(BuildContext context) {
    final headingStyle = GoogleFonts.chivoMono(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
      height: 1.02,
    );

    final subtitleStyle = GoogleFonts.chivoMono(
      fontSize: 12,
      color: Colors.black,
      // letterSpacing: 0.6,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 680),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: List.generate(
                    5,
                    (i) => i == 4
                        ? Icon(
                            Icons.star_half,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          )
                        : Icon(
                            Icons.star,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '152 Reviews',
                  style: subtitleStyle.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'NeuDecor',
              style: GoogleFonts.chivoMono(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 6),
            Text('Asymmetric Mirror', style: headingStyle),
            const SizedBox(height: 6),
            Text(
              'Pure wood',
              style: GoogleFonts.chivoMono(
                fontSize: 14,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Unconventional. Refined. Unforgettable. The NeuDecor Asymmetrical Mirror by LoremIpsum turns imperfection into art—crafted by hand, designed to command attention, and destined to become the focal point of every room.',
              style: GoogleFonts.chivoMono(
                fontSize: 13,
                color: Theme.of(context).primaryColor,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 18),
            const Divider(height: 1, color: Color(0xFFE6E2DC)),
            const SizedBox(height: 12),

            // price row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '₹ 2,000',
                  style: GoogleFonts.chivoMono(
                    decoration: TextDecoration.lineThrough,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '₹ 2,000',
                  style: GoogleFonts.chivoMono(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: _olive,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Save upto 20%',
                    style: GoogleFonts.chivoMono(color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Benefits',
                  style: subtitleStyle.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                  ),
                ),
                // Spacer(),
                Icon(
                  Icons.remove_circle_outline,
                  size: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Benefits list
            Column(
              children: [
                _BenefitTile(
                  title: 'ARTISANAL MASTERY',
                  subtitle:
                      'Every curve is hand-crafted by seasoned artisans, where precision meets poetry.',
                  icon: Icons.handyman_outlined,
                ),
                _BenefitTile(
                  title: 'SCULPTED PROPORTIONS',
                  subtitle:
                      'Designed with generous dimensions to command presence yet blend with ease.',
                  icon: Icons.straighten,
                ),
                _BenefitTile(
                  title: 'FLUID FORM',
                  subtitle:
                      'An asymmetric silhouette that celebrates movement, individuality, and modern grace.',
                  icon: Icons.filter_vintage,
                ),
                _BenefitTile(
                  title: 'PRISTINE REFLECTION',
                  subtitle:
                      'High-definition clarity that captures light—and your space—in its truest form.',
                  icon: Icons.brightness_7_outlined,
                ),
                _BenefitTile(
                  title: 'SEAMLESS ELEGANCE',
                  subtitle:
                      'Thoughtfully designed for effortless installation and enduring refinement.',
                  icon: Icons.check_circle_outline,
                ),
              ],
            ),

            const SizedBox(height: 18),
            DottedLine(dashColor: Color(0xff5C4D00)),
            const SizedBox(height: 12),

            _ExpandableSection(
              title: 'Dimension & Material Details',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dimensions: 54" W x 2" D x 38" H',
                    style: GoogleFonts.chivoMono(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Mirror: High-definition, distortion-free glass with a polished edge finish.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Frame: Handcrafted with a composite wood or resin base, coated in a smooth matte lacquer.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Backing: Premium engineered wood for structural integrity and long-term stability.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Mounting: Equipped with pre-installed hooks for seamless, secure installation.',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: DottedLine(dashColor: Color(0xff5C4D00)),
            ),

            _ExpandableSection(
              title: 'Care Instructions',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '• Wipe gently with a soft, lint-free microfiber cloth.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Use a non-abrasive glass cleaner or a mild solution of water and vinegar.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Avoid direct contact with excess moisture or harsh chemicals on the frame.',
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Keep away from prolonged exposure to sunlight to maintain the finish’s natural tone.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            SizedBox(
              height: 62,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Row(
                      spacing: 6,
                      children: [
                        Container(
                          width: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          // child: const Center(
                          //   child: Icon(Icons.image_outlined),
                          // ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Asymmetric Mirror',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.chivoMono(fontSize: 12),
                                ),
                                Row(
                                  spacing: 6,
                                  children: [
                                    Text(
                                      '₹2000',
                                      style: GoogleFonts.chivoMono(
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.grey,
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      '₹1000',
                                      style: GoogleFonts.chivoMono(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(Icons.shopping_bag_outlined, size: 22),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DottedLine(dashColor: Color(0xff5C4D00)),
            ),

            Text(
              'Offers',
              style: GoogleFonts.chivoMono(
                fontWeight: FontWeight.w600,
                color: _olive,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              children: const [
                _BulletLine(
                  text:
                      'Horem ipsum dolor sit amet, consectetur adipiscing elit.',
                ),
                Divider(color: Color(0xFFE6E2DC)),
                _BulletLine(
                  text:
                      'Horem ipsum dolor sit amet, consectetur adipiscing elit.',
                ),
                Divider(color: Color(0xFFE6E2DC)),
                _BulletLine(
                  text:
                      'Horem ipsum dolor sit amet, consectetur adipiscing elit.',
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DottedLine(dashColor: Color(0xff5C4D00)),
            ),

            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.local_shipping_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 35,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Free Shipping & COD Available',
                        maxLines: 2,
                        style: GoogleFonts.chivoMono(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(color: const Color(0xFFE6E2DC)),
                Row(
                  children: [
                    Icon(
                      Icons.delivery_dining_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 35,
                    ),
                    SizedBox(width: 8),

                    Expanded(
                      child: Text(
                        'Delivery within 3-5 days',
                        maxLines: 2,
                        style: GoogleFonts.chivoMono(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 18),
            // payment icons + pincode entry
            Divider(color: const Color(0xFFE6E2DC)),
            const SizedBox(height: 12),
            Row(
              children: [
                // Expanded(
                //   child: Row(
                //     children: const [
                //       FlutterLogo(size: 24),
                //       SizedBox(width: 8),
                //       Text('Mastercard'),
                //       SizedBox(width: 12),
                //       Text('UPI'),
                //       SizedBox(width: 12),
                //       Text('VISA'),
                //     ],
                //   ),
                // ),
                Expanded(
                  child: Text(
                    'Check for delivery',
                    maxLines: 2,
                    style: GoogleFonts.chivoMono(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 210,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      hintText: 'Enter pincode',
                      suffixIcon: const Icon(Icons.arrow_forward_ios, size: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFE1DDD8)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _BulletLine extends StatelessWidget {
  final String text;
  const _BulletLine({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.airplane_ticket, size: 22, color: Colors.grey[600]!),
        Expanded(child: Text(text, style: GoogleFonts.chivoMono(fontSize: 13))),
        Icon(Icons.copy_sharp, size: 18, color: Colors.grey[600]!),
      ],
    );
  }
}

class _BenefitTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const _BenefitTile({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: const Color(0xFFF0ECE6),
              child: Icon(icon, size: 20, color: const Color(0xFF8F887E)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.chivoMono(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.chivoMono(
                      fontSize: 14,
                      height: 1.35,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExpandableSection extends StatelessWidget {
  final String title;
  final Widget content;
  const _ExpandableSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                style: GoogleFonts.chivoMono(
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                ),
              ),
            ),

            Icon(
              Icons.remove_circle_outline,
              size: 22,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
        const SizedBox(height: 8),
        content,
      ],
    );
  }
}
