Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88420D41149
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 09:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0jYvg54MH92xWayHk+EqWreMfA+N6uzHeXm1JXmT2w=; b=QSV9POZw5+094W
	7yJwLiJ2Okf/K+gvswdJcRn+Agcbhb3IYCqBRHBXBMf+Oby55DTvFGmNCx3ACZ/k89QIvUcLknSyW
	AmNQ2uxHuvOLvfUY5UIb9MTwe2YBvYHTl3/6+WSi4wbk1aoTPUcH4PBcYIbH56N3H7N5A+0OuS6rI
	BLvO1s0VwlechPVugsBHmXlT7kFxadFgJ9WAs3Cr46fnfvXdnEITftYBRh12aewC5ly3W3rolC+5U
	JxtomLNTqlLuUmZViP0mVT4KHRvI2WyA734Z9QGrK2Tb1f8A9LHtn5cPHFMbKxiwvEstlG+Zq9bSe
	4hDmoFGVRapHbUVXYOuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJlc-0000000C4y1-3dFy;
	Thu, 15 Jan 2026 09:35:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJlZ-0000000C4wU-2Rgo;
	Thu, 15 Jan 2026 09:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JYXltDpL0E6P70x7/T7CUClUHHDXZGWswJd0N771/no=; b=xiJJHr00vXBCki2jKRfl7tFi2f
	eqiyJPSVUNN0luhQwYGJZnktZzI4n1QZVi88LLC7L81QBc0vY2milOMQeZDNs4s+g1pk+44cCdvOi
	MF7ue+wVuKChpRYstO/XH5qHSR184Y/ZG6lXa5aX4QFRid1J7T+v8DwkprcJFikwB+p3+U8JQQqmh
	RYnC0Oor3ntxhkEIqKJOHunUihBCM4Vcg8dXBNhKJpHtKomPlHmN0QpM7YuXVM2zkwljFWzP9ziKi
	7H+fwrDOW2jKcKJcYom28PUGJ/r3SORsAS/PVSqDWPSLVzaqJraIWe2ZApKvbDQkhVVVyDaxv6/tK
	5oeOphZQ==;
Received: from i53875b85.versanet.de ([83.135.91.133] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vgJlU-002RHj-Il; Thu, 15 Jan 2026 10:35:41 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: quentin.schulz@cherry.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 3/5] arm64: dts: rockchip: Enable HDMI output on
 RK3368-Lion-Haikou
Date: Thu, 15 Jan 2026 10:35:38 +0100
Message-ID: <10786293.qUNvkh4Gvn@diego>
In-Reply-To: <8f7880cc-5469-4ac1-9fcc-9bd33327e571@rock-chips.com>
References: <20260114230707.4175162-1-heiko@sntech.de>
 <20260114230707.4175162-4-heiko@sntech.de>
 <8f7880cc-5469-4ac1-9fcc-9bd33327e571@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_013545_682612_D4CFC4DD 
X-CRM114-Status: GOOD (  16.20  )
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

SGksCgpBbSBEb25uZXJzdGFnLCAxNS4gSmFudWFyIDIwMjYsIDAyOjI1OjM0IE1pdHRlbGV1cm9w
w6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gT24gMS8xNS8yMDI2IDc6
MDcgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiA+IAo+ID4gRW5hYmxlIHRoZSBWT1AgYW5kIEhETUkg
Y29udHJvbGxlciBvbiB0aGUgTGlvbi1IYWlrb3UgYm9hcmQuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiAtLS0KPiA+
ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWxpb24taGFpa291LmR0cyAgICAgfCAxNiAr
KysrKysrKysrKysrKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgt
bGlvbi5kdHNpICAgIHwgIDUgKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlv
bnMoKykKPiA+IAo+IAo+IEkgZ3Vlc3MgTlBMTCBpcyBhbiBpbmRlcGVuZGVudCBQTEwgYXZhaWxh
YmxlIGZvciBWT1AsIAo+IGNvdWxkIHlvdSBnaXZlIGl0IGEgdHJ5PwoKbm90IHJlYWxseSBzdXJl
IHdoYXQgeW91IG1lYW4gaGVyZS4KClRoZSBWT1AtYmluZGluZyBzcGVjaWZpZXMgdGhlIGFjbGss
IGRjbGsgYW5kIGhjbGsgY2xvY2tzLgoKVGhlIE5QTEwgaXMgYSBwb3NzaWJsZSBzb3VyY2UgZm9y
IHF1aXRlIGEgbG90IG9mIHBlcmlwaGVyYWxzIG9uIHRoZSByazMzNjgKYWNsa19jY2lfcHJlLCAg
c2Nsa190Y3AsIHZlcHUvdmRwdSwgaGV2YywgaXNwLCBncHUsIGdtYWMKClNvIGl0J3MgZGVmaW5p
dGx5IG5vdCBkZWRpY2F0ZWQgdG8gdGhlIFZPUCwgYW5kIHRodXMgc2hvdWxkIG5vdApjaGFuZ2Ug
ZnJlcXVlbmN5IGZvciB0aGUgVk9QIGFsb25lLCBiZWNhdXNlIHRoYXQgY291bGQgYWZmZWN0Cm90
aGVyIGJsb2Nrcy4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
