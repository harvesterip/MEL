MEL
===

Lista minimalnego wyposażenia (MEL) to wykaz niesprawnych części samolotu, z którymi operator samolotu może dopuścić go do eksploatacji.

http://www.s-techent.com/ATA100.htm

MEL to wersja mobilna, która pozwala przeglądać, modyfikować (slide to delete, edit) i zapisywać listę MEL na iPhonie. Wykorzystałem do tego celu CORE DATA. Projekt DataBase to minimalistyczna aplikacja w Coco, która pozwala stworzyć bazę SQL na podstawie powyższej strony. Plik jest zapisywany w lokalnej bibliotece w folderze: ~/librarys/Application Support/GrzegorzJarzynka.DataBase. Zdecydowanie szybsza metoda niż wpisywanie wartości na telefonie w gotowym projekcie MEL. Ten projekt natomiast to interfejs użytkownika, który przy pierwszym uruchomieniu aplikacji pobiera dane ze wspomnianej bazy (DataBase.sqldata w folderze Supporting Files). 
