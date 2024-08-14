Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9661C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/pHE4EzbUsC2M/rU0w9f6I1Wl8931ZbP3iaYUN1jkNQ=; b=Xr4Uy7D6oGz6r9
	wSjZ+ePzrvQEa8c+YC+vVydpWh2TbnbPaye2LyJgBt7d9tMrvqvYWgtCtk2Wn4G+jD78CEPaUIo8s
	+q03VqBC0JcLb1Rgq/GfHBsvYwKAP6Hy3ZOJCjwTnyoRMzq+mIfGnFykaFh9EvF4vAg5iVJOKx1Kr
	RDMRWRFW76P+b9opxVBRDgUVLRtX7evtm6pLgK0WDPNw6W8kQAFZm/PlBfSbjeUyu3zUULvgMhtKX
	MuLxJxoGrVqhHBJa2jiLG/EaNqmNE7kpxd0ggRn6KRLFvw2UfM62v80cl8ttWmgwnPt20kTr8lVuu
	sfBtDI9xV6futcKKFH6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMNo-00000008RNg-0T7J;
	Wed, 14 Aug 2024 22:22:20 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMMJ-00000008Qxg-0mwy;
	Wed, 14 Aug 2024 22:20:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674037; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=IVIwS2d5odoRB7LQs3KRC3ui9nfT5+8pGR6hW0PKzWQjtEHzUVIP9THB/iRe0c6DV9EVq6o+bqlqedwZyiqtxggfSHuvCavu9PoQqyeEAfNnJtydyDRBvLGRo5jHGTknQp+DkJ8UQRFpQBVsB7bqM11cu36mAWeGLqm347kVX7U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674037; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=jXwF5GXS2OQpmjcgp10hOfDqXTFm1+FqxL/OYRoaP74=; 
	b=H+kJMiXJG0zuwXGb5zhbCIQwI64uSZM0u8SMGca1pFtPu2SlWnwgtA3OrhDTCSDPPjIYs+Tcz3fnWzdOvCgGcmlBXvw5Fhbvf3oEVxN+vhoOxEr91UIGhCxS1oCa8qh1yOG0qtkbFTvFq38cyJsmrQv+mdhC5OQZjo97Dk512VQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674037;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=jXwF5GXS2OQpmjcgp10hOfDqXTFm1+FqxL/OYRoaP74=;
	b=X4B1oVqaB6h2Oq9rUOIFpZK3fpZ4TxxjrXMy+liPehBKyB2dI2IYZB+4rBNFVWgE
	diAOjS3D2C6v9WzdwqOktw0Z4Lf54YEB3oBLcwW8jV6RJKU3xU0sdib/VGSqFvzqhSd
	5iOPQR3HUXOafGXAtXLwfiMQrGpjSctLsGE5dpi0=
Received: by mx.zohomail.com with SMTPS id 1723674034407266.1561955146576;
	Wed, 14 Aug 2024 15:20:34 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v5 0/2] Add CRU support for rk3576 SoC
Date: Wed, 14 Aug 2024 18:19:21 -0400
Message-ID: <20240814222159.2598-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_152047_322155_F52B3140 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for clocks and resets on the rk3576.
Patches from downstream have been squashed and rebased.

The resets have been renumbered without gaps and their actual register/bit
information is set in rst-rk3576.c as it has been done for rk3588.

Changes since v4:
- Fix commit message with idx starting at 0
- Stash all bindings commits
- Cleanup example and add me as maintainer

Changes since v3:
- Add missing include in bindings

Changes since v2:
- Renumber IDs from 0
- Commit clock header with clock bindings
- Add missing resets on sub-cores
- Add redundant fields in bindings

Changes since v1:
- Remove reset defines that are probably out of the main core
- Separate resets and clocks bindings
- Renumber the resets without gaps

Detlev.

Detlev Casanova (1):
  dt-bindings: clock, reset: Add support for rk3576

Elaine Zhang (1):
  clk: rockchip: Add clock controller for the RK3576

 .../bindings/clock/rockchip,rk3576-cru.yaml   |   64 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rk3576.c             | 1819 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   53 +
 drivers/clk/rockchip/rst-rk3576.c             |  652 ++++++
 .../dt-bindings/clock/rockchip,rk3576-cru.h   |  592 ++++++
 .../dt-bindings/reset/rockchip,rk3576-cru.h   |  564 +++++
 8 files changed, 3752 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 drivers/clk/rockchip/rst-rk3576.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
