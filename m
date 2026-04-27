Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8D4FF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjyY9EuBLa++I9ebwRj3CowQ8dODymWR38hBxwJ7jUM=; b=A/esQEsaNaMco/
	n+PAn4W2n5hwuzzhytyy0Ok5us6zYZvaASx98ts4UWIGrv+sDaMmZnMzgJe4QLfev8hCWS4ANPFKM
	Fx8btSRAS6cYv6ux75GnwQiRAKAj6d+Ky36mfas+SFLCblLFSi5vmOKWYCaU/WvaPvGXlRu5WfbyR
	8Mat+8tJL8N25n9hnwQFoAjGKk4sSeYSuLWYBA86DXDZEmpTQ5tTmwTVjyxayglMGQkOzIoHfRjxd
	0fDCGaGhP62pfsDBCu2SVi6WJctuKXrwAJEiL1SbtP/6zMMWolhkqb1gWGcK1DwIajNOJI2Gco/00
	C6m024q77/EwQpDon6VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL3L-0000000GuQT-41v3;
	Mon, 27 Apr 2026 12:27:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL3J-0000000GuPZ-10zH;
	Mon, 27 Apr 2026 12:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VJKIc0zAxeYT5fXYQZbODNvkxb2EkocuhVXOnLkXtms=; b=lzJFGkIw60RjRCW3TwobbaH5Fj
	249d9pmx3QvUnfKLmrRWM6f6Bzx81CeOKPV63v/pPf4fFaD3MB1rLQ5veRg5oSEJENVADDVl2HBEV
	tmahgYfUf2pnlKCqW3SNTOWyu7FbrWpA7ImV7qYH/3qKSdLZ4dvcZYkKWOUXcoe9WSiYsS93YM/pt
	G6MsqMJlz9X7h3fMECBI6QKS78dnwcTXG0pUqZmpeK/I6dBETZ9qOTBIQ4W9WyXfAm1J55dk1FqB4
	0l2OTFifx/b3hlqu6VV32gDpdobLvJYuW0H1jRns8SCrl6gy3Ek25zpVGBWgVgLaG7y6YEXSwsdhz
	sRdqOfpw==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Gray Huang <gray.huang@wesion.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nick@khadas.com, Gray Huang <gray.huang@wesion.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: Enable USB for Khadas Edge 2L
Date: Mon, 27 Apr 2026 14:27:02 +0200
Message-ID: <5673086.MHq7AAxBmi@phil>
In-Reply-To: <20260325054614.1497147-6-gray.huang@wesion.com>
References: <20260325054614.1497147-1-gray.huang@wesion.com>
 <20260325054614.1497147-6-gray.huang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052705_280044_966128FE 
X-CRM114-Status: GOOD (  12.48  )
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

QW0gTWl0dHdvY2gsIDI1LiBNw6RyeiAyMDI2LCAwNjo0NjoxMyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEdyYXkgSHVhbmc6Cj4gVGhlIEtoYWRhcyBFZGdlIDJMIGJvYXJk
IHByb3ZpZGVzIG9uZSBVU0IgMy4wIEhvc3QgcG9ydCBhbmQgb25lCj4gVVNCIDIuMCBwb3J0IChj
b25uZWN0ZWQgdmlhIGFuIGludGVybmFsIGh1YikuIEVuYWJsZSB0aGUKPiBjb3JyZXNwb25kaW5n
IERXQzMgY29udHJvbGxlcnMgYW5kIFBIWXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3JheSBIdWFu
ZyA8Z3JheS5odWFuZ0B3ZXNpb24uY29tPgo+IC0tLQo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU3
Ni1raGFkYXMtZWRnZS0ybC5kdHMgICAgfCA0NyArKysrKysrKysrKysrKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cwo+IGluZGV4IDAwMzM0
MmZkNjlhNy4uOGVjZDAwZjY2NDVkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cwo+IEBAIC0zMCw2ICszMCwy
OSBAQCBoZG1pX2Nvbl9pbjogZW5kcG9pbnQgewo+ICAJCX07Cj4gIAl9Owo+ICAKPiArCXZjYzV2
MF9kZXZpY2U6IHJlZ3VsYXRvci12Y2M1djAtZGV2aWNlIHsKPiArCQljb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2RldmljZSI7Cj4g
KwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQlyZWd1
bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDw1MDAwMDAwPjsKPiArCX07Cj4gKwo+ICsJdmNjNXYwX2hvc3Q6IHJlZ3VsYXRvci12
Y2M1djAtaG9zdCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJl
Z3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAr
CQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUw
MDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ICsJCWVu
YWJsZS1hY3RpdmUtaGlnaDsKPiArCQlncGlvID0gPCZncGlvMiBSS19QRDMgR1BJT19BQ1RJVkVf
SElHSD47Cj4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXYwX2RldmljZT47Cj4gKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnVzYl9ob3N0X3B3cmVuPjsKPiAr
CX07Cj4gKwo+ICAJdmNjX3N5czogcmVndWxhdG9yLXZjYzV2MC1zeXMgewo+ICAJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc3lzIjsK
PiBAQCAtNTMxLDYgKzU1NCwxMiBAQCBwY2llMF9yc3Q6IHBjaWUwLXJzdCB7Cj4gIAkJfTsKPiAg
CX07Cj4gIAo+ICsJdXNiIHsKPiArCQl1c2JfaG9zdF9wd3JlbjogdXNiLWhvc3QtcHdyZW4gewo+
ICsJCQlyb2NrY2hpcCxwaW5zID0gPDIgUktfUEQzIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25v
bmU+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCXdpZmkgewo+ICAJCXdpZmlfcmVnX29uOiB3aWZp
LXJlZy1vbiB7Cj4gIAkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQTIgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfdXA+Owo+IEBAIC01NDIsNiArNTcxLDI0IEBAIHdpZmlfd2FrZV9ob3N0OiB3aWZp
LXdha2UtaG9zdCB7Cj4gIAl9Owo+ICB9Owo+ICAKPiArJnVzYl9kcmQxX2R3YzMgewo+ICsJZHJf
bW9kZSA9ICJob3N0IjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZ1MnBoeTEg
ewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnUycGh5MV9vdGcgewo+ICsJcGh5
LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsK
PiArJmNvbWJwaHkxX3BzdSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307CgpzYW1lIGhlcmUs
IHUtc29tZXRoaW5nIGFuZCBjLXNvbWV0aGluZyBiZXR3ZWVuIHBpbmN0cmwgYW5kIHNkaGNpCmlz
IHRoZSB3cm9uZyBwbGFjZS4KCkhla28KCj4gKwo+ICAmc2RoY2kgewo+ICAJYnVzLXdpZHRoID0g
PDg+Owo+ICAJbm8tc2RpbzsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
