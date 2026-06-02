Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40AB9CD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOsqvy69FigxHMohU1DMcfKgWvjlGXRP6Kvb9bMSISM=; b=Bens0XEh1RQ9c/
	SLTyFaeof1DQZ70wig6jdGUvYXwv7vansg+cTYgK+/dbRkHp1bqU53Fdzzoryv+cQFB/sW4PyBIAU
	HX4uuxPduCZ8uwqDQn0uxYssPUIW3/dnu9HzXnHY6sb+FQM2dTOB6jFkjtQ/OWm1NglG4lRdlok2q
	AOBqUcYwqeRVnHZguPV3SWA43Flb1pNQt6YtoBtRpeyaYXBKEySzi09g9mkH7H7pxS+bqwuyZ4W0B
	tExUFhM1AjtPDaM9jXLIuYhKTOUYEtcxWQOqccA5un7cggimrz1LILQr1Ojzi8rKIjUOnG7tRxQst
	9E9BG7hUFXeJwoyMq4Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWLc-0000000DnpC-2dMt;
	Tue, 02 Jun 2026 21:08:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWLZ-0000000DnoH-22q7;
	Tue, 02 Jun 2026 21:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CW9LOlJAtSZATcZIaY6uLfTJOIqnCg+SkeFpTOqsGbw=; b=ODppvQTZUOOtiSOWcFlUNW1uKK
	b9+m5bbK3ZQ4qMKyM4bsPZKmHRn7jvGmQvKT4GBYvXRMMzlbS7UcLMj+9j1Mrvtywx4BFNJhW/G4U
	1u9lxb7YMbrFCWAspW7Ewhi/cKm1iYtVZKNJMFX9QRfCMnz/WttwGdLDburXwPgxl+AS2Zqaof/jm
	AmGQ7xEXfcbCTr73Lt8ETxgVBEtQfdKK1q2sLTo3LzZKE4wvF2s042Z9wf1OONn1wl58A2mBs5nH/
	yWEDtdelYw5kgz7GXRBdL5FLeF4AOEKq+c8Q76bpTuT0q5DJ3XaP4tf2+mUOkovcjaI31NJtP/pmn
	uEE9Ikog==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
 Jakob Unterwurzacher <jakobunt@gmail.com>
Cc: stable@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix emmc reset polarity on px30-cobra
Date: Tue, 02 Jun 2026 23:08:20 +0200
Message-ID: <3631825.d7IHhHJzqS@phil>
In-Reply-To: <20260512092225.34835-1-jakob.unterwurzacher@cherry.de>
References: <20260512092225.34835-1-jakob.unterwurzacher@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_140825_523230_3DB85FFF 
X-CRM114-Status: GOOD (  18.67  )
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

QW0gRGllbnN0YWcsIDEyLiBNYWkgMjAyNiwgMTE6MjI6MDkgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBKYWtvYiBVbnRlcnd1cnphY2hlcjoKPiBUZWNobmljYWxseSwgdGhl
IHJlc2V0IHNpZ25hbCBpcyBhY3RpdmUgbG93IC0gaXQncyBjYWxsZWQgUlNUX24gYWZ0ZXIgYWxs
Lgo+IAo+IEJ1dCBpdCBpcyBpZ25vcmVkIGNvbXBsZXRlbHkgdW5sZXNzIFJTVF9uX0ZVTkNUSU9O
PTEgKGJ5dGUgMTYyIGluIGV4dGNzZCkKPiBpcyBzZXQgaW4gdGhlIGVtbWMuIEl0IGlzIDAgcGVy
IGRlZmF1bHQuCj4gCj4gRm9yIGVtbWNzIHRoYXQgaGF2ZSBSU1Rfbl9GVU5DVElPTj0xIHdlIGZh
aWxlZCBsaWtlIHRoaXM6Cj4gCj4gCVsgICAgMy4wNzQ0ODBdIG1tYzE6IEZhaWxlZCB0byBpbml0
aWFsaXplIGEgbm9uLXJlbW92YWJsZSBjYXJkCj4gCj4gV2l0aCB0aGlzIGNoYW5nZSB0aGV5IHdv
cmsgbm9ybWFsbHkuCj4gCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBGaXhlczogYmI1
MTBkZGM5ZDNlICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBweDMwLWNvYnJhIGJhc2UgZHRz
aSBhbmQgYm9hcmQgdmFyaWFudHMiKQo+IFNpZ25lZC1vZmYtYnk6IEpha29iIFVudGVyd3VyemFj
aGVyIDxqYWtvYi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU+CgphcyBRdWVudGluIHJlbWFya2Vk
LCBhdXRob3IgKEBnbWFpbCkgYW5kIHNpZ25lZC1vZmYtYnkgZG8gbm90IG1hdGNoLgpXaGlsZSBJ
J20gZ2VuZXJhbGx5IG9wZW4gdG8gZml4aW5nIHRoaW5ncywgd2hlbiBpdCB0b3VjaGVzIHRoZSBE
Q08gdGhpcwppc24ndCB0aGUgY2FzZS4KClNvIHBsZWFzZSByZXNlbmQgdGhpcyB3aXRoIHRoZSBj
b3JyZWN0IGF1dGhvci4KCkluIGdlbmVyYWwgImdpdCBzZW5kLWVtYWlsIiB3aWxsIGRvIHRoZSBj
b3JyZWN0IHRoaW5nICh0aGF0IEZyb206IGxpbmUpLAp3aGVuIHBhdGNoIGF1dGhvciBhbmQgZW1h
aWwtaWQgZG8gbm90IG1hdGNoLgoKClRoYW5rcwpIZWlrbwoKPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9weDMwLWNvYnJhLmR0c2kgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcHgzMC1jb2JyYS5kdHNpCj4gaW5kZXggYjdlNjY5ZDhiYTRkLi45MDc1MWIw
NGY5NWMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLWNv
YnJhLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEu
ZHRzaQo+IEBAIC0zNSw3ICszNSw3IEBAIGVtbWNfcHdyc2VxOiBlbW1jLXB3cnNlcSB7Cj4gIAkJ
Y29tcGF0aWJsZSA9ICJtbWMtcHdyc2VxLWVtbWMiOwo+ICAJCXBpbmN0cmwtMCA9IDwmZW1tY19y
ZXNldD47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAtCQlyZXNldC1ncGlvcyA9
IDwmZ3BpbzEgUktfUEIzIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsJCXJlc2V0LWdwaW9zID0gPCZn
cGlvMSBSS19QQjMgR1BJT19BQ1RJVkVfTE9XPjsKPiAgCX07Cj4gIAo+ICAJZ3Bpby1sZWRzIHsK
PiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
