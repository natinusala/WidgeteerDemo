/*
   Copyright 2023 natinusala

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

@_exported import Widgeteer

struct WidgeteerDemo: Widget {
    var body: some Widget {
        MaterialApp(
            title: "Widgeteer Demo",
            theme: ThemeData(primarySwatch: .blue)
        ) {
            HomePage(title: "Widgeteer Demo Home Page")
        }
    }
}

struct HomePage: Widget {
    let title: String

    var body: some Widget {
        TextButton(onPressed: {
            print("Boop!")
        }) {
            Text("Press me!")
        }
            .center()
    }
}

@_cdecl("widgeteer_main")
public func main() {
    runApp(WidgeteerDemo())
}
