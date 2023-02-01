Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB650C636D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Feb 2023 23:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V3Iz3DmVvUnaFMM5B6Wxpt8ej2Xv9S0lBZGNVSspfdY=; b=hOyLP+ugkmUU4N
	dscVjdlto1OPNR571DcdbkoE7Uj7mwWub6BKqr/ZLqHYtJYh8oLnC93m6uKD/TPsvLHE34S0rurAk
	gWvdR9HlrnSRB7k4aQmFL6PptILpBD44YNxCgwC5xwS2N+s2xH0vE6VsfNzsv4tD2dOQotFNZW3lU
	0VsDPL2ABUehu+ymSCGreHE7tKY/wrdk6Id8xcgSQ4j9pvjCp2ApkqCWpY7GMpgD/tkEzw4ckhSvA
	YunE8syKlCqLfvxASMxnPbKeUw6eMuhhovKtXX4wLRCyNLdvAEUJk+ydL8sxe6Nz/r8OWY0Mx/vWx
	aJRr8onKDztlvHYhmdfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNM7K-00DpXv-Bq; Wed, 01 Feb 2023 23:02:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNM7G-00DpVy-M8; Wed, 01 Feb 2023 23:02:12 +0000
Received: from p508fda63.dip0.t-ipconnect.de ([80.143.218.99] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pNM72-0007LN-Ls; Thu, 02 Feb 2023 00:01:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.2
Date: Thu, 02 Feb 2023 00:01:54 +0100
Message-ID: <3514663.mvXUDI8C0e@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_150210_747309_52FC8EB0 
X-CRM114-Status: GOOD (  10.88  )
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

The following changes since commit 1b929c02afd37871d5afb9d498426f83432e71c2:

  Linux 6.2-rc1 (2022-12-25 13:41:39 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.2-rockchip-dtsfixes1

for you to fetch changes up to b67b09733d8a41eec33d5d37be2f8cff8af82a5e:

  arm64: dts: rockchip: align rk3399 DMC OPP table with bindings (2023-01-29 23:35:12 +0100)

----------------------------------------------------------------
Fixes to adapt to correct binding behaviour and fixes for devices on some boards

Most notably may be the adaption of lower thermal limits for the pinephone
pro, where the original hiher ones could result in (possibly permanent)
display issues.

----------------------------------------------------------------
Andy Yan (1):
      arm64: dts: rockchip: add io domain setting to rk3566-box-demo

Arnaud Ferraris (1):
      arm64: dts: rockchip: fix input enable pinconf on rk3399

Chukun Pan (1):
      arm64: dts: rockchip: remove unsupported property from sdmmc2 for rock-3a

Corentin Labbe (1):
      arm64: dts: rockchip: use correct reset names for rk3399 crypto nodes

Dan Johansen (1):
      arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50 on rock-3a

Jarrah Gosbell (1):
      arm64: dts: rockchip: reduce thermal limits on rk3399-pinephone-pro

Jensen Huang (1):
      arm64: dts: rockchip: add missing #interrupt-cells to rk356x pcie2x1

Johan Jonker (1):
      ARM: dts: rockchip: add power-domains property to dp node on rk3288

Jonas Karlman (1):
      arm64: dts: rockchip: fix probe of analog sound card on rock-3a

Krzysztof Kozlowski (2):
      arm64: dts: rockchip: drop unused LED mode property from rk3328-roc-cc
      arm64: dts: rockchip: align rk3399 DMC OPP table with bindings

 arch/arm/boot/dts/rk3288.dtsi                         |  1 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts        |  2 --
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts |  7 +++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi              |  6 ++----
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts      | 11 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts       |  5 +++--
 arch/arm64/boot/dts/rockchip/rk356x.dtsi              |  1 +
 8 files changed, 26 insertions(+), 9 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
