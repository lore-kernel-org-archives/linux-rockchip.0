Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 396BCCED265
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U0U27Jw2SLJAKXzzuiaOCG06uTKCYsYZOGaHqRfoOQk=; b=SUwyMpy/VVG4NV
	DsIzqxok1xlQFQ0j94pLEMmoKEtql5oUnyJFN6f3hMtwai8XCsoB6uqpxgWKqElV2Uwm4QZ+vgBoj
	1oHEh432i4BfqaFCnxRZeu6dPLt+Qwqr3hWy1XRaA9NIdazT2i5dgWCJsUxooDPD4/UKrpFDol/ml
	hkliSw7Os367asSl202u0PlgQZ+McU4jF5CmdcA9h0zU7w6S17Xvz6K5Zz7NHPO9dZwGYsS4hB7tN
	bjulbag8R6R/R6iL+1PVOiNnP50O5urtVwlGoIVhO7wwNF6foQv7cB+EZO7oyEDlQRho/yk6F7TS0
	nycoQ7ngrm2DioHFi6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syGzu-000000075Bc-1qil;
	Tue, 08 Oct 2024 20:39:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGzr-0000000759A-0Hw8;
	Tue, 08 Oct 2024 20:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+wnTrkpeqYeGIYrvQCycWqExHJfN6ud3GRMcEZQjkhk=; b=2b5quYwpBfV32GR+HZrAYDiYrI
	TRkm7LKkareRd8DBiKzaaz59Laq5okfsrT6wQhjSQwDn95SDe20Q32oPouvreUH7PK9AKmkY9BH2T
	S9ZmVebaci1gWG9LuQlavdYZ4qs17nKKXffaaXloL1Q6I2jSJnVrVDtsJIX3xo62/kqGgvxGJt6lh
	nRoTddl6Gj1MDv+bDWaDEbCRnbN2mAFj/RtEo7U/4eWFAlkXrsNMN/gdPwtkzzgZ/q+J1aGXlzKmi
	nRvyHLxGAmdrKVkNCCZAL0V04W1z1ezyw+MjsTCRloP69XzJL9Q8nSdEjoy95s61MgblAwT4AQIVx
	m9MNknyg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzp-0007ua-Jw; Tue, 08 Oct 2024 22:39:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 00/14] Fixing some dtbscheck warnings
Date: Tue,  8 Oct 2024 22:39:26 +0200
Message-ID: <20241008203940.2573684-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_133955_216961_A4490A87 
X-CRM114-Status: GOOD (  10.87  )
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

Fixing dtbs-check warnings should be declared addictive, one starts
with one warning, then another one and then it's oh, I'll just fix
this "last" one over and over ;-)

We still have more, if others want to play too :-D .

changes in v2:
- more fixes
- use more appropriate txco clk for brcm bluetooth

Heiko Stuebner (14):
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353p/v
  arm64: dts: rockchip: Drop regulator-init-microvolt from two boards
  arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
  arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
  arm64: dts: rockchip: Remove undocumented supports-emmc property
  arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma
    boards
  arm64: dts: rockchip: Fix LED triggers on rk3308-roc-cc
  arm64: dts: rockchip: remove num-slots property from
    rk3328-nanopi-r2s-plus
  arm64: dts: rockchip: Remove 'enable-active-low' from two boards
  arm64: dts: rockchip: remove orphaned pinctrl-names from pinephone pro
  ARM: dts: rockchip: fix rk3036 acodec node
  ARM: dts: rockchip: drop grf reference from rk3036 hdmi
  ARM: dts: rockchip: Fix the spi controller on rk3036
  ARM: dts: rockchip: Fix the realtek audio codec on rk3036-kylin

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts        |  4 ++--
 arch/arm/boot/dts/rockchip/rk3036.dtsi             | 14 +++++++-------
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi    |  2 --
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  4 ++--
 .../boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts   |  2 --
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi      |  1 -
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     |  2 --
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts   |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts   |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts     |  3 ---
 .../rk3568-wolfvision-pf5-io-expander.dtso         |  1 -
 .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts |  1 -
 .../arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |  1 -
 18 files changed, 17 insertions(+), 33 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
