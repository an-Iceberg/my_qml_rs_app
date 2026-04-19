import QtQuick 2
import QtQuick.Controls 2
// import QtQuick.Window 2
import QtQuick.Layouts 2

RowLayout
{
  // TODO: this isn't mobile friendly.
  // Day
  SpinBox
  {
    editable: false
    from: 1
    to: 31
    stepSize: 1
    wrap: true
  }

  Text { text: "."; color: palette.text }

  // Month
  SpinBox
  {
    editable: false
    from: 1
    to: 12
    stepSize: 1
    wrap: true
  }

  Text { text: "."; color: palette.text }

  // Year
  SpinBox
  {
    editable: false
    value: new Date().getFullYear()
    from: new Date().getFullYear() - 100
    to: new Date().getFullYear() + 100
    stepSize: 1
    wrap: true
  }
}
