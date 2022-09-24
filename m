Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B91C32771
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 18:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzmRsPeLSVJuhjcI86jO57J/4Pj93dqMed8zhJjk8eo=; b=zAsvxTUffoXocf
	PomGZOfMqqEIoinzIhotJZjp+QIC4sD4g/D1Q5J6IBZoVaZiEyzcCgyzy04tuutGF+FIuWKMe1PmA
	e8JvrT4z5V5KJQAN3L272mSivjKPaP3H48/HbyDa97W76Fi0YGxKckQXsRDOSYPOMAR5/bHulAJFz
	EqtXCDisU36NDFWVnDrZxLqmTgy2W+0wyb8VlxizMRXGMBchZPMsf11XObV2X5lp6nfeIoUJ4+zFV
	iYK6hhyGHtoCfxjlhvP+kKhjmFxwlCtlUy9MROCJPGsnqXUt7OdmmbSTetezbfs7m+PIjbwumHtl/
	unYhlqINGrmASD2C/5Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAMI-008dFB-Ch; Sat, 24 Sep 2022 18:58:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAMG-008dDo-HY; Sat, 24 Sep 2022 18:58:38 +0000
Received: from p57b775e6.dip0.t-ipconnect.de ([87.183.117.230] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ocAMD-0001hc-FK; Sat, 24 Sep 2022 20:58:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.1 #2
Date: Sat, 24 Sep 2022 20:58:30 +0200
Message-ID: <38114097.10thIPus4b@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_115836_633539_8A3894C2 
X-CRM114-Status: GOOD (  12.09  )
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

Hi Arnd, Kevin, Olof,

please find below and in subsequent pull-requests
some more Rockchip changes for for 6.1

Please pull!

Thanks
Heiko


The following changes since commit 91419ae0420f0c91a326655d687b740826d0a3f9:

  arm64: dts: rockchip: use BCLK to GPIO switch on rk3399 (2022-09-10 01:08:48 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-dts64-2

for you to fetch changes up to 19d4aaf640913c5a8f1b06c9ef46287c32635299:

  arm64: dts: rockchip: use pin constant for reset-gpios on px30-evb (2022-09-23 15:53:18 +0200)

----------------------------------------------------------------
RK3399-Nanopi-R4S-enterprise as variant board, Gru-Scarlet SKU variants,
DSI support for rk356x, display-gamma-control for rk3399, display
output for quartz64-b and rk3566-roc-pc, hdmi supplies for rk3399-roc-pc,
some pinctrl improvements for the px30-evb and a number of changes to
bring rk3399 rock4 and rock-pi4 structure closer to names used in schematics.

----------------------------------------------------------------
Brian Norris (2):
      dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
      arm64: dts: rockchip: Support gru-scarlet sku{2,4} variants

Chris Morgan (1):
      arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

FUKAUMI Naoki (6):
      arm64: dts: rockchip: connect vcca_1v8 to APIO5_VDD on rk3399-rock-4c-plus
      arm64: dts: rockchip: fix regulator structure on rk3399-rock-4c-plus
      arm64: dts: rockchip: sort nodes/properties on rk3399-rock-4c-plus
      arm64: dts: rockchip: fix regulator name on rk3399-rock-4
      arm64: dts: rockchip: sort nodes/properties on rk3399-rock-4
      arm64: dts: rockchip: add avdd-0v9-supply and avdd-1v8-supply on rk3399 rock 4c and pi4

Furkan Kardame (1):
      arm64: dts: rockchip: Enable video output on rk3566-roc-pc

Hugh Cole-Baker (1):
      arm64: dts: rockchip: enable gamma control on RK3399

Markus Reichl (1):
      arm64: dts: rockchip: Add HDMI supplies on rk3399-roc-pc

Nicolas Frattaroli (1):
      arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b

Quentin Schulz (1):
      arm64: dts: rockchip: add i2s0 I2S/PDM/TDM 8ch controller to px30

Tianling Shen (2):
      dt-bindings: Add doc for FriendlyARM NanoPi R4S Enterprise Edition
      arm64: dts: rockchip: Add RK3399 NanoPi R4S Enterprise Edition

Tommaso Merciai (3):
      arm64: dts: rockchip: set max drive-strength for cif_clkout_m0 on px30-evb
      arm64: dts: rockchip: add pinctrl for mipi-pdn pin on px30-evb
      arm64: dts: rockchip: use pin constant for reset-gpios on px30-evb

 .../devicetree/bindings/arm/rockchip.yaml          |  28 +++-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  17 ++-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  22 ++++
 .../boot/dts/rockchip/rk3399-gru-scarlet-inx.dts   |  14 +-
 .../dts/rockchip/rk3399-nanopi-r4s-enterprise.dts  |  29 +++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |   6 +-
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts      | 114 ++++++++++-------
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 141 +++++++++++----------
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   4 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts |  60 +++++++++
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts     |  52 ++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  80 ++++++++++++
 13 files changed, 445 insertions(+), 123 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
