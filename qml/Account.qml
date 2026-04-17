import QtQuick 2
import QtQuick.Controls 2
import QtQuick.Window 2
import QtQuick.Layouts 2

Rectangle
{
  property int size
  property color accountColor

  Layout.preferredWidth: size
  Layout.preferredHeight: size
  Layout.alignment: Qt.AlignHCenter
  color: accountColor
  radius: 10
}
