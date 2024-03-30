import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landmark_classifier/Theme/colors.dart';
import 'package:landmark_classifier/Widgets/home_card.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorSecondary,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.sp),
            child: Image.asset(
              "assets/images/eiffel.jpg",
              width: 310.w,
              height: 273.h,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              color: Color(0xff564fcc),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Eiffel Tower",
                  style: GoogleFonts.urbanist().copyWith(
                    color: Colors.white,
                    fontSize: 26.sp,
                  ),
                ),
                Text(
                  "95%",
                  style: GoogleFonts.urbanist().copyWith(
                    color: Colors.white,
                    fontSize: 26.sp,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac justo a ex facilisis finibus. Nulla tempor molestie nibh, non fermentum tellus. Phasellus vitae molestie neque. Ut facilisis sapien vitae nisi rutrum rhoncus. Pellentesque ac magna ultricies, molestie magna in, sagittis nunc. Pellentesque ullamcorper, massa nec blandit tristique, libero augue malesuada metus, non sollicitudin odio nibh vitae sem. Fusce imperdiet est id velit tincidunt ullamcorper. Mauris non eleifend augue, sed rhoncus arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse auctor quam in blandit auctor.

Suspendisse feugiat, lacus id mattis rhoncus, lectus nibh ornare nulla, nec venenatis nulla purus vitae augue. Praesent ut condimentum massa. In hac habitasse platea dictumst. Ut purus dolor, accumsan vitae tortor sed, tristique consectetur purus. Sed et dolor molestie, euismod dolor quis, rutrum odio. In semper maximus leo, sit amet ultricies orci mollis ut. Nullam dapibus lacinia lectus, quis commodo neque lacinia venenatis. Curabitur at sem enim. Phasellus auctor leo eget neque iaculis, ut rhoncus diam tempus. Nam fermentum leo vel purus sodales, vitae dictum lacus tincidunt.

Cras eu nisl non augue lobortis mattis. Nunc quis venenatis nisl. Phasellus luctus blandit erat, a eleifend velit aliquet at. Nam scelerisque diam eu libero tempus tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat justo quis erat convallis tincidunt eget vel dui. Sed eu efficitur neque. Vestibulum aliquam, ante nec aliquam condimentum, orci eros sodales odio, nec tempor urna mi in lorem. Mauris eget maximus risus, eu tempor elit. Mauris vel metus semper, imperdiet ante sit amet, molestie tellus. Pellentesque ut sapien non leo feugiat tempus id at purus. Nulla viverra, nisi vel ornare posuere, lectus mi varius dui, id ultricies velit magna non turpis. Nulla sollicitudin ornare eros, eu pellentesque risus. Integer vitae gravida neque, at congue felis. Aliquam suscipit pellentesque mattis.
''',
            style: GoogleFonts.urbanist().copyWith(
              color: Colors.white,
              fontSize: 22.sp,
            ),
          ),
        ],
      ),
    );
  }
}
