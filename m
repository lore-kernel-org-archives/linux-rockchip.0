Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F405BC77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pty5OGsBoGWQ474Hx76uGmE8VnfyPsFzauVQvRFliis=; b=u7WthHsYj2cq4C
	z7qBBFdoePboRFSE97F0oZMZtpeG4H7H2Ddtjoy6wJEUVrL2aSVnAuiOyhoYjWTfd+r96oJGZUqAv
	8fPgObDc6IW3SffYxxAkAHTlZKWdUEyTYApCAIdGBgSzIY+M8+ixk7P17HS7HAA3K7u1y7N6wb2sw
	09zxi0uDgPx0VSnOxL2rbgjA2cExbKrTwY0Xz9oorfbfhToCZeHc7SCaZBBjevnx+sEYciGp7coCv
	V7pOO2mk7AU9uPVelnGbiGWDQr7ylXYutujterJelKJWeCss4NsgBWYqFM45qbPYQQF2vNseMVLjc
	9zxGt680K/fLKVIz2vbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlAe-000Zb0-2d;
	Tue, 02 May 2023 08:15:36 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlAZ-000ZXM-0j;
	Tue, 02 May 2023 08:15:32 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id 0A58D5803C3;
	Tue,  2 May 2023 04:15:27 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Tue, 02 May 2023 04:15:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1683015327; x=1683022527; bh=ghjR7QqLTKl0Wa6Qp/pmJnR12EKA7bqxYQW
	ouqZ3mAY=; b=G/ReWH/CR4stPP8pBvKE2oH2tiIxeT1Y9djsugPvcan1vwLCNKB
	+CmHc2S3racpCMakxZ1qQRdhDmpzbTSxPsJLCIAsBgFwKTe+QJwmoUIe5cxfT6Wy
	tgZI7GBK40sokCJo7woyfvbYgCDiIcu9MJqEUid0mCHXVNlzPDjNZzJJBtLrLhF9
	X/mbJHalC7bJ1Xs6/CKvhniyT1ORP+ioH4B0Q9MMwa1hEm8wfe270mide7U5ucC4
	jYc1KiyRZtz0ezseY2LvXW4OKb5R6V9gMew5kODf8MnejtSKgLd/xIANaAqpsh7o
	O3SUD5day0+7MZzwDONO0PUZT+hvXwYxYyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1683015327; x=1683022527; bh=ghjR7QqLTKl0Wa6Qp/pmJnR12EKA7bqxYQW
	ouqZ3mAY=; b=Y/xWbzku7vrNHNzte8uy72nMxc+pbAIi4IeA/XfvwUvtiZV9Est
	bPyNKEthPJpnwnx5/Y68ss9jDEmHmeNI9uaomvywj4LEhNdN2/6OUB0Ap6qjjHvb
	OQIPRGrLOJBmcaLg/XgkHAzTOPE5Xwu/E3de9zryJ4QMstqpCG+bbbWHvXXdfXgL
	L+W8t5CYwFrU7f8XrnzjjIYPTrCSQ2/hUzXAWg8+DhkBUcIkmt6eVQO+8Sms9yZ1
	Z+nDtml+a4kCprv84LWaOxgu+YrgM2G6hBbX6r3CD52Qvxv2Jvyac8zhWROAt9xl
	Ftb8duEVIIhaiX5H6fsUSxaLGjuOvtdmUyw==
X-ME-Sender: <xms:nsZQZGG99LYs7t6dhgAngkbsv9osgUeFMS5nCv0_eqkMW790xp5pVg>
    <xme:nsZQZHXku8NWvKl4XxdR48yR-0RVaLsU5fwZmJq18kazWD7vv8gAEIoPKVDAKkTuy
    5prPVni2U8mfnd5sN8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedviecutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhepgeefjeehvdelvdffieejieejiedvvdfhleeivdelveehjeelteegudektdfgjeev
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnh
    gusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:nsZQZAK8fS_X5YYcPQ8tmCY5TK5FJ7gjlJsS0RCSCVoEK-Zwdrq3Yw>
    <xmx:nsZQZAFFLoJhNSVEvLGVyQfmt0zeZphfcdHG8-tw9pYY47GFwhKrNA>
    <xmx:nsZQZMUL4rbP96pvZI76ZCUHun2qRq8vNtMGMdc-nT5M5xb0isYJ2g>
    <xmx:n8ZQZPq1o7msWppgt2EUHhnFGcmwGcb09Ud671-g5_97NEtVzT49Eg>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 1C690B60086; Tue,  2 May 2023 04:15:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-374-g72c94f7a42-fm-20230417.001-g72c94f7a
Mime-Version: 1.0
Message-Id: <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
In-Reply-To:  <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
Date: Tue, 02 May 2023 10:15:03 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Rob Herring" <robh+dt@kernel.org>,
 "Geert Uytterhoeven" <geert@linux-m68k.org>,
 "Olof Johansson" <olof@lixom.net>
Cc: "Christian Marangi" <ansuelsmth@gmail.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_011531_540724_3E8F8DFB 
X-CRM114-Status: GOOD (  12.22  )
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

T24gVHVlLCBBcHIgMjUsIDIwMjMsIGF0IDE3OjU3LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBU
dWUsIEFwciAyNSwgMjAyMyBhdCAyOjI44oCvQU0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPj4gRG9lcyB5b3VyIHNjcmlwdCBhbHNvIGNhdGVyIGZv
ciAuZHRzIGZpbGVzIG5vdCBtYXRjaGluZyBhbnkgcGF0dGVybiwKPj4gYnV0IGluY2x1ZGluZyBh
IC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNoIGEgcGF0dGVybj8KPgo+IEkgYXNzdW1lIEkgYnVp
bHQgZXZlcnl0aGluZyBhZnRlciBtb3ZpbmcsIGJ1dCBtYXliZSBub3QuLi4KPgo+IFRoYXQncyBh
bGwganVzdCAiZGV0YWlscyIuIEZpcnN0LCB3ZSBuZWVkIGFncmVlbWVudCBvbiBhKSBtb3ZpbmcK
PiB0aGluZ3MgdG8gc3ViZGlycyBhbmQgYikgZG9pbmcgaXQgMS1ieS0xIG9yIGFsbCBhdCBvbmNl
LiBTbyBmYXIgd2UndmUKPiBiZWVuIHN0dWNrIG9uIGEpIGZvciBiZWluZyAndG9vIG11Y2ggY2h1
cm4nLgoKU29ycnkgZm9yIG1pc3NpbmcgbW9zdCBvZiB0aGUgZGlzY3Vzc2lvbiBsYXN0IHdlZWsu
IFRoZSBzY3JpcHQgc291bmRzCmZpbmUgdG8gbWUsIHRoZSBvbmx5IHJlYXNvbiBJIGRpZG4ndCB3
YW50IHRvIGRvIHRoaXMgaW4gdGhlIHBhc3QgaXMgdGhhdAp3ZSBoYWQgdGhlIHBsYW4gdG8gbW92
ZSBwbGF0Zm9ybXMgb3V0IG9mIHRoZSBrZXJuZWwgdHJlZSB0byBhbiBleHRlcm5hbApyZXBvc2l0
b3J5IGFuZCBJIHdhbnRlZCB0byBkbyB0aGlzIHBsYXRmb3JtIGF0IGEgdGltZSBhbmQgYWxzbyBv
bmx5IG1vdmUKZWFjaCBvbmUgb25jZS4gSSBkb24ndCB0aGluayB0aGF0IGlzIGdvaW5nIHRvIGhh
cHBlbiBhbnl0aW1lIHNvb24gbm93LApzbyBsZXQncyBqdXN0IGRvIHlvdXIgc2NyaXB0LgoKQ2Fu
IHlvdSBzZW5kIG1lIHRoZSBzY3JpcHQgYW5kL29yIGEgcHVsbCByZXF1ZXN0IG9mIHRoZSByZXN1
bHRpbmcKdHJlZSBiYXNlZCBvbiBteSBzb2MvZHQgYnJhbmNoPyBFdmVyeXRoaW5nIGlzIG1lcmdl
ZCB1cHN0cmVhbSwKYW5kIEkgdGhpbmsgZ2l0LW1lcmdlIHdvdWxkIGhhbmRsZSB0aGUgcmVtYWlu
aW5nIG1lcmdlcyB3aXRoIGFueQpvdGhlciBjaGFuZ2VzIGluIG1haW5saW5lLgoKICAgICAgICBB
cm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
