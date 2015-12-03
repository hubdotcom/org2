# Introduction #

Code to run a splash screen in GTK#


# Details #

```
  using System.Threading; 

  ... 

  var window = new Gtk.Window (); 
  window.Show (); 

  var thread = new Thread (delegate { DoSomeHeavyWorkHere () }); 
  thread.Start (); 

  Application.Run (); 
```