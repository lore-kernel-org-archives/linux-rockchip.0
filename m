Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 025E8C4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwTJP1OZIZRehI//REWThmoIK68KybQgNVW6EQy6CCA=; b=Z5cs6Ik2MOWbAA
	5z15T2hIeM+I3eaKuqCE2i6c2hF4cGFN9ufkWTGa9jKweX5Ktad4JGOToliyVGYMqMa7c4D3C6Nhi
	3hHZ9i6CkexUUYPk4GeFrw4zfKArNG+mhap6RlaXtNGDXzBVA1XrWTMyY7PcyrCKOn7RMKlroaMBj
	lGyB6a3PtAPz6hQmyvKJ6eb8w8gcEUn+BwNIhDmJR5/Oxmz6AgctHSEJ2Y4r4IdSCdBH5LI00gqna
	Kaa6eoL9g6g1bee9d48mMYfMPn7JFOKl3TLoOngdyOODRj0FVH9dr0pzDB0LnHpGBAnFKDoAgcD8Q
	U8IioPVNu30t4ABXTssw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbQV-00000006gnF-45Q0;
	Mon, 12 Feb 2024 18:53:11 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbQS-00000006glA-0ZSe;
	Mon, 12 Feb 2024 18:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707763986;
	bh=7nBNtyOe9B7di3tlfXkDPiWXRmeY0kYi18klzwAbx7M=;
	h=From:Subject:Date:To:Cc:From;
	b=pqnR+JiLiFvgv1Kduw36CAl7PtOEjrU2Qg1ijPxf8BpEuVsk6/mFsV6Dnc/y6xEzv
	 z2DUMWYek26avU3H837Uh2E89fLMSxkcgn0Z+w5cZWYLKTJYNFpLUPOah44HM4fZBs
	 R7RcYFqdQQpvOnptNofsr5L16RVzML/J183dPhyRQoQPOrCcMDxB5po8iT4KCrraMz
	 +NoRMIelwcoPGJl35Q3fJFb7m9raQRu/xsgG+6oKJ2ANtsMXIKOBLAiE00FIueZRPj
	 Ha8EOtzYqHDp9LD1/lI1YufgREeYc6UUaq599MI0gD6I3BDUZz9Y1M3TKWBANXSS4D
	 9xVuSSR2LrZSw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 977C63782059;
	Mon, 12 Feb 2024 18:53:06 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 0/2] Add support for RK3588 HDMI/eDP Combo PHY
Date: Mon, 12 Feb 2024 20:52:28 +0200
Message-Id: <20240212-phy-hdptx-v3-0-2cde680cd024@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOxoymUC/6WPQQ6CMBBFr2K6dshMqVJceQ/jYijFNkFKSkM0h
 Ltb3GjcunzJn/f/LGKy0dtJnHaLiHb2kw9DhnK/E8bxcLPg28xColRIUsPonuDaMT1Ac625OWJ
 L2oqcH6Pt/OPtulwzdzHcIblo+ctANdWlxmNBWKIkBQQm+il5Hgrjg+E+WT6b0PfchMiFCffN7
 XIkxOd75kxbwx++bdwsPxKJh6+3ZgkIXNEBNSmDqvq9Xtf1BbKtoQc3AQAA
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, kernel@collabora.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-a684c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105308_336970_D4E9B264 
X-CRM114-Status: GOOD (  10.76  )
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

Add driver and bindings to add initial support the Rockchip HDMI/eDP TX
Combo PHY found on RK3588 SoC.

The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
and eDP links.

Please note that currently only the TMDS related functionality has been
implemented.  This has been tested on Radxa ROCK 5B and Rockchip EVB1
boards.

Changes in v3:
- Collected R-b & T-b tags from Heiko
- Converted all *_REG() args to lowercase (Vinod)
- Dropped unnecessary register read/write wrappers (Vinod)
- Added rate overflow check in hdptx_phy_clk_pll_calc() (Luis)
- Link to v2:
  https://lore.kernel.org/r/20240205-phy-hdptx-v2-0-a7150814c047@collabora.com

Changes in v2:
- Rebased series onto next-20240129
- Removed patch 'dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon'
  already applied by Heiko
- For consistency with SoC TRM, replaced all references to DP with eDP
- Updated PHY schema per Krzysztof's review; also collected his R-b tag
- Dropped FRL, EARC and 10-bit color depth functionality until the HDMI
  configuration options become available in PHY API
- Squashed lots of regmap_write operations via regmap_multi_reg_write
  (Sebastian)
- Introduced parametrized {CMN|SB|LNTOP|LANE}_REG() macros to replace
  the long list of register defines
- Optimized handling of the config arrays by using ARRAY_SIZE() (Sascha)
- Link to v1:
  https://lore.kernel.org/r/20240119193806.1030214-1-cristian.ciocaltea@collabora.com

---
Cristian Ciocaltea (2):
      dt-bindings: phy: Add Rockchip HDMI/eDP Combo PHY schema
      phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver

 .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    |   91 ++
 drivers/phy/rockchip/Kconfig                       |    8 +
 drivers/phy/rockchip/Makefile                      |    1 +
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c  | 1028 ++++++++++++++++++++
 4 files changed, 1128 insertions(+)
---
base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
change-id: 20240128-phy-hdptx-8a98ab60d18e


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
