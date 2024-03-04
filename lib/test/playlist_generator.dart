import 'dart:math';

import 'package:simple_library/test/video_generator.dart';

import '../models/playlist.dart';

List generatePlaylists() => List.generate(
      20,
      (index) => {
        'id': index + 1,
        'title': 'Live Video Calls',
        'splash':
            'https://s3-alpha-sig.figma.com/img/ed48/0863/b84968337933c5ff6f319d23afc87ab1?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p7ckrOn2nXXKLiK6Mj8Zj0gKsQ4t0MnYvWLBVfPkYA1TXiSWX5ahK0MVs1NXuOisabdlHGq2lqYQXTv8Zw4BxEayT5r1Zz3~3vuGknQBkTaRhpK9vB7VFH5SPD2AFbz-BJUrYBBoYaqoXGPncF~4KgcAVHYfqc48Nb78fIgnBt6QhKFICH82QKEusXgTGAWC0bKisWCL5Iueg-YeyO020jOc35enQpWJhTFNR2JgiT14SBfrdfBiVLL8QPod42VvLPHvyoWpgqQPYd1nuBsaOm4vxKnVFy4gfnaTNmP-29kiocbC7QKrhUUu~9dAMvbKsjIfpJ6SIrxegm77Ufat8A__',
        'video_count': Random().nextInt(10000),
        'view_count': Random().nextInt(10000),
        'total_duration_in_seconds': Random().nextInt(86400),
        'visibility': PlaylistVisibility.values[Random().nextInt(PlaylistVisibility.values.length)],
        'videos': generateVideos(),
      },
    );
