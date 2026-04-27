Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B09EFF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn5gmDjEwT4o5xgJz1cHdlxX7B7ac9ZHAHI5RMICEbg=; b=GJZarIE1EQQBsK
	etx13xoTTkl76IVwwwv3VEYN3JtsxW/LnHwwyxHLFk++HkYC6QCghgtlks1HcGD7x6j6UqbXwCpGT
	kKvggwGUbfLLNbWaZOIHFhau8a7xLFikvSItgJUEs4cNBlBXRYlrvx9S+wKOKb6dEhBJRC016vq1k
	wlXfKu2Twt/MnjRuo71AKoK/31jF8Z60xg4mJZR3gd3NAdezVL+dgRoAfg+oK3ISPZ/q+jnlIExcb
	AD0/gFE+fTS5fOuGcpgSdnW4t85w2vr6p5x6tCj8Qtx5ZCcXb8ZUCZ9p0e8qI+H3Zo0MCbMndjrAV
	q6pT6HDrB1kOMqZMcI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL48-0000000Gucx-1J0K;
	Mon, 27 Apr 2026 12:27:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL45-0000000Gubo-0Y2X;
	Mon, 27 Apr 2026 12:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N2Cr26LAuCrqLg1Hny+ypX+Am0Ky/eMd+gY1trdJd7A=; b=WKY9HC5fsXD6rXYzZo+QcOk10U
	k8m2IYOWUqQDOsZAiYVzEUVY6pxyimRdVjBY4wUxFvAcx1pcMcUTUd0anXC8RU3u7QE3RF3EItV/h
	SmOqB8VhxjKBVPEMx8ksdH1kjrAi5UHETGvIV0NMc8ZwzzUvVVYrtK0dapBOG6I8kavnDNwkuqXCq
	MlvT3q6mxHAHGQxUxYgNucDi0ZKFMyOKaeJjaccwr/sFD1iQvk7EbdXFR4xzMu5bxuIeegxFrFNTf
	q6vlw9KMnJHdZ3eA3Nn1cnx2hvx4GOZayPlOkBiZP/SrBB3uduOHzXMkzoXM4X9ooaL+L4VC1rUMY
	QhPjRBqQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Gray Huang <gray.huang@wesion.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nick@khadas.com, Gray Huang <gray.huang@wesion.com>
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Add Bluetooth support for Khadas Edge
 2L
Date: Mon, 27 Apr 2026 14:27:51 +0200
Message-ID: <3716011.atdPhlSkOF@phil>
In-Reply-To: <20260325054614.1497147-7-gray.huang@wesion.com>
References: <20260325054614.1497147-1-gray.huang@wesion.com>
 <20260325054614.1497147-7-gray.huang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052753_169622_881CCC71 
X-CRM114-Status: GOOD (  13.06  )
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

QW0gTWl0dHdvY2gsIDI1LiBNw6RyeiAyMDI2LCAwNjo0NjoxNCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEdyYXkgSHVhbmc6Cj4gRW5hYmxlIEJsdWV0b290aCBzdXBwb3J0
IGZvciB0aGUgQW1wYWsgQVA2Mjc1UCBtb2R1bGUgb24gdGhlCj4gS2hhZGFzIEVkZ2UgMkwuIFRo
aXMgaW52b2x2ZXMgZW5hYmxpbmcgdGhlIFVBUlQ1IGludGVyZmFjZSBmb3IKPiBIQ0kgY29tbXVu
aWNhdGlvbiBhbmQgZGVmaW5pbmcgdGhlIHJlcXVpcmVkIHJlZ3VsYXRvcnMgYW5kCj4gcG93ZXIt
c2VxdWVuY2UgcGlucy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHcmF5IEh1YW5nIDxncmF5Lmh1YW5n
QHdlc2lvbi5jb20+Cj4gLS0tCj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdl
LTJsLmR0cyAgICB8IDM1ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM1
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzCj4gaW5kZXggOGVjZDAwZjY2NDVkLi4zNDVk
YzRjOTgxYzEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NzYta2hhZGFzLWVkZ2UtMmwuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzCj4gQEAgLTU2MCw2ICs1NjAsMjAgQEAgdXNiX2hv
c3RfcHdyZW46IHVzYi1ob3N0LXB3cmVuIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwlibHVldG9v
dGggewo+ICsJCWJ0X3JlZ19vbjogYnQtcmVnLW9uIHsKPiArCQkJcm9ja2NoaXAscGlucyA9IDw0
IFJLX1BCMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4gKwkJfTsKPiArCj4gKwkJYnRf
d2FrZV9ob3N0OiBidC13YWtlLWhvc3Qgewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEIx
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+Owo+ICsJCX07Cj4gKwo+ICsJCWhvc3Rfd2Fr
ZV9idDogaG9zdC13YWtlLWJ0IHsKPiArCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BBNSBSS19G
VU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4gKwkJfTsKPiArCX07CgpzYW1lIHNvcnRpbmcgcHJv
YmxlbSB3aXRoIGJsdWV0b290aCBiZXR3ZWVuIHVzYi1mb28gYW5kIHdpZmktZm9vLgoKPiArCj4g
IAl3aWZpIHsKPiAgCQl3aWZpX3JlZ19vbjogd2lmaS1yZWctb24gewo+ICAJCQlyb2NrY2hpcCxw
aW5zID0gPDQgUktfUEEyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKCkhlaWtvCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
