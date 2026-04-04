import QtQuick 2
import QtQuick.Controls 2
// import QtQuick.Window 2
// import QtQuick.Layouts 2

TextField
{
  color: palette.text

  onTextChanged:
  {
    console.log(text)
  }
}
