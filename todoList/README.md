
### Türkçe Versiyon:

# Motoko Telefon Rehberi Projesi

## Genel Bakış

Bu proje, Motoko programlama dili ile Internet Computer Protocol (ICP) platformu üzerinde geliştirilmiş bir akıllı sözleşmedir. Basit bir telefon rehberi uygulaması olarak işlev görür ve kullanıcıların isimlerine göre telefon girişleri eklemelerine ve sorgulamalarına olanak tanır.

## Ana Özellikler

- **Ekleme Fonksiyonu:** Kullanıcılar, isim ve ilişkili telefon detayları ile rehbere yeni girişler ekleyebilir.
- **Arama Fonksiyonu:** Kullanıcılar, belirli bir ismi sorgulayarak ilgili telefon detaylarını alabilir.

## Teknoloji Yığını

- **Motoko Programlama Dili:** Akıllı sözleşme geliştirmek için kullanılmıştır.
- **Internet Computer Protocol:** Akıllı sözleşmenin dağıtımı ve çalıştırılması için platform sağlar.

## Veri Tipleri

- **Name:** Bir telefon girişi ile ilişkili ismi temsil eder (Text tipi).
- **Phone:** Telefon numarasını metin olarak saklar (Text tipi).
- **Entry:** Her giriş için bir açıklama ve telefon numarası içeren bir kayıttır.

Akıllı sözleşme, girişleri saklamak için bir `HashMap` tanımlar ve telefon rehberi ile etkileşim için iki ana fonksiyon sağlar.


# Motoko Phone Book Project

## Overview

This project is a smart contract developed with Motoko on the Internet Computer Protocol (ICP) platform. It functions as a basic phone book application allowing users to add and query phone entries by name.

## Key Features

- **Insert Function:** Users can add new entries to the phone book with a name and associated phone details.
- **Lookup Function:** Users can query the phone book for a specific name to retrieve the corresponding phone details.

## Technology Stack

- **Motoko Programming Language:** Used for smart contract development.
- **Internet Computer Protocol:** Provides the platform for deploying and running the smart contract.

## Data Types

- **Name:** Represents the name associated with a phone entry (Text type).
- **Phone:** Stores the phone number as a text (Text type).
- **Entry:** A record containing a description and a phone number for each entry.

The smart contract defines a `HashMap` to store entries and provides two main functions for interacting with the phone book.

