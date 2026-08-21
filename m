Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67CFC5DF7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 06:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:In-Reply-To:
	Cc:To:Subject:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SarJL9k7DJUZemlu9vEsqStOCxmKJ+ve/i3D2/3R5d4=; b=4lKHzxkInIdafW
	Yht9K3TL656dLuPFCIVH3df6RX4QHAQITJvy7EoJb0Tta3A1GMNKSjCuwRs7A2mSsuUQHqaTHo2tg
	pyRJuirfMZI3D1zty8TTpBlM0ej1lDUy+GcRbIb1woy7aWHVQ/C7bb/gBS5JSs67VNaWxaaysmLvr
	J332yByWoty3Lh0kvNNh+aGvWwYOCilX070Cx18VBTBAulYxsI2z1lC14VVxRTOoVU65fJ4rNKRFX
	SERGvz8/SPeGAeNEwDQq1oHIze6Npr8oAjfPyUljNRL1D5mGV00jgI4KlG9CQD37kjsJOzmLTzxi8
	jUbe8m7K0l6fmo7mdKpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxIk1-0000000CcDM-1pTg;
	Fri, 21 Aug 2026 06:28:37 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxIjx-0000000CcCU-2hY1;
	Fri, 21 Aug 2026 06:28:36 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BFA3B2018C1;
	Fri, 21 Aug 2026 08:28:30 +0200 (CEST)
Message-ID: <6947a89b-8fa0-499a-9be8-c48d9bb5e7a7@pengutronix.de>
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
In-Reply-To: <61537689daa428a577e6bdab794d044f5405128e.camel@collabora.com>
References: <20260819-rk3588-jpegdec-v1-0-33d74cdf369c@pengutronix.de>
 <20260819-rk3588-jpegdec-v1-5-33d74cdf369c@pengutronix.de>
 <2816bd84651dcbfd0cd76bbc56e461bd409f9611.camel@collabora.com>
 <5436875c-9724-41f3-aaf9-76d43e05f0a8@pengutronix.de>
 <61537689daa428a577e6bdab794d044f5405128e.camel@collabora.com>
Date: Fri, 21 Aug 2026 06:28:30 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_232833_839146_E2506413 
X-CRM114-Status: GOOD (  23.47  )
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

T24gMjAyNi0wOC0yMCAxMjowMiwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBIaSBTYXNjaGEs
Cj4gCj4gTGUgamV1ZGkgMjAgYW/Du3QgMjAyNiDDoCAxMDowMyArMDAwMCwgU2FzY2hhIEhhdWVy
IGEgw6ljcml0wqA6Cj4gPiBPbiAyMDI2LTA4LTE5IDExOjQ4LCBOaWNvbGFzIER1ZnJlc25lIHdy
b3RlOgo+ID4gPiBIaSBTYXNjaGEsCj4gPiA+IAo+ID4gPiBMZSBtZXJjcmVkaSAxOSBhb8O7dCAy
MDI2IMOgIDEyOjM3ICswMjAwLCBTYXNjaGEgSGF1ZXIgYSDDqWNyaXTCoDoKPiA+ID4gPiArLyog
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tICovCj4gPiA+ID4gKy8qIFJlZ2lzdGVyIGJ5dGUgb2Zmc2V0cyBmcm9tIGRlY19i
YXNlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqLwo+ID4gPiA+ICsvKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gKi8KPiA+ID4gPiArCj4gPiA+ID4g
Ky8qIFJFRzA6IElQIHZlcnNpb24gLyBwcm9kdWN0IElEICovCj4gPiA+ID4gKyNkZWZpbmUgVkRQ
VTcyMF9SRUdfVkVSU0lPTgkJMHgwMDAKPiA+ID4gPiArI2RlZmluZSBWRFBVNzIwX1BST0RfTlVN
CQlHRU5NQVNLKDMxLCAxNikKPiA+ID4gPiArI2RlZmluZSBWRFBVNzIwX0JJVF9ERVBUSAkJQklU
KDgpCj4gPiA+IAo+ID4gPiBDYW4geW91IHNoYXJlIGEgZHVtcCBhbmQgc2hhcmUgdGhlc2UgcmVn
aXN0ZXIgcmVzZXQgdmFsdWVzLiBMb29raW5nIGF0IHRoZQo+ID4gPiBsYXlvdXQsIGNsZWFybHkg
aXRzIGhpZ2hseSBtb2RpZmllZCwgYnV0IHByb2JhYmx5IGRlcml2ZWQgZnJvbSBWU0kgbXVsdGkt
Y29kZWMsCj4gPiA+IGJ1dCBJJ20gdGhpbmtpbmcgcGVyaGFwcyB3ZSdsbCBsZWFybiBtb3JlIGZy
b20gdGhhdC4gSXRzIGFsd2F5cyBuaWNlIHRvIGp1c3RpZnkKPiA+ID4gd2hlbiBhZGRpbmcgbW9y
ZSBjaGlwcyB0aGF0IGFyZSBub3Qgc3RyaWN0bHkgVlNJIGRlc2lnbnMgKG9yIG1heWJlIGl0IGlz
KSB0byB0aGUKPiA+ID4gaGFudHJvIGRpcnZlci4KPiA+IAo+ID4gSGVyZSdzIGEgZnVsbCByZWdp
c3RlciBkdW1wIHJpZ2h0IGFmdGVyIHJlc2V0Ogo+ID4gCj4gPiAwMDAwMDAwMDogZGIxZjAwMDUg
MDAwMDAwMDQgMDAxMjAwMDAgMDAwMDAwMDAKPiAKPiBJJ3ZlIGxvb2sgYXJvdW5kIGFzIG11Y2gg
YXMgSSBjb3VsZCwgYW5kIGNvdWxkIG5vdCBmaW5kIGFueSBpbmRpY2F0aW9uIHRoYXQgdGhpcwo+
IGlzIGFuIElQIGZyb20gVlNJIG9yIGRlcml2ZWQgZnJvbSBhIFZTSSBjb3JlLiBJdCBpcyBlbnRp
cmVseSBkaWZmZXJlbnQgZnJvbQo+IHZkcHUxIGluIG1wcCAocHJvcGVyIEcxLCByazMyODggYW5k
IHNpbWlsYXIpIGFuZCB2ZHB1MiAobW9kaWZpZWQgRzEgLyBWRFBVMTIxKS4KPiBJbiBzaG9ydCwg
dGhpcyBpcyBub3QgYSBtdWx0aS1jb2RlYyBjb3JlLgo+IAo+IFNvIHRoYXQgYmFsbCBpcyBvbiB5
b3VyIGVuZCB0byBzaG93IHRoYXQgdGhpcyBkcml2ZXIgYmVsb25ncyB0byBoYW50cm8gcmF0aGVy
Cj4gdGhlbiBpdHMgb3duIGRyaXZlci4gSW4gYWJzZW5jZSBvZiBldmlkZW5jZSwgdGhpcyBkcml2
ZXIgc2hvdWxkIGJlIHBhcnQgb2YKPiByb2NrY2hpcCB2ZW5kb3IgZm9sZGVyLCBub3QgdnNpLiBE
b24ndCByZWFkIG1lIHdyb25nLCBJIHRydXN0IHRoYXQgeW91IGhhdmUKPiB0ZXN0ZWQgd2hhdCB0
aGUgTExNIGhhdmUgY2hvc2VuLCBidXQgYW55dGhpbmcgY2FuIGJlIGltcGxlbWVudCBpbiBIYW50
cm8gcmVhbGx5LAo+IGl0IGRvZXMgbm90IG1lYW4gaXQgc2hvdWxkIGJlIHRoZXJlLgoKSSB3b24n
dCBhcmd1ZSB0aGF0IHRoZSBkcml2ZXIgYmVsb25ncyB0byBoYW50cm8gYmVjYXVzZSBhcHBhcmVu
dGx5IGl0IGRvZXNuJ3QuCkkgZG9uJ3Qga25vdyB3aGVyZSB0aGUgZGVjaXNpb24gdG8gaW50ZWdy
YXRlIGl0IGludG8gaGFudHJvIGlzIGNvbWluZwpmcm9tLCBtYXliZSBqdXN0IGJlY2F1c2UgdGhl
IFJvY2tjaGlwIEpQRUcgZW5jb2RlciBpcyBhbHNvIHRoZXJlLgpBbnl3YXksIEknbGwgc3RhcnQg
d2l0aCBhIGZyZXNoIHNlcmllcyB3aXRoIGEgc3RhbmRhbG9uZSBkcml2ZXIuCgpQYXRjaGVzIDEt
MyBjb3VsZCBiZSB1c2VmdWwgb24gdGhlaXIgb3duIHRob3VnaCwgc28geW91IG1pZ2h0IHdhbnQg
dG8KdGFrZSB0aGVtLiBUaGV5IGFyZSB1bnRlc3RlZCBvbiByZWFsIEhhbnRybyBoYXJkd2FyZSwg
YnV0IEkgY291bGQgZ2l2ZQp0aGVtIGEgZ28gb24gdGhlIEpQRUcgZW5jb2Rlci4KClNhc2NoYQoK
Ci0tClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0s
IEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDkt
NTEyMS0yMDY5MTctNTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
