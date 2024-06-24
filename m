Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17A76C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 19:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcD0Hn7VDLlgABrpSjydJGSyFtYxiavVgj+Gv6cipOI=; b=dBV6ncZzQhpQQ7
	MremztdHl1O3DZ4t5mpwYyb1l3D0KsdoHzBdui5zu8Kc2AIPo2qaZcZhvD2PNTaxnk8/QneFosk66
	QA+6fqjll6X8aC755Q3PC+xkVDMeNsykRmUwFU+KFy4z1ntWRoFpx2UhJrieo++/6k4k7C8y/Rj9f
	lOsPp9VHP6GC45MDE1V5C08V5xYXLV3uJ3kl9YooVMpF2RcoER8xtKSfgNeABnmFNkiUo8tykW3/G
	vjduxKt5lUYcFs472+0jS+yytyv6WVxO2oYqmwY/lYaVJKiM6HxYxLQYrAJZjoTazZPaJEGZlt7/X
	RQlIdN4Mqr7TrQKC61qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLpYn-00000000Sf1-0UGo;
	Mon, 24 Jun 2024 19:41:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLpYk-00000000SeL-0ozo;
	Mon, 24 Jun 2024 19:41:04 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLpYg-0003zr-Kf; Mon, 24 Jun 2024 21:40:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
Date: Mon, 24 Jun 2024 21:40:57 +0200
Message-ID: <4778243.neEnAmRlxL@diego>
In-Reply-To: <84e5719fad4d405bf188ee86d12bb251@manjaro.org>
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
 <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
 <84e5719fad4d405bf188ee86d12bb251@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_124102_253583_C97D6552 
X-CRM114-Status: GOOD (  20.73  )
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

QW0gTW9udGFnLCAyNC4gSnVuaSAyMDI0LCAyMDowNjoxOSBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNp
bWljOgo+IEhlbGxvIEFsZXhleSwKPiAKPiBPbiAyMDI0LTA2LTI0IDE5OjU5LCBBbGV4ZXkgQ2hh
cmtvdiB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDI0LCAyMDI0IGF0IDk6NTXigK9QTSBEcmFnYW4g
U2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gCj4gPiB3cm90ZToKPiA+PiBKdXN0IGNoZWNraW5n
LCBhcmUgdGhlcmUgYW55IGNvbW1lbnRzIG9uIHRoaXMgcGF0Y2g/ICBJcyB0aGVyZSAKPiA+PiBz
b21ldGhpbmcKPiA+PiBtb3JlIEkgY2FuIGRvIHRvIGhhdmUgaXQgYWNjZXB0ZWQ/Cj4gPiAKPiA+
IEhlaWtvIGhhcyBhbHJlYWR5IGFwcGxpZWQgaXQgcXVpZXRseSBhIGNvdXBsZSBvZiBkYXlzIGFn
byBbMV0sIGFuZAo+ID4gYWxzbyBtZXJnZWQgdGhlIHY1IHRoZXJtYWwgYW5kIE9QUCBjb2RlIHRo
YXQgSSByZWJhc2VkIG9uIHRvcCBvZiB0aGlzCj4gPiBwYXRjaCBvZiB5b3Vycy4KPiAKPiBZZXMs
IEkgc2F3IHRoYXQgYWxyZWFkeSwgYnV0IHRoaXMgcGF0Y2ggaXMgYSBkaWZmZXJlbnQgb25lLCBp
dCdzIGFib3V0Cj4gZGVsZXRpbmcgdGhlIHJlZHVuZGFudCAuZHRzaSBmb3IgUkszMzk5UHJvLiA6
KQoKdGhhbmtzIGZvciB0aGUgcmVtaW5kZXIsIHNvbWVob3cgSSBvdmVybG9va2VkIHRoaXMgb25l
IGluIG15IHBhdGNocnVuCnRvZGF5LgoKPiBSZWdhcmRpbmcgeW91ciB2NSwgSSd2ZSBoYWQgc29t
ZSBoZWFsdGggaXNzdWVzLCBzbyBJIHVuZm9ydHVuYXRlbHkgCj4gaGF2ZW4ndAo+IG1hbmFnZWQg
dG8gcmV2aWV3IGl0IGFuZCB0ZXN0IGluIGRldGFpbCB5ZXQuICBJJ2xsIGRvIHRoYXQgYXMgc29v
biBhcyAKPiBwb3NzaWJsZSwKPiBhbmQgSSdsbCBjb21lIGJhY2sgd2l0aCBhbnkgY29tbWVudHMg
SSBtaWdodCBoYXZlLgoKaWYgeW91IGhhdmUgY29tbWVudHMsIHBsZWFzZSBzZW5kIGZvbGxvdy11
cCBwYXRjaGVzIDotKQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
