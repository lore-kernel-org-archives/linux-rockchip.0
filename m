Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71343C7EE22
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 11:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hJYYqFhxSiDuh88aAW0abUrCeZx69vmnHmm7Uzi0nI=; b=vtpsIsyjtRVbk5
	FRxQ9jlB9FrMLG2dzqqGymkd7FKzniDgFyKl36J6Gqyup9uc4oOWOmxNCtwjiX/SUoGyph+6pIKvU
	nI73Ck/9Alzvrj2EdtgictvntTydUn1kCAhHSRj+mQIjGyIQkT3L55vLGSsDMmTx6qQkwr9MgmUIw
	VeEL4WTv4tOHXMLPaQwW2T6HMnTGSi8TpSjE4UN60oPVpvVP71O9JQYIBi1IfZ1m2b2EHe0THkadC
	zD+QniToCT97AlZouuQ25JGu6tfgpKVBwNqI5VhtCsB9qd8jDv9e6V3zxDbfn/Unh3BNgC9odpoHE
	RzssaR5D68+qrdQ64EeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puAFs-004L5F-2O;
	Wed, 03 May 2023 11:02:40 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puAFn-004L2n-0k;
	Wed, 03 May 2023 11:02:36 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.west.internal (Postfix) with ESMTP id 6C7392B0671E;
	Wed,  3 May 2023 07:02:32 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Wed, 03 May 2023 07:02:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1683111752; x=1683118952; bh=MMamfdw2Idw7oZk+/E3mvL+dBo0TUHD8cWv
	2z+u/0pc=; b=WBctjyvS2xYVsNx/PXLCezyBfk6d0fNGJLAbjyR93iv+JntYfRw
	1FknZqmA6tsFPUoOxwPIzC92Rp5Y6yMCdnzeprisuAEmk/2FwjwhujnyjmXpkimB
	SppIL5oaBfr59F6AzPecb7p3PngCPKwbucj2v1SwZaiAn0b8V6yRvxWIATOoB1yT
	kTJFFdKrKoLxDca9M6vO2wD00yP0v9E+Y6cH9ws5eKi/SUd2UHkyPleSrFe3oyLX
	8GenDC9VkDzpl0DM3D3MJqCCidmbvb4oXCVvEsbwuVU7zsrm1wOjex4kRkPwyRT1
	Y3o5kMbVVaclWgwF5PhZKyT7r7Y+YHslZ1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1683111752; x=1683118952; bh=MMamfdw2Idw7oZk+/E3mvL+dBo0TUHD8cWv
	2z+u/0pc=; b=AH+K36zaN4zYugn+q+n765d7RqYhBnYAkyeBKpd/jUwnO4cc17N
	sOtk4fgnjqgBRejjoUPfmgWTaKFP4N6l86PC9yWkTl7qSHDYKt8zUNrMJm7hgsac
	MAKOY5kQ55a0V+cd6KgpG+xKpJy4SWbnKyPbmZiW4Z0r+3tL/pAww5DKoBXtHvDI
	i273D40wtniWtgLX4sC5ApVUdClgCvIzPssLKxyAw/v9JuPv2gH8vOUO3lADSDBb
	NaXuK10560hVSSAb2s815TRFlAaY6HIsVEB4nLwDJq5pD3D+mqkoaNJij4p9s68c
	FZWuHfNk6rEKY5SsKc3Dqj2x0oLyHX/paVw==
X-ME-Sender: <xms:Rj9SZKlTTnbDiHX55Z0zVK4RRHqTtD34Ic0kr9gu8LXRZUd5vW1sNQ>
    <xme:Rj9SZB2RRbTSlfnvoyCiq-CjuDURcGdNgs5GoDJl4qCHFJ5-ZHoIvp9bWKCYjpXN-
    ODT0WgrXyw40LeC0sc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvkedgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:Rj9SZIovGybcnhaYiLbWAMPNr2wtxMzL-NEtbKfgejz2jVx79Q3BOw>
    <xmx:Rj9SZOmlZGrdb2-rGVi2XdPxahue8H13hkdPES4NDGwCeY-jXgd-ew>
    <xmx:Rj9SZI2--fY13skOLwZ1x9wt_VRgsao0yXJv8XyToKLEhPijWfOSBw>
    <xmx:SD9SZMJstDJSwk6E9VhGeSPmli8W6KuMDF8H4lCfg1AWmdfP8FfC5WnUfw0>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B77FBB6008D; Wed,  3 May 2023 07:02:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-386-g2404815117-fm-20230425.001-g24048151
Mime-Version: 1.0
Message-Id: <99b49e6b-e963-415a-a2c9-72505087833c@app.fastmail.com>
In-Reply-To:  <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
Date: Wed, 03 May 2023 13:02:10 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Rob Herring" <robh+dt@kernel.org>
Cc: "Geert Uytterhoeven" <geert@linux-m68k.org>,
 "Olof Johansson" <olof@lixom.net>,
 "Christian Marangi" <ansuelsmth@gmail.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com,
 linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_040235_299008_AB6D610A 
X-CRM114-Status: GOOD (  12.54  )
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

T24gVHVlLCBNYXkgMiwgMjAyMywgYXQgMjE6NDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFR1
ZSwgTWF5IDIsIDIwMjMgYXQgMzoxNeKAr0FNIEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+
IHdyb3RlOgoKPiB2ZW5kb3JfbWFwID0gewo+ICAgICAnYWxwaGFzY2FsZScgOiAnYWxwaGFzY2Fs
ZScsCj4gICAgICdhbHBpbmUnIDogJ2FscGluZScsCgpJIHdvdWxkIG1ha2UgdGhpcyBvbmUgJ2Ft
YXpvbicgaWYgd2UgZ28gd2l0aCBjdXJyZW50IG1hbnVmYWN0dXJlcnMuCgo+ICAgICAnbnNwaXJl
JyA6ICduc3BpcmUnLAoKbnNwaXJlIGlzIHRoZSBuYW1lIG9mIHRoZSBlbmQtdXNlciBwcm9kdWN0
LCBzbyB0aGF0IGRvZXNuJ3QgcXVpdGUKZml0LiBUaGUgU29DIHdhcyBhcHBhcmVudGx5IGFuIExT
SSBsb2dpYyBaZXZpbywgd2hpY2ggaXMgbm93IG93bmVkCmJ5IEJyb2FkY29tLgoKPiAgICAgJ212
ZWJ1JyA6ICdtYXJ2ZWxsJywKPiAgICAgJ21tcCcgOiAnbWFydmVsbCcsCj4gICAgICdiZXJsaW4n
IDogJ2JlcmxpbicsCgpXaGlsZSBiZXJsaW4gaXMgcmVsYXRlZCB0byBweGEvbW1wLCB0aGlzIG9u
ZSBpcyBub3cgb3duZWQKYnkgU3luYXB0aWNzLCBhbmQgdGhlIDY0LWJpdCB2ZXJzaW9ucyBhcmUg
YWxyZWFkeSBpbiB0aGUKc3luYXB0aWNzIHN1YmRpciwgc28gSSdkIGdvIHdpdGggdGVoIHNhbWUg
aGVyZS4KCj4gICAgICdvcGVuYm1jJyA6ICdhc3BlZWQnLAo+ICAgICAnZW43JyA6ICdhaXJvaGEn
LAoKYWlyb2hhIGlzIGEgc2VwYXJhdGUgY29tcGFueSBub3csIGJ1dCB0aGUgaGFyZHdhcmUgaXMg
c3RpbGwKc2hhcmVkIHdpdGggbWVkaWF0ZWssIHNvIHdlIGNvdWxkIGNvbnNpZGVyIGx1bXBpbmcg
aXQgaW50bwp0aGF0IHN1YmRpciwgYnV0IGEgc2VwYXJhdGUgb25lIG1heSBiZSBiZXR0ZXIgbG9u
Zy10ZXJtLgoKPiAgICAgJ2dlbWluaScgOiAnZ2VtaW5pJywKClRoaXMgb25lIGlzIGFsc28gYSBw
cm9kdWN0IG5hbWUsIG5vdCBhIGNvbXBhbnkuIEFwcGFyZW50bHksCmdlbWluaSB3YXMgb3JpZ2lu
YWxseSBtYWRlIGJ5IFN0b3JtIFNlbWljb25kdWN0b3IsIGFuZCB0aGVuCmJ5IENvcnRpbmEsIHdo
aWNoIHdhcyBzdWJzZXF1ZW50bHkgYWNxdWlyZWQgYnkgSW5waGksIGFuZCB0aGF0IGVuZGVkCnVw
IGluIE1hcnZlbGwgYWZ0ZXIgdGhlIHByb2R1Y3Qgd2FzIGFscmVhZHkgZGlzY29udGludWVkLgoK
T3V0IG9mIHRoZSBmb3VyLCBJJ2QgcHJvYmFibHkgZ28gd2l0aCAnY29ydGluYScgYXMgdGhlCmRp
cmVjdG9yeSBuYW1lLgoKPiAgICAgJ21lc29uJyA6ICdtZXNvbicsCgotPiBhbWxvZ2ljCgo+ICAg
ICAnbW94YScgOiAnbW94YScsCj4gICAgICdtc3RhcicgOiAnbXN0YXInLAoKLT4gc2lnbWFzdGFy
Cgo+ICAgICAnbnV2bycgOiAnbnV2b3RvbicsCj4gICAgICdscGMnIDogJ2xwYycsCgotPiBueHAK
Cj4gICAgICdsYW45NicgOiAnbWljcm9jaGlwJywKPiAgICAgJ293bCcgOiAnYWN0aW9ucycsCj4g
ICAgICdveDgnIDogJ294c2VtaScsCj4gICAgICdyZGEnIDogJ3JkYScsCgotPiB1bmlzb2MKCj4g
ICAgICdydGQnIDogJ3JlYWx0ZWsnLAo+ICAgICAncjcnIDogJ3JlbmVzYXMnLAo+ICAgICAncjgn
IDogJ3JlbmVzYXMnLAo+ICAgICAncjknIDogJ3JlbmVzYXMnLAo+ICAgICAnZW1ldjInIDogJ3Jl
bmVzYXMnLAo+ICAgICAnc2g3M2EnIDogJ3JlbmVzYXMnLAo+ICAgICAnZ3ItJyA6ICdyZW5lc2Fz
JywKPiAgICAgJ2l3ZycgOiAncmVuZXNhcycsCj4gICAgICdyaycgOiAncm9ja2NoaXAnLAo+ICAg
ICAncnYxMScgOiAncm9ja2NoaXAnLAo+ICAgICAncm9ja2NoaXAnIDogJ3JvY2tjaGlwJywKPiAg
ICAgJ3NvY2ZwZ2EnIDogJ3NvY2ZwZ2EnLAoKLT4gaW50ZWwKCj4gICAgICdzdG0nIDogJ3N0bTMy
JywKPiAgICAgJ3N0aScgOiAnc3RpJywKPiAgICAgJ3N0LXBpbicgOiAnc3RpJywKPiAgICAgJ3N0
ZScgOiAnc3QtZXJpY3Nzb24nLAo+ICAgICAnc3BlYXInIDogJ3NwZWFyJywKCkkgd291bGQgcHV0
IGFsbCBmaXZlIG9mIHRoZXNlIGludG8gJ3N0Jy4gVGhlIHV4NTAwIHdhcyBkZXZlbG9wZWQKaW4g
c3QtZXJpY3Nzb24sIGJ1dCBsYXN0IHNvbGQgYnkgc3QsIGFuZCB0aGUgb3RoZXIgb25lcyBhcmUg
YWxsCm9yaWdpbmFsIHN0IHByb2R1Y3RzLgoKICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
