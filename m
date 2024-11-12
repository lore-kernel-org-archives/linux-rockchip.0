Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CAAD42B9B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 15:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LzPgwYLpHbPz0G7rbITTNJeZQIdss1l4y1aOdywm5tM=; b=u6TK+JqLUGGXPevaKL+epSAkkV
	BtDPoFcJ+4NqgFt++dr66AYKuf19aruVGBztuu06Pb9NQkPjK+PQ5ucGCN/B/CO+XEPBJ0Od1+jw4
	UuunBBGPzar8sqV+O4piILpnBoO5hXpT1mOC5la705+zVcWPTLeFp5Zk+DSAgUZsZ61QC15QWt/oQ
	d68PsT/PNKx9zYOxaZamtaPH5yCshGQhWxC8OtXuOYX/eh2PDaatm7O2wDxI4/HPsuflP2u7/uU0j
	4bq0jTZ5+aJcijRcpYQ201NF6yFkXWMmPKKv4yBI+h2knjya9A3wz03PZRIsTS+AXaMa1Ro34ZX38
	xGjFFk+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsXd-00000003try-1huA;
	Tue, 12 Nov 2024 15:10:53 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsU6-00000003t9N-3bPc;
	Tue, 12 Nov 2024 15:07:16 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731424032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/JzPROz1nsHbGEclfKh8jf9jsrbMpci++OmYF8hXYss=;
	b=fqrrWSgJDCXj9QX3GYICI4bGW449R0E70n9ccimyXlQonBWFc8GQnB/AFmy3YcZfR/h+Or
	Y7Y6fSJbiv0PNMjhKraNdLtn7kY0Q7GJtVES+zk333uiQZ5wVJnWQLQ/+KqEUuUQUyfzVP
	O1XpYYzJg/b/snCU7RndlbCaQ90yja24QDUCJ6jrE08UrjqP88d5nsmIDQMNJKZc2AabhS
	2mposGDaIvnsWzTKkrA943iqABdAQc0MslxbrNNUygk4nN+CzGXUSepa257eyNDkWP0Tnj
	A9/NKqiO+xHcSiutZpnSf4FW6Crb6yJ7SZDMSJT8d6pEy9wkcTtlWg54jiO8Mw==
Date: Tue, 12 Nov 2024 16:07:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@linux.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki
 <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
In-Reply-To: <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
 <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
Message-ID: <9330ebb370780c001fd2aaee49aec9e8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_070715_219272_2D901C13 
X-CRM114-Status: GOOD (  21.83  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gVGFtYXMsCgpPbiAyMDI0LTExLTEyIDE1OjM1LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+
IEkgYWdyZWU7IGl0J3Mgbm90IHBvc3NpYmxlIHRvIHRlbGwgaWYgdGhlIHVzZXIgd2lsbCB1c2Ug
YSBQQ0llL1VTQiwKPiBQQ0llL1VBUlQsIFNESU8vVUFSVCwgcGVyaGFwcyBVU0IvVUFSVCBkZXZp
Y2UsIG9yIGFueSBvdGhlciBISUYKPiBjb21iaW5hdGlvbi4gVGhlIHdheSBJIHNlZSBpdCBpcyBV
QVJUOCBpcyBoYXJkd2lyZWQgdG8gdGhlIE0yRSwgc28KPiB0aGVyZSBpcyBhIHJlYXNvbmFibGUg
ZXhwZWN0YXRpb24gdGhhdCBpdCBzaG91bGQgd29yayB0b28gaWYgbmVlZCBiZS4KClBsZWFzZSBj
b3JyZWN0IG1lIGlmIEknbSB3cm9uZywgYnV0IGlzbid0IHRoaXMgVUFSVCBzdXBwb3NlZCB0byBi
ZQp1c2VkIGZvciB0aGUgQmx1ZXRvb3RoIHBhcnQgb2YgYW4gU0RJTyBXaUZpICsgQmx1ZXRvb3Ro
IG1vZHVsZSwgaW4KZm9ybSBvZiBhIG5vbi1zdGFuZGFyZCBNLjIgbW9kdWxlIHRoYXQgUmFkeGEg
c2VsbHM/CgpXaXRoIHRoYXQgaW4gbWluZCwgSSBzZWUgdmVyeSBsaXR0bGUgc2Vuc2UgaW4ganVz
dCBlbmFibGluZyB0aGUgVUFSVCwKd2l0aG91dCBkZWZpbmluZyB0aGUgZW50aXJlIEJsdWV0b290
aCBpbnRlcmZhY2UsIHdoaWNoIEFGQUlLIHByb2R1Y2VzCm5hc3R5IGxvb2tpbmcgZXJyb3IgbWVz
c2FnZXMgaW4gdGhlIGtlcm5lbCBsb2cgd2hlbiB0aGVyZSdzIGFjdHVhbGx5Cm5vdGhpbmcgY29u
bmVjdGVkIHRvIHRoZSBVQVJULgoKQXMgYSBzaWRlIG5vdGUsIHBsZWFzZSB1c2UgaW5saW5lIHJl
cGx5aW5nLiBbKl0KClsqXSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9Qb3N0aW5nX3N0
eWxlCgo+IE9uIE1vbiwgTm92IDExLCAyMDI0IGF0IDg6MTLigK9QTSBKb25hcyBLYXJsbWFuIDxq
b25hc0Brd2lib28uc2U+IHdyb3RlOgo+PiAKPj4gSGkgVGFtw6FzLAo+PiAKPj4gT24gMjAyNC0x
MS0xMSAxOToxNywgVGFtw6FzIFN6xbFjcyB3cm90ZToKPj4gPiBFbmFibGUgVUFSVCBsaW5lcyBv
biBSYWR4YSBST0NLIDMgTW9kZWwgQiBNLjIgS2V5IEUuCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5
OiBUYW3DoXMgU3rFsWNzIDx0c3p1Y3NAbGludXguY29tPgo+PiA+IC0tLQo+PiA+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDIgKy0KPj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+ID4KPj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+PiA+IGlu
ZGV4IGI3NTI3YmE0MThmNy4uNjFkNGJhMmQzMTJhIDEwMDY0NAo+PiA+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4+ID4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPj4gPiBAQCAtNzMyLDcg
KzczMiw3IEBAICZ1YXJ0OCB7Cj4+ID4gICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
Pj4gPiAgICAgICBwaW5jdHJsLTAgPSA8JnVhcnQ4bTBfeGZlciAmdWFydDhtMF9jdHNuICZ1YXJ0
OG0wX3J0c24+Owo+PiA+ICAgICAgIHVhcnQtaGFzLXJ0c2N0czsKPj4gPiAtICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+PiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gCj4+IFRoaXMgc2hv
dWxkIHByb2JhYmx5IGJlIGVuYWJsZWQgdXNpbmcgYW4gZHQtb3ZlcmxheSwgdGhlcmUgaXMgbm8g
VUFSVAo+PiBkZXZpY2UgZW1iZWRkZWQgb24gdGhlIGJvYXJkIGFuZCB0aGUgcmVhc29uIEkgbGVm
dCBpdCBkaXNhYmxlZCBpbgo+PiBvcmlnaW5hbCBib2FyZCBEVCBzdWJtaXNzaW9uLgo+PiAKPj4g
T24gc2Vjb25kIHRob3VnaHQgbWF5YmUgdGhleSBzaG91bGQgYmUgZW5hYmxlZCwgdGhpbmsgUENJ
ZSBhbmQgVVNCIAo+PiBsaW5lcwo+PiBvbiB0aGUgTS4yIEtleSBFIGlzIGFscmVhZHkgZW5hYmxl
ZCBieSBkZWZhdWx0LiBJIHByb2JhYmx5IG9ubHkgdGVzdGVkCj4+IHdpdGggYSBwY2llL3VzYiB3
aWZpL2J0IGNhcmQgYW5kIG5vdCBhIHNpZG8vdWFydCB3aWZpL2J0IGNhcmQuCj4+IAo+PiA+ICB9
Owo+PiA+Cj4+ID4gICZ1c2JfaG9zdDBfZWhjaSB7CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
