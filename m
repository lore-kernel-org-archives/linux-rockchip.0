Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC75C001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 18:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhQzpHwBzDxkvyCumkU7Ma/x5xslv9EtyinIPH2lp0w=; b=mHtY28kS+3Mbiz
	d34gZd1tEe7uLGrzobWB0mVwJuhviJIk4+2j3CAnVXAb6jvC8UbnOLRSQI1qfiXdMfcOh6tPDi4Cq
	GOOaG72djMUgnAr0pX6jOm4dbw8ouEscKkIIOJRdqGSOQvXc6oTw7P+Uu7gCQMTbD05D5z/KW6T5d
	yVUoePD2fKZh7pTy/KrYrlAgXdyudnom/QSpxn2ZVrJZO1JEtXwaV1TgwoD2Mwr1aPX1TWjlXaNW3
	NEtVBsqsqNW2aEBUHkKFLWGxv0ChLY1tIsA3Y0Kio5I4sJDnWIhZrkyACkJSV72u3IxeZ+kcuryi5
	MyyJmdeuwx01pWcWkm+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSE6-004XgQ-0Q;
	Fri, 28 Jul 2023 18:30:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSE3-004Xer-23;
	Fri, 28 Jul 2023 18:30:08 +0000
Received: from [185.230.175.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qPSDz-0000hp-L8; Fri, 28 Jul 2023 20:30:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Da Xue <da@lessconfused.com>,
 Christopher Obbard <chris.obbard@collabora.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, kernel <kernel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
Date: Fri, 28 Jul 2023 20:30:02 +0200
Message-ID: <4659362.yKVeVyVuyW@phil>
In-Reply-To: <8ec1c4bb97ba0857275a540590fb302929436ba4.camel@collabora.com>
References: <20230719122123.3702588-1-jagan@amarulasolutions.com>
 <CACdvmAia49_YiKpVvT=yeLWF+YGm+2vFK3rdwRB9XOAH5mm=-w@mail.gmail.com>
 <8ec1c4bb97ba0857275a540590fb302929436ba4.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_113007_680409_E60CF21D 
X-CRM114-Status: GOOD (  25.27  )
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

QW0gRGllbnN0YWcsIDI1LiBKdWxpIDIwMjMsIDEwOjAyOjIxIENFU1Qgc2NocmllYiBDaHJpc3Rv
cGhlciBPYmJhcmQ6Cj4gSGkgRGEsIEphZ2FuLAo+IAo+IE9uIFR1ZSwgMjAyMy0wNy0yNSBhdCAw
MzozOSAtMDQwMCwgRGEgWHVlIHdyb3RlOgo+ID4gT24gTW9uLCBKdWwgMjQsIDIwMjMgYXQgOTo1
NeKAr0FNIENocmlzdG9waGVyIE9iYmFyZAo+ID4gPGNocmlzLm9iYmFyZEBjb2xsYWJvcmEuY29t
PiB3cm90ZToKPiA+ID4gCj4gPiA+IE9uIFdlZCwgMjAyMy0wNy0xOSBhdCAxNzo1MSArMDUzMCwg
SmFnYW4gVGVraSB3cm90ZToKPiA+ID4gPiBUaGUgcG93ZXIgc3VwcGx5IGNpcmN1aXQgaW4gUk9D
LVJLMzM5OS1QQyBpcwo+ID4gPiA+IAo+ID4gPiA+IFBvd2VyIFN1cHBseSAob3IgUFBTKSA9PiBG
VVNCID0+IE1QODg1OQo+ID4gPiA+IAo+ID4gPiA+IFZVQlMgcGluIG9mIEZVU0IgYW5kIElOIHBp
biBvZiBNUDg4NTkgaXMgc3VwcGxpZWQgdmlhIFRZUEVDX0lOLgo+ID4gPiA+IAo+ID4gPiA+IFRo
ZSBNUDg4NTkgb3BlcmF0ZWQgd2l0aCAyLjhWIHRvIDIyViBzdXBwbHkgdm9sdGFnZSBhbmQgdHlw
aWNhbAo+ID4gPiA+IGFwcGxpY2F0aW9ucyB0aGlzIHN1cHBseSBjYW4gYmUgMTJWLgo+ID4gPiA+
IAo+ID4gPiA+IFRoaXMgcGF0Y2ggaXMgdHJ5aW5nIHRvIHN1cHBvcnQgdGhlIFBEIGJ5IGNoYW5n
aW5nIHRoZSBGVVNCIFZCVVMgc3VwcGx5Cj4gPiA+ID4gdG8gMTJWIGFuZCB0dW5lIHRoZSBJMkM3
IHRpbWluZ3MgZnJvbSBkb3duc3RyZWFtIGtlcm5lbC4KPiA+ID4gPiAKPiA+ID4gPiBUZXN0ZWQg
d2l0aCBQRDMuMCBQUFMgd2l0aCBzdXBwbHkgdm9sdGFnZXMgb2YgMTJWLzNBIGFuZCAyMFYvNUEu
Cj4gPiA+IAo+ID4gPiBIaSBKYWdhbiwKPiA+ID4gCj4gPiA+IFRoaXMgc2VyaWVzIHdvcmtzIGZp
bmUgd2l0aCBhICJkdW1iIiAobm8gUEQgbmVnb3RpYXRpb24pIDUuMVYgUmFzcGJlcnJ5IFBpIFBT
VS4KPiA+ID4gCj4gPiA+IEl0IGFsc28gd29ya3MgZmluZSB3aXRoIGEgRGVsbCA0NVcgVVNCLUMg
TGFwdG9wIFBvd2VyIFN1cHBseSAobW9kZWwgQUE0NU5NMTcwKSB3aGljaCBwcm92aWRlcyA1VkAz
QSw5VkAzQSwxNVZAM0EsMjBWQDIuMjVBLCB3aGVyZSBMaW51eCBtYXN0ZXIgZmFpbHMgYW5kIGp1
c3QgdGVsbHMgdGhlIFVTQi1QRCBQU1UgdG8gcG93ZXItb2ZmLgo+ID4gCj4gPiBJIHRoaW5rIHRo
aXMgZGVwZW5kcyBvbiB0aGUgcmVjZW50IFJvY2tjaGlwIFRDUE0gY2hhbmdlcy4gRlVTQjMwMiBo
YXMKPiA+IGJlZW4gYSBwYWluIGluIHRoZSBVU0Igb3IgZWxzZSB0aGlzIHBsYXRmb3JtIHdvdWxk
IGhhdmUgbGF1bmNoZWQgYSBsb3QKPiA+IGxvbmdlciBhZ28uCj4gCj4gU29ycnksIEkgd2FzIHRl
c3RpbmcgdGhpcyBwYXRjaCBvbiB0b3Agb2YgbmV4dC0yMDIzMDcyNCB3aGljaCBpbmNsdWRlcyBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvbGlzdC8/
c2VyaWVzPTc1Nzc1MjoKPiAKPiAgOGJlNTU4ZGNmZmU2OWIwNzhiMzRiMWZhOTNiODJhY2FmNGNl
NDk1NyAoInVzYjogdHlwZWM6IHRjcG06IGFkZCBnZXQgbWF4IHBvd2VyIHN1cHBvcnQiKQo+ICAx
ZTM1ZjA3NDM5OWRlY2U3M2Q1ZGYxMTg0N2Q0YTBkN2E2ZjQ5NDM0ICgidXNiOiB0eXBlYzogdGNw
bTogZml4IGNjIHJvbGUgYXQgcG9ydCByZXNldCIpCj4gCj4gQ2FuIHlvdSBjaGVjayBpZiBJIGFt
IG1pc3NpbmcgYW55IG90aGVyIHBhdGNoZXMgPwoKc28gSSBndWVzcyB0aGUgcXVlc3Rpb24gaXMs
IGFyZSB0aGVyZSBhbnkgbmV3IGNsdWVzIGFuZC9vciBkb2VzIHRoaXMgcGF0Y2gKbWFrZSB0aGUg
c2l0dWF0b24gYmV0dGVyIG9yIHdvcnNlIGZvciB0aGUgcm9jLXJrMzM5OS1wYyBib2FyZCBhcyBp
dCBzdGFuZHMKbm93LgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
