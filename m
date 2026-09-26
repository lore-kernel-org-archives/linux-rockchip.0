Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB40BC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyfwChPSrVm5M9T1JKyZPB9NIp6NZ+J7cxbekORcnKY=; b=PN9gno13HUdIdW
	jPLE93NV8Rj/DbC4/YtvCn6+vQv1uf9uoXIVKtpMTfdpiEw6yg5oTWi22TslnSEPXou/2g++4BWNe
	YpMkBXD39wOvJj3jYFvzIMKZwa+4pgphECWC3lJ0PftACigaB7gHQEAQ0P5yLQsRWJzCmGlCZeD2V
	Lihj669gMiwR7g1bqJV5Qq03ojprdrgegcbWYFDMBbjyGsxGKYNhCEvK1OpKfbulNU+VkQ1lq/fN3
	MNs+01j7X/wZ3osOix42r0mhQYvZr8lak9k95DRTxZ3Is8I6D37WgzdWIpopM1qngx/E2ZF0R2jGY
	MZPF2I/45DUvZxNobhhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKuo-0000000F1UN-2SkZ;
	Sat, 26 Sep 2026 05:25:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKum-0000000F1Tc-06ii;
	Sat, 26 Sep 2026 05:25:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A24984365F;
	Sat, 26 Sep 2026 05:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C761F000FF;
	Sat, 26 Sep 2026 05:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790400335;
	bh=frP9cwfXZdz8eO3e4ZwyLEzkE+nCZQAWARGxvCfxCYE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AEnjdFuF1jOT+nx6DQR7j+yh9ZBD9x33dJhOUVZ+2Vv7b2hN3K9x2Rc60hWHNAId3
	 MOHJFl4LjpzhffKJFtq2pGWEqcLwkFdknomuAU+EPhsMmnDOtvC2k93Saw/EzaOHV1
	 OpeDv30tnY2kdM+AxbBDUbmhr8DM2zfzHWMhGoQbtPOCJ4crHB9QsDk4St7TLv8Pi1
	 JTofkmFzpsaxdrjDBEcscjGJEdqKwa4SztC27jXr/q5X9TcDl9ESPciXJPVSGCm6hu
	 Rn9y/ork87F0LuB9KsdAA7slFpm7rqaDbcyy1VFkKHm1WHr0c1DWGAJddBgIaleQbm
	 2BPQnt5eZipAA==
Date: Sat, 26 Sep 2026 07:25:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 11/11] phy: rockchip: usbdp: Only enable USB3 when
 not in high-speed mode
Message-ID: <h7rddelztl3m3abqplfeir6irsctem2gqq4tl67gobpwa3upxg@uutr75zkg73h>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-11-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-11-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTRQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRW5zdXJlIHRoYXQgVVNCMyBtb2RlIGlzIG5vdCBhY2NpZGVudGx5IGVuYWJs
ZWQgZHVyaW5nIFBIWSByZS1pbml0Cj4gZm9yIHN5c3RlbXMgdGhhdCBhcmUgY29uZmlndXJlZCBh
cyBoaWdoLXNwZWVkIG9ubHkgdmlhIERULgo+IAo+IEZpeGVzOiAyZjcwYmJkZGViNDUgKCJwaHk6
IHJvY2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IFNh
c2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL3Nhc2hpa28u
ZGV2LyMvbWVzc2FnZS8yMDI2MDYyNjIxMjQyNC5DMjE1RTFGMDAwRTklNDBzbXRwLmtlcm5lbC5v
cmcKPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBP
cmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
