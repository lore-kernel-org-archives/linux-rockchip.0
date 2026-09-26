Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3386C98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFu/bVJ6GyUzYQj57k5TjBkMyyR6LOwt1ms+GIUXjaI=; b=4QtrTTNxjWxOkK
	bGgVxHL/VrebBIROzY+mGqgpkAQMTeLsTMmglzQMY/VIei0jkiGQBzlBZ24M6YQ6MkzZqQdWxrNZG
	rAEZXBbK1g9c+QHqdq11fnX5EiwEx4koeyb7dCJH8cJq/1fALk5/HTpGRoDo7PAWp445ez9JePlDP
	jX6i8+Ga4OV2mZX3utNnOaM2ocf93XjByM0UWEBldqJO4CU4AeZHz089jgTztrFEwmNsf9A8q9era
	KhWH9QHq1sXfyh7RMc4nA23IToWrnLWv5krEWN5rYM24MEFLynqr3/YzuldnCiCOkmwwYFsTjlM0t
	YrpuQSM3uKEspMm5I2Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKew-0000000Ezj2-0dFm;
	Sat, 26 Sep 2026 05:09:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKeu-0000000EziR-2wek;
	Sat, 26 Sep 2026 05:09:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 22F9743E18;
	Sat, 26 Sep 2026 05:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36F871F000FF;
	Sat, 26 Sep 2026 05:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399352;
	bh=cwcHuq8u8FHk1FhGe1zoIDQ4d8vQB2fIMXLhU4nJyvo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mks3qAiBGR93ufgz/Xo+BYSXDzczpPlBZniZYq2OgkBMacrDNz9Oe8AFi0IMCxL3r
	 2xYo9pX2hPtn15inzJWMZkLli0QEFcQSajWd44u/rkVfXW4eHmiqqU1dfGu2dapBN7
	 50m0clm7/lE7QZnHRwX2G5wUzdU8r8di00MpJCclyGUsitXn9eKOZGuhEE0r0FHcCR
	 KEh6vwQEo7VfL83jDqCnRwWyt8hdQgK8GFXGf8nZWhHSUaQai7TK+vQReuWr/a4PeW
	 JDLtMfmphMbkHalT76BUVKvCEtFPQHB4sccXEAen0/2N2YnkEPv5J9puAyB4U+rfx7
	 Qeo909NLQX3qA==
Date: Sat, 26 Sep 2026 07:08:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 03/11] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
Message-ID: <5rmluc5rcni32h2f4yv63xvcfnavzfckibj3vls2spt5nnxynh@3bjtgsqhvm4j>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-3-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-3-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDZQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQ2hhbmdpbmcgdGhlIGNhYmxlIG9yaWVudGF0aW9uIHJlY29uZmlndXJlcyB0
aGUgbGFuZSBtdXhpbmcsIHdoaWNoCj4gcmVxdWlyZXMgcmUtaW5pdGlhbGl6aW5nIHRoZSBQSFku
IFdpdGhvdXQgdGhpcyBEUCBmdW5jdGlvbmFsaXR5Cj4gYnJlYWtzLCBpZiB0aGUgY2FibGUgaXMg
cmUtcGx1Z2dlZCB3aXRoIHN3YXBwZWQgb3JpZW50YXRpb24uCj4gCj4gVGVzdGVkLWJ5OiBJZ29y
IFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNp
Z25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
