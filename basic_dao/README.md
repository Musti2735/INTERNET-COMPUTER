Motoko'da DAO Akıllı Sözleşmesi
Bu repozituar, Internet Computer (IC) platformu için Motoko programlama dilinde geliştirilmiş bir Merkezi Olmayan Otonom Organizasyon (DAO) akıllı sözleşmesinin uygulamasını barındırmaktadır. DAO akıllı sözleşmemiz, bir topluluğun öneriler ve oylama mekanizmaları aracılığıyla kaynakları kolektif olarak yönetmesine olanak tanır.

Özellikler
Öneri Gönderme: Üyeler, kaynakların kolektif yönetimi için önerilerde bulunabilir.
Oylama Sistemi: Üyelerin önerilere demokratik bir şekilde oy verebildiği bir oylama sistemi uygulanmıştır.
Token Yönetimi: Oylama ve öneri gönderimlerinde entegral bir rol oynayan transferler ve bakiye kontrolleri gibi temel token işlemlerini destekler.
Otomatik Yürütme: Kabul edilen öneriler otomatik olarak yürütülür, DAO'nun otonom yönünü sergiler.

Kullanım
Projeyi kurduktan sonra DAO akıllı sözleşmesiyle şu şekillerde etkileşimde bulunabilirsiniz:

Hesap Oluşturma: Yeni bir hesap oluşturmak için account_put metodunu Kullanıcı Kimliğinizle çağırın.
Önerilerde Bulunma: Oylama için yeni öneriler göndermek üzere submit_proposal metodunu kullanın.
Önerilere Oy Verme: Aktif önerilere oyunuzu vermek için vote metodunu çağırın.
Hesap Bakiyelerini Kontrol Etme: account_balance metodunu kullanarak hesap bakiyenizi sorgulayın.

DAO Smart Contract in Motoko
This repository hosts the implementation of a Decentralized Autonomous Organization (DAO) smart contract, developed in the Motoko programming language for the Internet Computer (IC) platform. Our DAO smart contract enables a community to manage resources collectively through proposals and voting mechanisms.

Features
Proposal Submission: Members can submit proposals for the collective management of resources.
Voting System: Implements a democratic voting system where members can vote on proposals.
Token Management: Supports basic token transactions, such as transfers and balance checks, integral to voting and proposal submissions.
Automatic Execution: Accepted proposals are executed automatically, showcasing the autonomous aspect of the DAO.

Usage
After setting up the project, you can interact with the DAO smart contract in the following ways:

Creating an Account: Call the account_put method with your Principal ID to create a new account.
Submitting Proposals: Use the submit_proposal method to submit new proposals for voting.
Voting on Proposals: Invoke the vote method with your vote on active proposals.
Checking Account Balances: Query your account balance using the account_balance method.
