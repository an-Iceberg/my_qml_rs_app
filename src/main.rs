pub mod cxxqt_object;
pub mod backend;

use cxx_qt::casting::Upcast;
use cxx_qt_lib::{QGuiApplication, QQmlApplicationEngine, QQmlEngine, QUrl};
use std::pin::Pin;

fn main()
{
  let mut app = QGuiApplication::new();
  let mut engine = QQmlApplicationEngine::new();

  // Load the QML path into the engine.
  if let Some(engine) = engine.as_mut()
  {
    engine.load(&QUrl::from("qrc:/qt/qml/my_qml_rs_app/qml/Main.qml"));
  }

  if let Some(engine) = engine.as_mut()
  {
    let engine: Pin<&mut QQmlEngine> = engine.upcast_pin();

    // Listen to a signal from the QML engine.
    engine.on_quit(|_|
    {
      println!("QML quit!") ;
    })
    .release();
  }

  // Start the app.
  if let Some(app) = app.as_mut() { app.exec(); }
}
