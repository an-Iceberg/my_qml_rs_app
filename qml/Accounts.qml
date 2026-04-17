import QtQuick 2
import QtQuick.Controls 2
import QtQuick.Window 2
import QtQuick.Layouts 2

// ScrollView
// {
//   Layout.minimumWidth: 80
//   ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
//   ScrollBar.vertical.policy: ScrollBar.AlwaysOn
//   ScrollBar.vertical.interactive: true
// }

ColumnLayout
{
  id: accounts

  property int margin: 10
  property int iconSize: 60
  spacing: accounts.margin

  Layout.alignment: Qt.AlignTop
  // Layout.maximumWidth: 100
  Layout.minimumWidth: accounts.iconSize + 2*(accounts.margin)
  Layout.topMargin: accounts.margin
  Layout.bottomMargin: accounts.margin

  // Accounts
  // TODO: extract this to its own component

  Account
  {
    size: accounts.iconSize
    color: "aquamarine"
  }

  Account
  {
    size: accounts.iconSize
    color: "mediumpurple"
  }

  Account
  {
    size: accounts.iconSize
    color: "dodgerblue"
  }

  Account
  {
    size: accounts.iconSize
    color: "lightskyblue"
  }

  // Rectangle
  // {
  //   Layout.preferredWidth: accounts.iconSize
  //   Layout.preferredHeight: accounts.iconSize
  //   Layout.alignment: Qt.AlignHCenter
  //   color: "aquamarine"
  //   radius: 10
  // }

  // Rectangle
  // {
  //   Layout.preferredWidth: accounts.iconSize
  //   Layout.preferredHeight: accounts.iconSize
  //   Layout.alignment: Qt.AlignHCenter
  //   color: "mediumpurple"
  //   radius: 10
  // }

  // Rectangle
  // {
  //   Layout.preferredWidth: accounts.iconSize
  //   Layout.preferredHeight: accounts.iconSize
  //   Layout.alignment: Qt.AlignHCenter
  //   color: "dodgerblue"
  //   radius: 10
  // }

  // Rectangle
  // {
  //   Layout.preferredWidth: accounts.iconSize
  //   Layout.preferredHeight: accounts.iconSize
  //   Layout.alignment: Qt.AlignHCenter
  //   color: "lightskyblue"
  //   radius: 10
  // }
}
