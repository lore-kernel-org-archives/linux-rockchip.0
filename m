Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87915C54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Mar 2024 12:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wF3QRf6V2RSWmosR5PBQvO+Ss7I0LjD2m1gBaeRDigI=; b=gYAshyAx5AdfOH
	NrUD+wHAC8BK6O0tFIb4lbbaY8jSiJNdOnQQDaSP5G+bnTESsp5CDsEDVBs6BdHhx9/MzwrwXn4av
	rYcbcYzCJGSFezRWoN+kdJod+xa9drpgNyVsWzsqPMLMguWiPrFt40tDWmVxSwT637Uq59oi+SWd+
	J2l9+gvWQqYGimmf3i9oJyyP5f0V0nArEvphxJWOKTUvxDhx2bd6LoJ4VBlUSEaffjqPQV/+yHlnW
	6oRssB9vj4Y3jagFOThuw4pKUsr6zowpmqUdVxu076Qxy4XKMmRsfpjqrUpqjlUsZ5KA8uACN1vbK
	/D8A/XJfASbkKNZlQ9Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOID-00000003UsZ-3I0M;
	Sat, 02 Mar 2024 12:16:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOIA-00000003Ury-2UeB;
	Sat, 02 Mar 2024 12:16:39 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rgOI9-0005IG-7B; Sat, 02 Mar 2024 13:16:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.9 #2
Date: Sat, 02 Mar 2024 13:16:36 +0100
Message-ID: <3695004.ElGaqSPkdT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240302_041638_658187_818CBAF7 
X-CRM114-Status: GOOD (  14.52  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below and in a subsequent pull-request
some additional Rockchip changes for for 6.9 that
would go on top of the first round I sent.

Some new boards and a bit of dt-binding wiggling.


Please pull!

Thanks
Heiko


The following changes since commit 4622485f005aaf0f7a684b69280d0494e0ea301e:

  arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova (2024-02-13 20:28:08 =
+0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v6.9-rockchip-dts64-2

for you to fetch changes up to c5a48ffb5206cd604eff4bb369efc1a7580d1ec1:

  arm64: dts: rockchip: Fix name for UART pin header on qnap-ts433 (2024-03=
-02 12:09:00 +0100)

----------------------------------------------------------------
Initial support for the rk3568 Qnap TS433 NAS, the rk3588-based Tiger SoM
from Theobroma-Systems and the rk3588-based Toybrick TB-RK3588X.
Some fixes to conform to dt-bindings for i2s (rk3588, rk356x) and
rk356x video-decoder (missing interrupt-names).

Correcting the vendor in the compatible for OrangePi RK3399 and BananaPi
R2 Pro (discussed with DT-maintainers beforehand of course).

The VO1-GRF syscon needs its clock to work, and that clock also needed to
be actually exported forst, so we're sharing a branch with the Rockchip
clock-tree (that already got merged into the main clock-tree for 6.9) for
this small shared code.

And as another step on the long road to graphics output on rk3588, 6.9 will
get the hdmi-phy via the phy-tree, so here the dts node is added.

----------------------------------------------------------------
Cristian Ciocaltea (1):
      arm64: dts: rockchip: Add HDMI0 PHY to rk3588

Elon Zhang (2):
      arm64: dts: rockchip: Add devicetree support for TB-RK3588X board
      dt-bindings: arm: rockchip: Add Toybrick TB-RK3588X

Heiko Stuebner (8):
      Merge branch 'v6.9-shared/clkids' into v6.9-armsoc/dts64
      arm64: dts: rockchip: add clock to vo1-grf syscon on rk3588
      arm64: dts: rockchip: add missing interrupt-names for rk356x vdpu
      arm64: dts: rockchip: fix reset-names for rk356x i2s2 controller
      arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
      dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with base=
board
      arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM
      arm64: dts: rockchip: add Haikou baseboard with RK3588-Q7 SoM

Sebastian Reichel (3):
      clk: rockchip: rk3588: fix CLK_NR_CLKS usage
      dt-bindings: clock: rk3588: drop CLK_NR_CLKS
      dt-bindings: clock: rk3588: add missing PCLK_VO1GRF

Tim Lunn (4):
      dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
      dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
      arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
      arm64: dts: rockchip: adjust vendor on orangepi rk3399 board

Uwe Kleine-K=F6nig (3):
      dt-bindings: arm: rockchip: Add QNAP TS-433
      arm64: dts: rockchip: Add basic support for QNAP TS-433
      arm64: dts: rockchip: Fix name for UART pin header on qnap-ts433

 .../devicetree/bindings/arm/rockchip.yaml          |  24 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   3 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts |  86 +++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |   3 +-
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts      | 266 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     | 690 +++++++++++++++++=
++++
 .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 688 +++++++++++++++++=
+++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |  24 +-
 drivers/clk/rockchip/clk-rk3588.c                  |   5 +-
 drivers/clk/rockchip/clk.c                         |  17 +
 drivers/clk/rockchip/clk.h                         |   2 +
 include/dt-bindings/clock/rockchip,rk3588-cru.h    |   3 +-
 14 files changed, 1803 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
