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

import Foundation

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

    @Environment(\.theme)
    private var theme

    @State
    private var counter = 0

    var body: some Widget {
        Scaffold {
            Column(mainAxisAlignment: .center) {
                Text("You have pushed the button this many times:")
                Text("\(counter)", style: theme.textTheme.headlineMedium)
            }.center()
        } appBar: {
            AppBar { Text(title) }
        } floatingActionButton: {
            FloatingActionButton(
                onPressed: incrementCounter,
                tooltip: "Increment"
            ) {
                Icon(.add)
            }
        }
    }

    private func incrementCounter() {
        counter += 1
    }
}

@_cdecl("widgeteer_main")
public func main() {
    runApp(WidgeteerDemo())
}
