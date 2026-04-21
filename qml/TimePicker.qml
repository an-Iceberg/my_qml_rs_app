import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout
{
  // Hours
  ComboBox
  {
    id: hours

    editable: false
    implicitContentWidthPolicy: ComboBox.WidestText
    Layout.preferredWidth: 70
    model: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
  }

  Text { text: ":"; color: palette.text }

  // Minutes
  ComboBox
  {
    id: minutes

    // TODO: make this display all zeroes.
    editable: false
    Layout.preferredWidth: 70
    implicitContentWidthPolicy: ComboBox.WidestText
    textRole: "text"
    valueRole: "value"
    model: ListModel
    {
      ListElement { text: "00"; value: 0 }
      ListElement { text: "05"; value: 5 }
      ListElement { text: "10"; value: 10 }
      ListElement { text: "15"; value: 15 }
      ListElement { text: "20"; value: 20 }
      ListElement { text: "25"; value: 25 }
      ListElement { text: "30"; value: 30 }
      ListElement { text: "35"; value: 35 }
      ListElement { text: "40"; value: 40 }
      ListElement { text: "45"; value: 45 }
      ListElement { text: "50"; value: 50 }
      ListElement { text: "55"; value: 55 }
    }
  }
}
