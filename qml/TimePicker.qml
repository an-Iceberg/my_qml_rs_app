import QtQuick 2
import QtQuick.Controls 2
// import QtQuick.Window 2
import QtQuick.Layouts 2

RowLayout
{
  // Hours
  // ComboBox
  // {
  //   // Layout.preferredWidth: 60
  //   implicitContentWidthPolicy: ComboBox.WidestText
  //   model: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
  // }
  SpinBox
  {
    editable: false
    from: 0
    to: 23
    stepSize: 1
    wrap: true
  }

  Text { text: ":"; color: palette.text }

  // Minutes
  SpinBox
  {
    editable: false
    from: 0
    to: 55
    stepSize: 5
    wrap: true
  }
}
