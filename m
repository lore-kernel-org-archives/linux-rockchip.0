Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8632C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 14:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFrYAoA58O/kRQ0XK/qZxrHWhKOWPPNbvA2dYjEf4Fc=; b=eXTe9a/5ehXOtf
	k3Fq1+1XUrKH956prhwU8sp3cX0INNAcKiVk4VjybU+wLcjMPD1cyLIcB619+FM2PeiNeSmCXfND0
	EyBD4dSvgvzrrMw/TiaT1c0WiFe+HY3cRrr9ZCVyHbdzZKUpQRW7y23uiSkoD04EeO5LKG6fhtrrh
	tVXQAKW2L3zw8+JswPlBVEO7AO3GlNEru5S0Md+v/o9eF/YjjRmFfVS93q101MPy1MEMpEzLovZKh
	9344z8NZWxPPoodKLImvHtSMAGPLJGp5e7RVH440BeHhlwIoiZ0I5Vuvxf9BYloD5eJvodzQbUx4+
	opdfMaVkUP5A7nZehd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzHB-000000060md-3P6P;
	Thu, 06 Aug 2026 14:40:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzH9-000000060lf-1skV;
	Thu, 06 Aug 2026 14:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FZIEzN2V2JqjGXOQM9wZT4ytUqP9hz4ZNtjjZVESahM=; b=whXNjc2ucP2u5Ow+eZETz+en0+
	bm7YJhpm2Vmh9ZlHytuQIpEb22PB7PBNlEo4Dsso+seWS96A4vfhgaH3AH+2i8f4mvPtg5esLvBVs
	9vt8EXEsu0zvu6UxxCFU5iLUqiECzPAJXNOJWIOHera45DHSMr6AS2VupOOJQgLW0uroACAibh6tA
	5VVuAQaqDitKveo+TK0bbCN1Jt8dfd6QnAeyqWEHkWzx7/Q6ML7kMiEjkjZF1sQlSEJDQe/x72DVF
	I0vSS9e3r7RUgcWdL7jXplqevUE5AZZb+BjIGPMx6GX6K38K3LTRG4/WSINe5sDCKQeFIHEavt7vv
	VLZ0BHwg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Samuel Holland <samuel@sholland.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, Pavel Machek <pavel@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 2/4] dt-bindings: vendor-prefixes: Add techvision
Date: Thu, 06 Aug 2026 16:40:42 +0200
Message-ID: <7021768.R56niFO833@diego>
In-Reply-To: <20260806143849.GP2869284@google.com>
References: <20260711192842.845048-3-samuel@sholland.org> <1954916.R1toDxpfAE@diego>
 <20260806143849.GP2869284@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_074051_501227_5DBB926C 
X-CRM114-Status: GOOD (  11.33  )
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

QW0gRG9ubmVyc3RhZywgNi4gQXVndXN0IDIwMjYsIDE2OjM4OjQ5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGVlIEpvbmVzOgo+IE9uIFdlZCwgMjkgSnVsIDIwMjYsIEhl
aWtvIFN0w7xibmVyIHdyb3RlOgo+IAo+ID4gSGkgTGVlLAo+ID4gCj4gPiBBbSBEb25uZXJzdGFn
LCAxNi4gSnVsaSAyMDI2LCAxMjo0MTo1OSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIExlZSBKb25lczoKPiA+ID4gT24gU2F0LCAxMSBKdWwgMjAyNiAxNDoyODoyNiAtMDUw
MCwgU2FtdWVsIEhvbGxhbmQgd3JvdGU6Cj4gPiA+ID4gVGVjaHZpc2lvbiBJbnRlbGxpZ2VudCBU
ZWNobm9sb2d5IENvLiwgTHRkWzFdIGFrYSBTaGVuemhlbiBIdWl3ZWkKPiA+ID4gPiBJbnRlbGxp
Z2VudCBUZWNobm9sb2d5IENvLiwgTHRkWzJdIGlzIGEgbWFudWZhY3R1cmVyIG9mIHNpbmdsZS1i
b2FyZAo+ID4gPiA+IGNvbXB1dGVycy4KPiA+ID4gCj4gPiA+IEFwcGxpZWQsIHRoYW5rcyEKPiA+
ID4gCj4gPiA+IFsyLzRdIGR0LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCB0ZWNodmlz
aW9uCj4gPiA+ICAgICAgIGNvbW1pdDogZjBlMDQxNzM3M2NhNTVkMDdjYmE1OTZlOGFmZTA4MWMw
Nzg4NDNhZAo+ID4gCj4gPiBJIGNhbid0IGZpbmQgbmVpdGhlciBwYXRjaDEgbm9yIHBhdGNoMiBp
biBuZWl0aGVyIHRoZSBMRURzIGdpdCBub3IKPiA+IGxpbnV4LW5leHQuIElzIHRoZXJlIGEgZ2l0
IHB1c2ggbWlzc2luZyBzb21ld2hlcmU/Cj4gCj4gSSBwdXNoZWQgdGhpcyBhIHdoaWxlIGFnby4g
IExldCBtZSBrbm93IGlmIHlvdSBzdGlsbCBjYW4ndCBmaW5kIGl0LgoKYWxsIGdvb2Qgbm93IC4u
LiBpdCBhcHBlYXJlZCBhIGRheSBvciB0d28gYWZ0ZXIgdGhhdCBtYWlsIG9uIGdpdC5rZXJuZWwu
b3JnCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
