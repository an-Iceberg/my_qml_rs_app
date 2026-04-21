import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout
{
  Layout.fillWidth: false
  Layout.preferredWidth: 1
  // TODO: this isn't mobile friendly. It's too wide.
  // Day
  ComboBox
  {
    id: day

    editable: false
    Layout.fillWidth: false
    // NOTE: these don't work
    // implicitContentWidthPolicy: ComboBox.ContentItemImplicitWidth
    // Layout.preferredWidth: ComboBox.WidestText
    Layout.preferredWidth: 70

    textRole: "key"
    valueRole: "value"
    model: ListModel
    {
      ListElement { key: "1"; value: 1 }
      ListElement { key: "2"; value: 2 }
      ListElement { key: "3"; value: 3 }
      ListElement { key: "4"; value: 4 }
      ListElement { key: "5"; value: 5 }
      ListElement { key: "6"; value: 6 }
      ListElement { key: "7"; value: 7 }
      ListElement { key: "8"; value: 8 }
      ListElement { key: "9"; value: 9 }
      ListElement { key: "10"; value: 10 }
      ListElement { key: "11"; value: 11 }
      ListElement { key: "12"; value: 12 }
      ListElement { key: "13"; value: 13 }
      ListElement { key: "14"; value: 14 }
      ListElement { key: "15"; value: 15 }
      ListElement { key: "16"; value: 16 }
      ListElement { key: "17"; value: 17 }
      ListElement { key: "18"; value: 18 }
      ListElement { key: "19"; value: 19 }
      ListElement { key: "20"; value: 20 }
      ListElement { key: "21"; value: 21 }
      ListElement { key: "22"; value: 22 }
      ListElement { key: "23"; value: 23 }
      ListElement { key: "24"; value: 24 }
      ListElement { key: "25"; value: 25 }
      ListElement { key: "26"; value: 26 }
      ListElement { key: "27"; value: 27 }
      ListElement { key: "28"; value: 28 }
      ListElement { key: "29"; value: 29 }
      ListElement { key: "30"; value: 30 }
      ListElement { key: "31"; value: 31 }
    }

    onActivated: console.log(currentText)
  }

  Text { text: "."; color: palette.text }

  // Month
  ComboBox
  {
    id: month

    editable: false
    // implicitContentWidthPolicy: ComboBox.WidestTextWhenCompleted
    // Layout.preferredWidth: ComboBox.WidestText
    Layout.preferredWidth: 100

    textRole: "key"
    valueRole: "value"
    model: ListModel
    {
      ListElement { key: "1 - Jan."; value: 1 }
      ListElement { key: "2 - Feb."; value: 2 }
      ListElement { key: "3 - Mar."; value: 3 }
      ListElement { key: "4 - Apr."; value: 4 }
      ListElement { key: "5 - May"; value: 5 }
      ListElement { key: "6 - Jun."; value: 6 }
      ListElement { key: "7 - Jul."; value: 7 }
      ListElement { key: "8 - Aug."; value: 8 }
      ListElement { key: "9 - Sep."; value: 9 }
      ListElement { key: "10 - Oct."; value: 10 }
      ListElement { key: "11 - Nov."; value: 11 }
      ListElement { key: "12 - Dec."; value: 12 }
    }

    onActivated: console.log(`currentText: ${currentText}, currentValue: ${currentValue}`)
  }

  Text { text: "."; color: palette.text }

  // Year
  SpinBox
  {
    id: year

    editable: false
    value: new Date().getFullYear()
    from: new Date().getFullYear() - 100
    to: new Date().getFullYear() + 100
    stepSize: 1
    wrap: true
  }
}
