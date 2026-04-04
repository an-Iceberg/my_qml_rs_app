import QtQuick 2
import QtQuick.Controls 2
// import QtQuick.Window 2
import QtQuick.Layouts 2

RowLayout
{
  // Day
  ComboBox
  {
    Layout.preferredWidth: 60
    model: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
  }

  Text { text: "."; color: palette.text }

  // Month
  ComboBox
  {
    Layout.preferredWidth: 60
    model: [1,2,3,4,5,6,7,8,9,10,11,12]
  }

  Text { text: "."; color: palette.text }

  // Year
  ComboBox
  {
    Layout.preferredWidth: 80
    model: ["2024","2025","2026","2027","2028"]
  }
}
