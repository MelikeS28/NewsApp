#  NewsApp (HaberProjesi)

A lightweight and dynamic iOS news reader application built using Swift, UIKit, and MVVM architecture. The project fetches real-time news data from a remote JSON endpoint via URLSession and dynamically renders news titles and detailed stories in a custom self-sizing TableView.

---

##  Screenshots

| News Feed |
|:---------:|
| <img src="NewsVC.png" width="250"> |

---

##  Features

* **Clean Architecture:** Implements the MVVM (Model-View-ViewModel) pattern to separate business logic, UI state, and network operations.
* **Closure-Based Data Binding:** Uses custom completion handler closures (`didUpdateNews`) to seamlessly notify the View Controller when remote data updates.
* **Native Networking:** Custom `WebService` module leveraging native `URLSession` and `Codable` / `JSONDecoder` for lightweight API calls without external heavy dependencies.
* **Dynamic TableView Cells:** Automated row height calculation (`UITableView.automaticDimension`) allowing dynamic news content expansion.
* **Reusable UI Components:** Custom `UITableViewCell` implementation configured using dedicated cell ViewModels (`NewsCellViewModel`).

---

##  Tech Stack & Architecture

* **Language:** Swift
* **UI Framework:** UIKit (Storyboards / Auto Layout)
* **Architecture Pattern:** MVVM (Model-View-ViewModel)
* **Networking:** Native `URLSession` + `Codable` (`JSONDecoder`)
* **Design Patterns:** Delegation, Dynamic Data Binding via Closures, Dependency Injection

---

##  Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/MelikeS28/NewsApp.git](https://github.com/MelikeS28/NewsApp.git)
