Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C83EC5DF81
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 10:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:In-Reply-To:
	Cc:To:Subject:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDHufkTU+sYqqetABghMQtJvnAFwKS0O4Trz1j78tFw=; b=KccegdsmdZAHWE
	Qy1Ms/OG6Tt7uTsWv5yU/0WuPYHKzXrkTS663FOWTMrGnqHoloAXPqZHWFMhfKqcvUcH7nuEmGU5G
	3LScTRZ7Zmvznf00v7fTWmIPxolF6Qu7DBJhIbBc/mYebtBmBUww58vVORvA32o0cjPAm2SnWmRpd
	o4N9rmhkpklGNH/c5INrvYP7EWpZtu+/zWKyfaBkD0C5h82xjWWWw6wCQ2tX+I9ZPz/iiWr40DKMr
	y6hqiVxxv+mLsm/DBuVM8pPACfiWAcXf2PITkVFjh9tABiz0iqz1u9hgiuDbDeAIwJhCHI2/EHto9
	AdyCbkFrH73vkj/a9h0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzcs-0000000BK8B-3z9F;
	Thu, 20 Aug 2026 10:03:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzcp-0000000BK7W-2mCo;
	Thu, 20 Aug 2026 10:03:58 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 044E3200C95;
	Thu, 20 Aug 2026 12:03:52 +0200 (CEST)
Message-ID: <5436875c-9724-41f3-aaf9-76d43e05f0a8@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 5/7] media: verisilicon: Add Rockchip VPU720 JPEG
 decoder
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>
Cc: "Sascha Hauer" <s.hauer@pengutronix.de>, "Benjamin Gaignard" <benjamin.gaignard@collabora.com>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Andrzej
 Pietrasiewicz" <andrzej.p@collabora.com>, "Hans Verkuil" <hverkuil@kernel.org>, "Chen-Yu
 Tsai" <wenst@chromium.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Lucas
 Sinn" <lucas.sinn@wolfvision.net>, "Mauro Carvalho Chehab" <mchehab+huawei@kernel.org>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <2816bd84651dcbfd0cd76bbc56e461bd409f9611.camel@collabora.com>
References: <20260819-rk3588-jpegdec-v1-0-33d74cdf369c@pengutronix.de>
 <20260819-rk3588-jpegdec-v1-5-33d74cdf369c@pengutronix.de>
 <2816bd84651dcbfd0cd76bbc56e461bd409f9611.camel@collabora.com>
Date: Thu, 20 Aug 2026 10:03:51 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_030355_852350_6FE80EA0 
X-CRM114-Status: GOOD (  12.07  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNi0wOC0xOSAxMTo0OCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBIaSBTYXNjaGEs
Cj4gCj4gTGUgbWVyY3JlZGkgMTkgYW/Du3QgMjAyNiDDoCAxMjozNyArMDIwMCwgU2FzY2hhIEhh
dWVyIGEgw6ljcml0wqA6Cj4gPiArLyogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCj4gPiArLyogUmVnaXN0ZXIgYnl0
ZSBvZmZzZXRzIGZyb20gZGVjX2Jhc2XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiArLyogLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCj4g
PiArCj4gPiArLyogUkVHMDogSVAgdmVyc2lvbiAvIHByb2R1Y3QgSUQgKi8KPiA+ICsjZGVmaW5l
IFZEUFU3MjBfUkVHX1ZFUlNJT04JCTB4MDAwCj4gPiArI2RlZmluZSBWRFBVNzIwX1BST0RfTlVN
CQlHRU5NQVNLKDMxLCAxNikKPiA+ICsjZGVmaW5lIFZEUFU3MjBfQklUX0RFUFRICQlCSVQoOCkK
PiAKPiBDYW4geW91IHNoYXJlIGEgZHVtcCBhbmQgc2hhcmUgdGhlc2UgcmVnaXN0ZXIgcmVzZXQg
dmFsdWVzLiBMb29raW5nIGF0IHRoZQo+IGxheW91dCwgY2xlYXJseSBpdHMgaGlnaGx5IG1vZGlm
aWVkLCBidXQgcHJvYmFibHkgZGVyaXZlZCBmcm9tIFZTSSBtdWx0aS1jb2RlYywKPiBidXQgSSdt
IHRoaW5raW5nIHBlcmhhcHMgd2UnbGwgbGVhcm4gbW9yZSBmcm9tIHRoYXQuIEl0cyBhbHdheXMg
bmljZSB0byBqdXN0aWZ5Cj4gd2hlbiBhZGRpbmcgbW9yZSBjaGlwcyB0aGF0IGFyZSBub3Qgc3Ry
aWN0bHkgVlNJIGRlc2lnbnMgKG9yIG1heWJlIGl0IGlzKSB0byB0aGUKPiBoYW50cm8gZGlydmVy
LgoKSGVyZSdzIGEgZnVsbCByZWdpc3RlciBkdW1wIHJpZ2h0IGFmdGVyIHJlc2V0OgoKMDAwMDAw
MDA6IGRiMWYwMDA1IDAwMDAwMDA0IDAwMTIwMDAwIDAwMDAwMDAwCjAwMDAwMDEwOiAwMDAwNDQw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAowMDAwMDAyMDogMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAKMDAwMDAwMzA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAw
MDAwMDAwCjAwMDAwMDQwOiAwMDAwMDBmZiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAowMDAw
MDA1MDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKMDAwMDAwNjA6IDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCjAwMDAwMDcwOiAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDBhOCAwMDAwMDAwMQowMDAwMDA4MDogMDAyMDAwMDAgMDAwODBmMDYgMDAwMDAwMDAg
MDAwMDAwMDAKMDAwMDAwOTA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCjAw
MDAwMGEwOiAwMDA0MDAwMCAwMDAwMTU1NiAwMDAwMDAwMCAwMDAwMDAwMAowMDAwMDBiMDogMDAw
MDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKLi4uCjAwMDAwM2YwOiAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
U3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5w
ZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAg
ICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVp
bSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
