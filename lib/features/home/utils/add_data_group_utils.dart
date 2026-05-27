import '../presentation/widgets/add_data_group.dart';

class AddDataGroupUtils {
  static String getGroupText(AddDataType type) {
    switch (type) {
      case AddDataType.folder:
        return 'folder';
      case AddDataType.data:
        return 'data';
    }
  }

  static double getGroupCircleSize(AddDataSize size) {
    switch (size) {
      case AddDataSize.big:
        return 178;
      case AddDataSize.small:
        return 54;
    }
  }
}
