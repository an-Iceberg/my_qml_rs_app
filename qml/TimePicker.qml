import QtQuick 2
import QtQuick.Controls 2
// import QtQuick.Window 2
import QtQuick.Layouts 2

RowLayout
{
  // Hours
  ComboBox
  {
    Layout.preferredWidth: 60
    model: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24]
  }

  Text { text: ":"; color: palette.text }

  // Minutes
  ComboBox
  {
    Layout.preferredWidth: 60
    model: [00,05,10,15,20,25,30,35,40,45,50,55]
  }
}
