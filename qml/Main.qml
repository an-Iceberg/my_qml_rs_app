import QtQuick 2
import QtQuick.Controls 2
import QtQuick.Window 2
import QtQuick.Layouts 2

// This must match the uri and version
// specified in the qml_module in the build.rs script.
import my_qml_rs_app 1

ApplicationWindow
{
  id: root

  height: 480
  // What is qsTr: https://doc.qt.io/archives/qt-5.15/qtquick-internationalization.html
  title: qsTr("Hello World")
  visible: true
  width: 640
  color: palette.window
  topPadding: 10
  leftPadding: 10
  bottomPadding: 10
  rightPadding: 10

  readonly property MyObject bridge: MyObject
  {
    number: 1
    string: qsTr("My String with my number: %1").arg(number)
  }

  ColumnLayout
  {
    width: parent.width
    spacing: 10

    Label
    {
      text: qsTr("Number: %1").arg(root.bridge.number)
      color: palette.text
    }

    Label
    {
      text: qsTr("String: %1").arg(root.bridge.string)
      color: palette.text
    }

    Button
    {
      text: qsTr("Increment Number")

      onClicked: root.bridge.incrementNumber()
    }

    Button
    {
      text: qsTr("Say Hi!")

      onClicked: root.bridge.sayHi(root.bridge.string, root.bridge.number)
    }

    Button
    {
      text: qsTr("Quit")

      onClicked: Qt.quit()
    }

    TextField
    {
      text: "hello"
      color: palette.text
    }

    RowLayout
    {
      Text { text: "IntField:"; color: palette.text }
      IntField {}
    }

    RowLayout
    {
      Text { text: "FloatField:"; color: palette.text }
      FloatField {}
    }

    RowLayout
    {
      Text { text: "DatePicker:"; color: palette.text }
      DatePicker {}
    }
  }
}
