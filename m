Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09CF8EE0AE9
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 15:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIngoOG/022LPU3FAcrscCoCLh9rbi3RYuCo6fv7oDo=; b=4ofUqWRRgHFb9X
	PE4mqYWv1FHrzGo/CqXycN6OeQFJzGvJMHVmJc2mD71CcWRtqqBYNFjyBdDCXrjYbzRcqzRS7O5PM
	/lIfbWp0WRdla1Wug0uk48epODo8FQRcKOo1ygUVjjRq3XbNnyIq9WSbhiWW8VtsHl575OH7mJ9S1
	kelyWRYINnQUhjkd5liLH7JayZ1N7aU/zKgeYCG8iW80W813HJ2CXYkHzskV/VM1GXTq/uxxF5UZc
	DJgTpP0Poo5HC1D5PFy0Ck+Jn9iPZX4JHwY+kgVLorB2n7SjIMK8YImpcrK4HEyx+TWheTv/+ebzL
	ofmK/K3TC58H3mG5V2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vok67-0000000CZft-1rMb;
	Sat, 07 Feb 2026 15:19:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vok64-0000000CZem-3kYq
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 15:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AoggaiyVAyb8QjmFP6pOfv4pN97nDngEM6ydYz9BLbk=; b=swvlT/Ur7F9XYtdzm8HrB8aF0q
	fXor2IMXOgUfQkIOnEgCR8wJTVYHZkldX4JlQ11nFSReubwKNxobw4YUN8EVdcLhBJD4G39SViFyr
	7g+3SMlQulVIzw0ycDo+TxNNen43joYxMcu47+BxGHxuxh9VyFC9ovmKn4Vo2zHhTCPKfbADBxjPA
	qUTyiXFW7fckYwUHjkZ5P0vpnCS9hAV8XASjOTo3JGfrFtu91cJLyVHlWH0TYzTCJxT15SqrEzj64
	WlxokL55YH5pmmOhWt8zVLv88/osb6vzGdy3gRgrDZD7k4wtGILavWa0M2A+YdEVPLkioeA78LFoQ
	wqqPYKZw==;
Received: from i53875bef.versanet.de ([83.135.91.239] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vok5p-007SEG-Nh; Sat, 07 Feb 2026 16:19:30 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: ulf.hansson@linaro.org, Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible
Date: Sat, 07 Feb 2026 16:19:29 +0100
Message-ID: <7496856.UjTJXf6HLC@diego>
In-Reply-To: <20260207131041.2833840-1-festevam@gmail.com>
References: <20260207131041.2833840-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_071944_956615_25962376 
X-CRM114-Status: GOOD (  12.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gU2Ftc3RhZywgNy4gRmVicnVhciAyMDI2LCAxNDoxMDo0MSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEZhYmlvIEVzdGV2YW06Cj4gRnJvbTogRmFiaW8gRXN0ZXZhbSA8
ZmVzdGV2YW1AbmFibGFkZXYuY29tPgo+IAo+IFRoZSBSVjExMDNCIHVzZXMgdGhlIERlc2lnbldh
cmUgTVNIQyBjb250cm9sbGVyIGNvbXBhdGlibGUgd2l0aCB0aGUKPiBleGlzdGluZyBSb2NrY2hp
cCBSSzMyODggdmFyaWFudC4gQWRkIHRoZSByb2NrY2hpcCxydjExMDNiLWR3LW1zaGMKPiBjb21w
YXRpYmxlIHN0cmluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZh
bUBuYWJsYWRldi5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KCj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIE1ha2UgY29tbWl0IGxvZyBtb3Jl
IGNvbmNpc2UuCj4gCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9j
a2NoaXAtZHctbXNoYy55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1j
L3JvY2tjaGlwLWR3LW1zaGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCj4gaW5kZXggYWNiOWZiOWE5MmNkLi5hNzUyMDli
ZDI3MTAgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21t
Yy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbAo+IEBAIC00Myw2ICs0Myw3IEBAIHBy
b3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjItZHctbXNoYwo+ICAg
ICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTY4LWR3LW1zaGMKPiAgICAgICAgICAgICAgICAt
IHJvY2tjaGlwLHJrMzU4OC1kdy1tc2hjCj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjEx
MDNiLWR3LW1zaGMKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJ2MTEwOC1kdy1tc2hjCj4g
ICAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMjYtZHctbXNoYwo+ICAgICAgICAgICAgLSBj
b25zdDogcm9ja2NoaXAscmszMjg4LWR3LW1zaGMKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
