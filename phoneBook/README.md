# Motoko Telefon Rehberi Projesi

Bu proje, Motoko programlama dili ile Internet Computer Protocol (ICP) üzerinde geliştirilmiş basit bir telefon rehberi akıllı sözleşmesidir (aktör). Kullanıcıların isimlerine göre telefon girişleri eklemelerine ve sorgulamalarına olanak tanır.

## Proje Yapısı

Proje, Motoko'nun tip sistemini ve `HashMap` modülünü kullanarak, girişlerin eklenebileceği ve sorgulanabileceği temel bir telefon rehberi oluşturur.

### Kullanılan Modüller ve Fonksiyonlar

- **HashMap Modülü:** İsimlere telefon girişlerini eşleyen değiştirilebilir bir koleksiyon oluşturmak için kullanılır.
- **Text Modülü:** İsimler, açıklamalar ve telefon numaralarını metin olarak işlemek için kullanılır.

### Tanımlanan Veri Tipleri

- **Name:** `Text` için bir tip takma adıdır ve bir telefon girişiyle ilişkilendirilen ismi temsil eder.
- **Phone:** Telefon numaralarını metin olarak saklamak için kullanılan `Text` tipi için bir takma addır.
- **Entry:** Her giriş için bir `desc` (açıklama) ve bir `phone` (telefon numarası) içeren bir kayıttır.


# Motoko Phone Book Project

This project is a smart contract (actor) developed with Motoko on the Internet Computer Protocol (ICP). It serves as a simple phone book application where users can insert and lookup phone entries by name.

## Project Structure

The project utilizes Motoko's type system and the `HashMap` module to create a basic phone book where entries can be added and queried.

### Used Modules and Functions

- **HashMap Module:** Used to create a mutable collection that maps names to phone entries.
- **Text Module:** Employed for string operations, facilitating the handling of names, descriptions, and phone numbers as text.

### Defined Data Types

- **Name:** A type alias for `Text`, representing the name associated with a phone entry.
- **Phone:** A type alias for `Text`, used to store phone numbers as text.
- **Entry:** A record containing a `desc` (description) and a `phone` (phone number) for each entry.
