import QtQuick 2
import QtQuick.Controls 2
import QtQuick.Window 2
import QtQuick.Layouts 2

ColumnLayout
{
  property int margin: 10
  property int iconSize: 60
  spacing: this.margin

  Layout.alignment: Qt.AlignTop
  Layout.minimumWidth: this.iconSize + 2*(this.margin)
  Layout.topMargin: this.margin
  Layout.bottomMargin: this.margin

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
}
