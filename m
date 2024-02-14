Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB899C48BC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 11:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6KcMyJV1WGYrVOcgY97QfsJs9S/05VNRO5HyVbvO17E=; b=MHH+CsZn/bADLH
	sTj7TeA4EKnLomKfY5k6L1SUImUNVkwoqwnBWdc0r3NRDgXbcqMjoduIZfDl1sHaDdFe9sKH/ivkN
	0REmwMNGv7iiW/RLpvWQN/SfQoxbb2NNt4yFv4v2xDTGSc3kGfg9vCx43NXxeSnR+HNPckczS5EW3
	bbWYT9U2c3SDZ3/lvsfmnU+1xz4T+Qj4WK21tlXNFjX/rQgg/d/NbXKmrY8GME+oPuUFaxljaN2/I
	K4jQtnrgU65XJoDlLKg3SiPOUroygP7YENI/cU/lJpIhpgzuIBoOrDJ5Y52D3WXELTiPJL3mt0hOi
	/6ycdoSBxWGnP5hwUU4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDj3-0000000Ciwd-3Yti;
	Wed, 14 Feb 2024 11:46:53 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDir-0000000CioY-2AFi;
	Wed, 14 Feb 2024 11:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707911198;
	bh=jvl3Y+wH/gfbOOMoVy7joBUO4CawoZUoJ7kw1HD0z/U=;
	h=From:Subject:Date:To:Cc:From;
	b=YA70RvpRZSuQsZE/wvgVmxVw45f0rXLs1tzxXs8bLKLUP9AAeBHDmszfK4g7Z9rzM
	 pH6rRBh3vkUoWFAlaD6C0kde9ObclosTzemb+pih8zB2DTRmYucPsoABSUiZZRb+k2
	 7fMkq/pk01jgSz2yyrwPzaxAbvFbAYGutm4b5VpNCaDYqygBOMrhPCyGuw2nifwT9s
	 ymoZZi+WYj0afGQzgYIQfgcauusscL0U6I9Sw3UDsXy4nDj1nby0dZ63kmeVLOx5kX
	 wXd/yjUWOlJILX0Loah1ucl3ufmj5z5TFF6CC5z+clt+x7LLH2YzsANmoVgnvhT7kJ
	 SXoYHO42DCx8g==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BF758378045F;
	Wed, 14 Feb 2024 11:46:37 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v4 0/2] Add support for RK3588 HDMI/eDP Combo PHY
Date: Wed, 14 Feb 2024 13:45:35 +0200
Message-Id: <20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN+nzGUC/6WPQY7CMAxFr4KyxpWdhpKy4h5oFiYxJFJpqrSqQ
 Kh3n5TNVKPZzfLL/z3bbzVKjjKq0+6tssxxjKkvwex3ygXu7wLRl6w0aoOkLQzhBcEP0xMst5a
 vDXqyokp/yHKLz4/r8lXyLacHTCELbwzUUltbbCrCGjUZIHA5jlPkvnIxOe4m4bNLXcfXlLly6
 bG6Q6mk/PqcOdO64R++9bhZ/0g0HjZvzRoQ+EgHtGQcmuNfdL2hSW/putDaeWksOl/mv+llWb4
 Bo3cFUXUBAAA=
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
X-CRM114-CacheID: sfid-20240214_034641_753604_B8AB2A1B 
X-CRM114-Status: GOOD (  10.70  )
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

Changes in v4:
- Used consistent naming by replacing hdptx_*/rockchip_* with rk_hdptx_*
  (Johan)
- Link to v3:
  https://lore.kernel.org/r/20240212-phy-hdptx-v3-0-2cde680cd024@collabora.com

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
