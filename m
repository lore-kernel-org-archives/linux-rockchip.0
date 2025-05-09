Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4106FC3ABC5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 00:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2j/h29lJhvyroNPSpmM9UFRMV8HbVKFufTjdE5txjYI=; b=xyf5L/FIrUyJ2g
	xF5+o5cdHkOKZDfLIjf2dE2g0Eo2usy+GtDZtk8odhvHCuJdHCQ4R1JOQcGmyj1JcdO8y8aPf81Gp
	i/B4HAQ9DZrQDnirnqrgkFHYkA2bz7vUfdQn6fcFyde/VAugtv3gEdiQgdcJJ3Gx2+sCQQ4Hk1lpt
	EHJS4NMGBbVz0gZ5nhHWDg/TypJbjfmKza9RfLTYLTaU5Vphaba+LeU4eNX1kKWck4WByQawXqtn8
	tksgn7sv2BLID5DOI8qqWZdQH/deVzvHDlxoioFXN8ooalZ5J/SyF9wgRs6StcOSBVEVTUqpwqP56
	VnF2rC2mKAsJtn0AFPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBqp-000000027Fz-0Rv4;
	Fri, 09 May 2025 00:44:31 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBop-000000026jU-3Jt0;
	Fri, 09 May 2025 00:42:29 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9F2A5260FC;
	Fri,  9 May 2025 02:42:24 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jXVltKdRkjg; Fri,  9 May 2025 02:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746751343; bh=+rXAV48iJAiEuwfYBZeLEYqSDFPFw+FyIOe7/hH7PYM=;
	h=From:To:Cc:Subject:Date;
	b=GW2tYU+sFtyUp3DjWxDP/PJAZV8fhN1xL6nabCzCsJCxiMUOC7PyR3BL/jSI+jPHb
	 9z0qz7PMmHW07Rf9dOWzwPZViFxxjIBWKsfNMCEUC56fMZFYk/SeCUNqbV9E0JkQZc
	 RXFRf8WNGE28KUK/6I82OiwZ8JeIerH5tMUd5Tmj24RHnh07KvtEjYLbqpCn8Yyqj/
	 HbAqs50o0ye8qAokR8DbCIIC4qjFm6CM5pZ/pzKNgOvY/27c4FAiornmyWUktBjf62
	 eZTbIzax4TqnC14RccVDeuR5FLTq2bf2H1NXcTrCOaBh3jvQBzT4dmzcHBVemJ4LrJ
	 z3F/uC/On+3vQ==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Support RK3528 variant of Rockchip naneng-combphy
Date: Fri,  9 May 2025 00:41:17 +0000
Message-ID: <20250509004121.36058-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_174228_235380_54C8EC05 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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

Rockchip RK3528 ships a naneng-combphy that operates in either PCIe or
USB 3.0 mode. It has a similar control logic to previous generations of
naneng-combphy but an apparently different register layout.

This series prepares phy-rockchip-naneng-combphy.c for variants with a
different register layout and add RK3528 support.

Testing is done on both Radxa E20C and Radxa Rock 2A with downstream
devicetree changes, both USB 3 and PCIe modes are verified with mainline
driver and achives a reasonable link speed.

The devicetree change (PATCH 5) depend on v6 of the SD/SDIO series
("Support SD/SDIO controllers on RK3528")[1] for a clean apply. Thanks
for your time and review.

[1]: https://lore.kernel.org/all/20250508234829.27111-2-ziyao@disroot.org/

- Changed from v1
  - Collect review tags
  - Restyle RK3528 register definitions in the combphy driver
  - Drop unused include of phy.h in SoC devicetree
  - Link to v1: https://lore.kernel.org/all/20250508134332.14668-2-ziyao@disroot.org/

Yao Zi (5):
  dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
  dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
  phy: rockchip: naneng-combphy: Add SoC prefix to register definitions
  phy: rockchip: naneng-combphy: Add RK3528 support
  arm64: dts: rockchip: Add naneng-combphy for RK3528

 .../phy/phy-rockchip-naneng-combphy.yaml      |   5 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  22 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 746 +++++++++++-------
 4 files changed, 500 insertions(+), 274 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
