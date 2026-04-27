Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A449BFF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=My/zpLbt8OQfcHukn0G06duU66LhXYNkerC/QnEENrU=; b=pFiOybPiWKRWr3
	k6fKLdwybcUchbFSG0IHurhNPt/i5y4GQX8uZ7BAXkjrINjc73liMzl3gsY/KOCdFF/LVStvyAZ3Y
	gNAueOxj+KK9g97EvCuGP09UYem5UWdpx9HN2MzA5bYr5mP0r9yiEK6qa0wTOaNq9j9RHwIWm42Xt
	bZ4fr3qhb1GsYPEySDz5wTN/iw2cKyETbC8E8gNET9jGKclYMG9dGz+49jGOrFOcnkKMQ3FDg2Cx8
	KrOCDD7aH+YSerLIpHxqPtktdEzCzqqgLm59x9tvXWeF/t+2WdyGPArxpaaC3tH+dp2WjN6I9Tc0s
	Aqd4iOOU8z1DL0ciZPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL2C-0000000Gu8Y-35iV;
	Mon, 27 Apr 2026 12:25:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL29-0000000Gu7Z-2kAt;
	Mon, 27 Apr 2026 12:25:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=333EQ5bhO0fiPprY5W+7dmdDUISQgxlb4XBMWTWf1m8=; b=tJP4z/UUPvD4UlrBsuvfNDoHl1
	lnd9XxfkZ9/k7Q1jEt3qnr97Ju8L2hZWMCqwqm5clCWWyXa0Yt+75weS0s4u+VhV4KQ9/kKO8aNnH
	8n0j+UqFH9arwRD0QkRtkv7VvuQy7/JZNA1byei+XKLHqyX3SsyWrpYTiMfSXY5k2rQnf8b3Lpi9J
	w73mwCzLIio74WloxRpy1ShWqeUgEGqzTX36VqhhloA1PZNaiJekSlR8UKjL11bz03AVIfEeavbsJ
	DzrHdOvW9qhEwC4aZHe85TODVRtwSNyZot6t8/jO14hwKhmUKo92tdo/Sa7FMCCKoJPMpr0BIlQzW
	ZUGZ2RBg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gray Huang <gray.huang@wesion.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nick@khadas.com, Gray Huang <gray.huang@wesion.com>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: Add AP6275P wireless support for Khadas
 Edge 2L
Date: Mon, 27 Apr 2026 14:25:51 +0200
Message-ID: <4059489.Mh6RI2rZIc@phil>
In-Reply-To: <20260325054614.1497147-3-gray.huang@wesion.com>
References: <20260325054614.1497147-1-gray.huang@wesion.com>
 <20260325054614.1497147-3-gray.huang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052553_744598_EFFB68D0 
X-CRM114-Status: GOOD (  15.96  )
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

QW0gTWl0dHdvY2gsIDI1LiBNw6RyeiAyMDI2LCAwNjo0NjoxMCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEdyYXkgSHVhbmc6Cj4gVGhlIEtoYWRhcyBFZGdlIDJMIGJvYXJk
IHVzZXMgdGhlIEFtcGFrIEFQNjI3NVAgKEJDTTQzNzUyKSBQQ0llCj4gV2ktRmkgNiBtb2R1bGUu
Cj4gCj4gRW5hYmxlIHRoZSBwY2llMCBjb250cm9sbGVyIGFuZCBhZGQgdGhlIFdpLUZpIG1vZHVs
ZSBhcyBpdHMgY2hpbGQKPiBub2RlLiBBZGRpdGlvbmFsbHksIGVuYWJsZSB0aGUgSFlNODU2MyBS
VEMgdG8gcHJvdmlkZSB0aGUgMzIuNzY4a0h6Cj4gTFBPIGNsb2NrIHJlcXVpcmVkIGJ5IHRoZSBX
aS1GaSBtb2R1bGUsIGFsb25nIHdpdGggdGhlIG5lY2Vzc2FyeQo+IENvbWJQSFkgYW5kIGZpeGVk
IHJlZ3VsYXRvci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHcmF5IEh1YW5nIDxncmF5Lmh1YW5nQHdl
c2lvbi5jb20+CgpQbGVhc2UgbWFrZSB0aGlzIDIgcGF0Y2hlczoKLSBhZGQgdGhlIHJ0YwotIGFk
ZCB0aGUgd2lmaSB1c2luZyB0aGUgcnRjCgo+IC0tLQo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU3
Ni1raGFkYXMtZWRnZS0ybC5kdHMgICAgfCA3MSArKysrKysrKysrKysrKysrKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0
cwo+IGluZGV4IDU3ODFkZWFlMDBkOS4uMDljYjBmMGQ2ZGNmIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cwo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRhcy1lZGdlLTJsLmR0cwo+
IEBAIC00Nyw3ICs0NywxOSBAQCB2Y2NfMnYwX3BsZG9fczM6IHJlZ3VsYXRvci12Y2MtMnYwLXBs
ZG8tczMgewo+ICAJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+Owo+ICAJfTsKPiAgCj4gLQo+ICsJ
dmNjX3dpZmlfcmVnX29uOiByZWd1bGF0b3Itd2lmaS1yZWctb24gewo+ICsJCWNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gKwkJZ3Bpb3Mg
PSA8JmdwaW80IFJLX1BBMiBHUElPX0FDVElWRV9ISUdIPjsKPiArCQlwaW5jdHJsLTAgPSA8Jndp
ZmlfcmVnX29uPjsKPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXJlZ3VsYXRv
ci1uYW1lID0gIndpZmlfcmVnX29uIjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCXJl
Z3VsYXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+
Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ICsJCXZpbi1zdXBw
bHkgPSA8JnZjY18xdjhfczM+Owo+ICsJfTsKPiAgfTsKPiAgCj4gICZjcHVfbDAgewo+IEBAIC00
MzEsNiArNDQzLDYzIEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICAJfTsKPiAgfTsKPiAgCj4g
KyZjb21icGh5MF9wcyB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307CgphbHNvIHBsZWFzZSBz
b3J0IGFsc28gcGhhbmRsZXMgYWxwaGFiZXRpY2FsbHksIGkuZS4gcGNpZTIgYmV0d2VlbgpjLXNv
bWV0aGluZyBhbmQgaTJjIGlzIHRoZSB3cm9uZyBwbGFjZSA6LSkKCgpIZWlrbwoKPiArCj4gKyZw
Y2llMCB7Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJcGluY3RybC0wID0gPCZw
Y2llMF9yc3Q+OwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
