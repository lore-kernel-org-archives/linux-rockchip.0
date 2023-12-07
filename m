Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF8C7C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 20:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E356cGrJpbmgUN1xX3FxPEBexcVYFed+/4wDCwexars=; b=kDc3KeLli2t8hi
	FqtZL49WB+VgDt89+s1zdfQ/fJUTHZ6Ue6ykLq/diLpse41mYNDgzh0YMIBUU6lvUgEy9VT1Gvk8I
	HqyI5RHXMA9x7E91TDLu9Qlqt2+VuytBxom42bRY06p9cFUmn+Q3QCg7tO2vuLov+GMsNA5wG6oDT
	XFuTfBhLtSBFvhuYVv2ZgvYuVAnVbLO8iVR5gDHwBtusnGeUu2mefEDcP1Z4zMkYtAoc9PmgX4Ft1
	dK58UDrkGdN6XDKy3+TMaD3Pp0Fuh3TaVbk0hkfN/iMxPbNp3SDr09x1A/qtYYLZbBoamPldVKzeE
	5JJx84hLM3aJb8FgduwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLBm-00Ds2L-11;
	Thu, 07 Dec 2023 20:41:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLBj-00Ds1W-2r;
	Thu, 07 Dec 2023 20:41:41 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBLBi-00060I-20; Thu, 07 Dec 2023 21:41:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.7
Date: Thu, 07 Dec 2023 21:41:37 +0100
Message-ID: <2709704.mvXUDI8C0e@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_124139_922772_87354D26 
X-CRM114-Status: GOOD (  13.41  )
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

please find a below a collection of fixes for the current release 6.7
cycle.

Please pull

Thanks
Heiko


The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:

  Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.7-rockchip-dtsfixes1

for you to fetch changes up to 37f3d6108730713c411827ab4af764909f4dfc78:

  arm64: dts: rockchip: Fix eMMC Data Strobe PD on rk3588 (2023-12-06 10:38:03 +0100)

----------------------------------------------------------------
Devicetree fixes for the 6.7-cycle.

All over the place this time. From adapting the size of the vdec nodes
on rk3328 and rk3399, fixing some wrong pinctrl settings on rk3128 and
the Turing RK1 board, emmc-settings fixes on rk3588 and interrupt-name
mishaps, down to some dt-cleanups.

Also this adds the missing rockchip,rk3588-pmugrf compatible to the soc
grf binding, that I somehow messed up during the pull requests for the
-rc1 . At least with it included the dt-checker is happier.

----------------------------------------------------------------
Alex Bee (2):
      arm64: dts: rockchip: Expand reg size of vdec node for RK3399
      ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128

Heiko Stuebner (2):
      arm64: dts: rockchip: fix rk356x pcie msg interrupt name
      arm64: dts: rockchip: drop interrupt-names property from rk3588s dfi

Jonas Karlman (1):
      arm64: dts: rockchip: Expand reg size of vdec node for RK3328

Krzysztof Kozlowski (2):
      ARM: dts: rockchip: minor whitespace cleanup around '='
      arm64: dts: rockchip: minor whitespace cleanup around '='

Rob Herring (1):
      arm64: dts: rockchip: Fix PCI node addresses on rk3399-gru

Sam Edwards (2):
      arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
      arm64: dts: rockchip: Fix eMMC Data Strobe PD on rk3588

Sascha Hauer (1):
      dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml  | 1 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi                   | 2 +-
 arch/arm/boot/dts/rockchip/rk322x.dtsi                   | 6 +++---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                 | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi  | 3 +--
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                 | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk356x.dtsi                 | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi      | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi                | 1 -
 14 files changed, 20 insertions(+), 18 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
