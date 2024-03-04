import 'dart:math';

import 'package:simple_library/models/video.dart';

List generateVideos() => List.generate(
      20,
      (index) => {
        'id': index + 1,
        'thumbnail': _thumbnails[index % _thumbnails.length],
        'favorite_count': Random().nextInt(10000000),
        'created_at': (DateTime.now()..add(Duration(minutes: Random().nextInt(60)))).millisecondsSinceEpoch,
        'hashtags_plain': _hashtags[index % _hashtags.length],
        'landmark': _getRandomLandmark(),
      },
    );

final _thumbnails = [
  'https://s3-alpha-sig.figma.com/img/1388/bd35/b10563ccc3d843bb6c7dceb44b1e24cc?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dvtq~zuoB2A8cMhhtRKd8sU7YQW02lxPUxQRVl5fi9-a8tA8VZ2shS75skgP~y7VghVypaX9RsZI87cXsLNknNjZSuawv4xq0PCEpb5bgtuNq3sJfa8~Yq-kBtgxCKBN984fP2y4JF1YE-Ev1OfV9ckpTk8i7aKrXkRd4sH5ruHMKPr4J20DDgI-uyK0LHY0LHsZsPclnSLHZvVENdawVAaQjVsnVR-Vk74VpD9Ue6hFYhTa6toCwrKsOyXVvbcApSgJ1kaHlQMnNtq2Fw0BG-72u7lgxc8XvChvkoxfUINALbNYT6T75~BJMW8XHLDNfElG6eQ~C3WuLLnDujeXUw__',
  'https://s3-alpha-sig.figma.com/img/4c06/55c0/ce3fd42611fa5472dcc4aed2dfa5246c?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=C03YYKSXwwOoBSIttBYh7liYeKqF0M4pKLIrTzsdy5KVSXDtu9L~1vYUs2dUT36pEYBr~1YXbDF4myvRP8xAsmvT8Vmmj9eey2CareC9Yo6U7XRqhlnCI8pnOFwGLooMGvGT3n3b4xT1VAFiVCaFW22m3BDWuA0Dyxo6xVHToQGKFiETq26gOGqzUD1mkNY2NuKSvEe1n9aiTYMjnXWwwJVfmTdjS6mVJYHZxDNSVP37mn20EYLexjplHH9uSk40~un6NV-jbzCEO~doVGOQK5n6W~Ddt1VAvIQGImOD3Mn0NcSlkNp97oAK-EPlygvlfpufDVhGh7eziaHUHY9zjA__',
  'https://s3-alpha-sig.figma.com/img/9665/d580/102d5cc23cac2626abe449262886fdad?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N01G356OxDljCvI0ACmBc2LLP9K3vZIlsfsM6WXfnP4Bm4HlrbATO~vrvx3XkdxEX0sMpghipYuglRW9mKOvaCtdg8wuWEhocFSvsvl1zlFchfPFCf7oNJF0bps6uwC9O~1MWmr9VGxDo1RnL0ddVV51f5Hxy39PGLlggVpC7SlOp~I~l3InzLa3BQhSEc3-WUVTUq1jNJ6fAG5wiUFl4ALHStlxlz2k-Sddf5Jewgdbum6JFlBfQpc3D9s39lqJlT8-ckgXrdvvOGpbL8FKZljDSD4qJctZ3hgr4KAZ6IthO~13ORLmDNXUCghaqbez6kJZryaEeeQeRi09sybV0A__',
  'https://s3-alpha-sig.figma.com/img/6cc3/7e52/8148eaed810d35eed00acb6508ad5a82?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BkPP6wWurIzUOq-5qz8Sli42x5puoukZ8YiTkdjVqxvi6P7I-qQHcLrK8lxhTI~V97JRC5upm9V7cKQt8J2LdYmworNahSsgmjWP4XH0dZMSmCJCCCBRF7mmt-NX8gP1o-XyWucQ7K2Jgu47sa2RGVt5OptjQ2muZkk3Xm89HpFsKcGETos9HYu443LYlNnVlhz6FtcUIdIICU9RrQQeCuorN-0ODU1k5WT-gs2YDHUcFzuvu~MwzPmnv9FIdOZishFh7SVQ0RykS1ZtSQRq0ExWzMFOqMhkXAfMI41LGGoyjWXiLFRRiclyx6Byr8nOdteJj4ljH1qNeQ06K0SmfA__',
];

final _hashtags = [
  '#tecnologia #datos #informatica #aplicaciones #movil',
  '#programacion #artificial #web #ciencia #codigo',
  '#desarrollo #inteligencia #computacion #movil #web',
  '#ciencia #codigo #tecnologia #informatica #aplicaciones',
];

String? _getRandomLandmark() {
  VideoLandmark? landmark;
  final randomLandmarkIndex = Random().nextInt(11);
  if (randomLandmarkIndex % 2 == 0) {
    landmark = VideoLandmark.mostLiked;
  } else if (randomLandmarkIndex % 3 == 0) {
    landmark = VideoLandmark.mostViewed;
  }
  return landmark?.id;
}
