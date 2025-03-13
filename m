Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECCA3C35FF3
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 22:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPKFyr01YqZxCf2YallUUbgDMPklcfJwxjgbgwcKnHY=; b=nT5ePiCfOcXh3H
	5Rd2L7PTbHWEBX9LtxoDC24znorx6RN7tM+BlfnKXpotcVZDLu29413EDIzV2KxJytkb+KGUrRjYB
	5SeIUKZJp8jqP8Gs5cgm2K8RcSXG3Eu88ts64PEu2g5MqJCH+pDUTJdZAz7iol59VivOVVpSnHg6p
	A8VyvSUh0/6zbXUvS4wlCOKmPeiM6A/zdHP34d6LJqNcaa3FbBQyOnylXulhIQQmPbC9nKfc81eP9
	AQQmwKWUZZKsviBITGCgEaRcxv4byxSlj42k6fPZXyGVci+7t1p6Np40iyGcFsesEMLoxGe0BXjEI
	wB+ViMjg8K79H/VPye5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsqqY-0000000CbTL-2OWc;
	Thu, 13 Mar 2025 22:16:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsqos-0000000CbIy-14DN;
	Thu, 13 Mar 2025 22:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ayENqWRYykqKMSaDdgouWzzeeWpkub6h14X1CWsUIWY=; b=hbr+6sOMUOohmJsjF5BXVys2lg
	oAuBs8vSReUdYyq0GZhOT2JLtY1OqxHtEr/x+5UWWm6gv1s8mp0pJfTALrWhkrSglwOhiN4MDu9P3
	HMyRbLQvdy6BndmlF15t7lsziwXrqLiUQ3qeUAAtlpIuOVtrsIj1yvX76MNcduysfwTtMclHwZDE9
	o95TkLbPWNQxgDpskFxwkFzncrMHnoyj8lwD6RpWXqcb9uD+M0q0BwGv2yUGug5/kRC4CR2zXRRJD
	g3jFunuwzDFkcbuBmkkcy3NNdf8e1y0KelHXl5i4xSLU9AH6aydSqNfZGmJ5YcpUFh8RNOfXmktkJ
	0UnKXYaA==;
Received: from i53875bc6.versanet.de ([83.135.91.198] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsqoi-0002tC-Ns; Thu, 13 Mar 2025 23:14:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 jonas@kwiboo.se, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
Date: Thu, 13 Mar 2025 23:14:15 +0100
Message-ID: <1819496.VLH7GnMWUR@phil>
In-Reply-To: <20250313071031.1840032-1-amadeus@jmu.edu.cn>
References: <7779050.EvYhyI6sBW@phil> <20250313071031.1840032-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_151426_307334_44089600 
X-CRM114-Status: GOOD (  12.96  )
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

SGksCgpBbSBEb25uZXJzdGFnLCAxMy4gTcOkcnogMjAyNSwgMDg6MTA6MzEgTUVaIHNjaHJpZWIg
Q2h1a3VuIFBhbjoKPiBIaSwKPiAKPiA+IHNvIHllcyBvZiBjb3Vyc2UgdGhlIHBpbmN0cmwgbmVl
ZHMgdG8gYmUgZGVmYXVsdCAtIHNpbXBseSBiZWNhdXNlCj4gPiB0aGF0J3MgdGhlIG9ubHkgcGlu
Y3RybCBzdGF0ZSBtYWlubGluZSBzdXBwb3J0cy4KPiAKPiA+IEJ1dCBqdWRnaW5nIGJ5IHRoZSBm
YWN0IHRoYXQgeW91J3JlIGRpc2N1c3Npbmcgd29ya2luZyB2cy4gbm9uLXdvcmtpbmcKPiA+IGJl
bG93LCBjYW4geW91IHBsZWFzZSBjaGVjayBpZiB3ZSBzaG91bGQgZHJvcCB0aGUgcGF0Y2ggZm9y
IDYuMTUgdGlsbAo+ID4gdGhhdCBpcyBzb2x2ZWQ/Cj4gCj4gSSBzdWdnZXN0IGRyb3BwaW5nIHRo
aXMgcGF0Y2ggZmlyc3QsIEkgd2lsbCBzZW5kIHYyCj4gd2hlbiB0aGlzIGlzc3VlIGlzIHNvbHZl
ZC4KCkkndmUgZHJvcHBlZCB0aGUgcGF0Y2ggbm93LgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
