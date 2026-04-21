import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts

Flickable
{
  Layout.alignment: Qt.AlignTop
  Layout.preferredHeight: parent.height
  Layout.minimumWidth: content.iconSize + 2*(content.margin)

  topMargin: content.margin
  bottomMargin: content.margin
  leftMargin: content.margin
  rightMargin: content.margin

  contentHeight: content.height
  contentWidth: -1 // This somehow disables horizontal flicking 🤷‍♀️

  ScrollBar.vertical: ScrollBar
  {
    parent: parent
    interactive: true
    anchors
    {
      top: parent.top
      bottom: parent.bottom
      right: parent.right
    }
  }

  ColumnLayout
  {
    id: content

    property int margin: 10
    property int iconSize: 60
    spacing: this.margin

    Account
    {
      size: parent.iconSize
      color: "aquamarine"
    }

    Account
    {
      size: parent.iconSize
      color: "mediumpurple"
    }

    Account
    {
      size: parent.iconSize
      color: "dodgerblue"
    }

    Account
    {
      size: parent.iconSize
      color: "lightskyblue"
    }

    Account
    {
      size: parent.iconSize
      color: "mediumorchid"
    }

    Account
    {
      size: parent.iconSize
      color: "mediumvioletred"
    }

    Account
    {
      size: parent.iconSize
      color: "orchid"
    }

    Account
    {
      size: parent.iconSize
      color: "palevioletred"
    }

    Account
    {
      size: parent.iconSize
      color: "salmon"
    }
  }
}
