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
  // topPadding: 10
  // leftPadding: 10
  // bottomPadding: 10
  // rightPadding: 10

  readonly property MyObject bridge: MyObject
  {
    number: 1
    string: qsTr("My String with my number: %1").arg(number)
  }

  // FIX: this overshadows the content
  // menuBar: MenuBar
  // {
  //   Menu
  //   {
  //     title: qsTr("&File")
  //     Action { text: qsTr("&New...") }
  //     Action { text: qsTr("&Open...") }
  //     Action { text: qsTr("&Save") }
  //     Action { text: qsTr("Save &As...") }
  //     MenuSeparator { }
  //     Action { text: qsTr("&Quit") }
  //   }
  //   Menu
  //   {
  //     title: qsTr("&Edit")
  //     Action { text: qsTr("Cu&t") }
  //     Action { text: qsTr("&Copy") }
  //     Action { text: qsTr("&Paste") }
  //   }
  //   Menu
  //   {
  //     title: qsTr("&Help")
  //     Action { text: qsTr("&About") }
  //   }
  // }

  RowLayout
  {
    anchors.fill: parent

    ColumnLayout
    {
      Layout.alignment: Qt.AlignTop
      Layout.maximumWidth: 100
      Layout.topMargin: 10
      Layout.bottomMargin: 10

      // Accounts
      // TODO: extract this to its own component

      Rectangle
      {
        Layout.preferredWidth: 80
        Layout.preferredHeight: 80
        Layout.alignment: Qt.AlignHCenter
        color: "aquamarine"
        radius: 10
      }

      Rectangle
      {
        Layout.preferredWidth: 80
        Layout.preferredHeight: 80
        Layout.alignment: Qt.AlignHCenter
        color: "mediumpurple"
        radius: 10
      }

      Rectangle
      {
        Layout.preferredWidth: 80
        Layout.preferredHeight: 80
        Layout.alignment: Qt.AlignHCenter
        color: "lightsteelblue"
        radius: 10
      }

      Rectangle
      {
        Layout.preferredWidth: 80
        Layout.preferredHeight: 80
        Layout.alignment: Qt.AlignHCenter
        color: "lightskyblue"
        radius: 10
      }
    }

    // Separator
    Rectangle
    {
      Layout.fillHeight: true
      implicitWidth: 1
      color: palette.text
    }

    ColumnLayout
    {
      Layout.alignment: Qt.AlignTop
      Layout.fillWidth: true
      Layout.topMargin: 10
      Layout.bottomMargin: 10
      spacing: 10

      // Separator
      Rectangle
      {
        Layout.fillWidth: true
        implicitHeight: 1
        color: palette.text
      }

      Frame
      {
        Text { text: "this is a frame"; color: palette.text }
      }

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
        Text { text: "Positive Int:"; color: palette.text }
        TextField
        {
          color: palette.text
          inputMethodHints: Qt.ImhDigitsOnly // This doesn't seem to do anything.
          validator: IntValidator { bottom: 0 }
        }
      }

      RowLayout
      {
        Text { text: "Positive Double:"; color: palette.text }
        TextField
        {
          color: palette.text
          inputMethodHints: Qt.ImhFormattedNumbersOnly // This doesn't seem to do anything.
          validator: DoubleValidator { bottom: 0; decimals: 5 }
        }
      }

      RowLayout
      {
        Text { text: "DatePicker:"; color: palette.text }
        DatePicker {}
      }
    }
  }
}
