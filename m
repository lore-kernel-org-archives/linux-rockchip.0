Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F172C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 16:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kmrj54UUUnd2ilOOFb1f/h9nA0H13912GaqrgKMTXhw=; b=ZnaAzV4sJy95xS
	YGLVgo0spk9JsYG3lFRIk2PswwbufZVpXug04FYAnac6+at7F/xf4agbeiYeAsyW1S4AklCRimSmC
	PF6jsbB7qpx0QFE/kiJaVl2T04AVkyIpm65XCYt20egvtqxQV9yF2BcfyTwJ6891HB0cb8XsJpg3X
	UleebvCSMllz7pJ3I7tf6pUjOQfLhYIv3Yw+hJyOL0AiTHKRoGP9+G081UhrjVb842hc4Q+jL5KH4
	nNBrsqsMSeQw/Xsp01TpBU/CS2RI2i86vpLEg+aPDoQcNExKdjJEJMRREIXn6v2nlyLwA0udHifEE
	IQ2ZK0rejTvzI28KqwzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZwhx-005wUX-8k; Wed, 08 Mar 2023 16:32:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZwhn-005wSG-8P; Wed, 08 Mar 2023 16:31:56 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZwhM-0000cX-4d; Wed, 08 Mar 2023 17:31:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>,
 Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>, Michael Riesch <michael.riesch@wolfvision.net>,
 Maya Matuszczyk <maccraft123mc@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Tianling Shen <cnsztl@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date: Wed, 08 Mar 2023 17:31:36 +0100
Message-ID: <3188745.AJdgDx1Vlc@diego>
In-Reply-To:  <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
References:  <20230308063240.107178-1-anarsoul@gmail.com>
 <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
 <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_083155_319391_9962C6EF 
X-CRM114-Status: GOOD (  19.89  )
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

QW0gTWl0dHdvY2gsIDguIE3DpHJ6IDIwMjMsIDE3OjA5OjIwIENFVCBzY2hyaWViIFZhc2lseSBL
aG9ydXpoaWNrOgo+IE9uIFdlZCwgTWFyIDgsIDIwMjMgYXQgMzozMeKAr0FNIEtyenlzenRvZiBL
b3psb3dza2kKPiA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+ID4gPiBpbmRleCAzNWY3NGVkYTMwYWUuLjA4MTNhZDIyZGM3NiAxMDA2NDQKPiA+ID4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
Cj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbAo+ID4gPiBAQCAtMjAxLDYgKzIwMSwxMSBAQCBwcm9wZXJ0aWVzOgo+ID4gPiAgICAg
ICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9waS1yNHMtZW50ZXJwcmlzZQo+ID4gPiAgICAg
ICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQo+ID4gPgo+ID4gPiArICAgICAgLSBkZXNj
cmlwdGlvbjogRnJpZW5kbHlFbGVjIE5hbm9QaSBSNVMgYm9hcmQKPiA+ID4gKwo+ID4KPiA+IERv
ZXMgbm90IGxvb2sgbGlrZSBvcmRlcmVkIGFscGhhYmV0aWNhbGx5LiBBcmUgeW91IHN1cmUgdGhp
cyBpcyBjb3JyZWN0Cj4gPiBwbGFjZSBmb3IgaXQ/Cj4gCj4gSG1tLCBzdHJpY3RseSBzcGVha2lu
ZywgIkZyaWVuZGx5RWxlYyBOYW5vUGkgUjVTIGJvYXJkIiBzaG91bGQgZ28gaW4KPiBiZXR3ZWVu
IG9mICJGcmllbmRseUVsZWMgTmFub1BpIFIyUyIgYW5kICJGcmllbmRseUVsZWMgTmFub1BpNCBz
ZXJpZXMKPiBib2FyZHMiIGlmIHdlIHdhbnQgaXQgaW4gYWxwaGFiZXRpY2FsIG9yZGVyLCBub3Qg
YWZ0ZXIgIkZyaWVuZGx5RWxlYwo+IE5hbm9QaTQgc2VyaWVzIGJvYXJkcyIgbGlrZSBpbiB0aGlz
IHBhdGNoLiBCdXQgaXQgZG9lc24ndCBsb29rIG5pY2UKPiAoYmVjYXVzZSBSNVMgd2lsbCBnbyBi
ZWZvcmUgUjRTKS4KPiAKPiBUaGVyZSBpcyBhbHJlYWR5IHNpbWlsYXIgb3JkZXJpbmcgKGFscGhh
YmV0aWNhbC9jaHJvbm9sb2dpY2FsIGZvcgo+IG1vZGVsKSBmb3IgUmFkeGEgUm9jayBQaSAtICJS
YWR4YSBST0NLIFBpIFMiLCAiUmFkeGEgUm9jazIgU3F1YXJlIiwKPiAiUmFkeGEgUk9DSzMgTW9k
ZWwgQSIsICJSYWR4YSBST0NLIDUgTW9kZWwgQSIuCj4gCj4gSG93ZXZlciBpZiB5b3Ugd2FudCBt
ZSB0byBzb3J0IGl0IHN0cmljdGx5IGFscGhhYmV0aWNhbGx5LCBJIGNhbiBzZW5kIGEgdjIuCgpU
TDtEUjogSSB0aGluayB0aGUgZW50cnkgaXMgImp1c3QgcmlnaHQiIHdoZXJlIGl0IGN1cnJlbnRs
eSBpcyA6LSkKCi0gRnJpZW5kbHlFbGVjIE5hbm9QaSBSMlMKICAtPiB3b3VsZCBiZWNvbWUgIkZy
aWVuZGx5RWxlYyBOYW5vUGkyIHNlcmllcyBib2FyZHMiLCBfaWZfIHRoZXJlCiAgICAgIHdpbGwg
ZXZlciBiZSBzb21lIG90aGVycwotIEZyaWVuZGx5RWxlYyBOYW5vUGkgUjRTIGlzIGluY2x1ZGVk
IGluIHRoZQoJIkZyaWVuZGx5RWxlYyBOYW5vUGk0IHNlcmllcyBib2FyZHMiCgphbmQgc2ltaWxh
cmx5IHRoZSAiRnJpZW5kbHlFbGVjIE5hbm9QaSBSNVMgYm9hcmQiIHdvdWxkIGJlY29tZQoJIkZy
aWVuZGx5RWxlYyBOYW5vUGk1IGJvYXJkcyIKb25jZSB0aGV5IHJlbGVhc2UgbW9yZSB2YXJpYW50
cy4KW1Rob3VnaCB3ZSBjb3VsZCBnZXQgcmlkIG9mIHRoZSAiYm9hcmQiIGluIHRoZSBjdXJyZW50
IGVudHJ5XQoKQW5kIGp1ZGdpbmcgYnkgdGhlIGFtb3VuZCBvZiBkZXZpY2VzIFBpbmU2NCBkaWQg
b24gdGhlIHJrMzU2OC1iYXNlLApJIGd1ZXNzIGl0J3MgZmFpcmx5IGxpa2VseSB0aGF0IEZyaWVu
ZGx5QXJtIHdpbGwgcmVsZWFzZSBtb3JlIGluIHRoZSBmdXR1cmUKYXMgd2VsbCwgc28gdGhlIGN1
cnJlbnQgcG9zaXRpb24gc2VlbXMgZml0dGluZy4KCgpIZWlrbwoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
