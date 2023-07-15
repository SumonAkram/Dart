class FileUtility {
  List<String> files = [];

  void addFile(String fileName) {
    files.add(fileName);
    print('File "$fileName" added successfully.');
  }

  void removeFile(String fileName) {
    if (files.contains(fileName)) {
      files.remove(fileName);
      print('File "$fileName" removed successfully.');
    } else {
      print('File "$fileName" does not exist.');
    }
  }

  void displayFiles() {
    print('----- Files -----');
    for (String file in files) {
      print(file);
    }
    print('-----------------');
  }
}

void main() {
  FileUtility fileUtility = FileUtility();

  fileUtility.addFile('document.txt');
  fileUtility.addFile('image.jpg');
  fileUtility.addFile('video.mp4');

  fileUtility.displayFiles();

  fileUtility.removeFile('image.jpg');
  fileUtility.removeFile('audio.wav');
}
