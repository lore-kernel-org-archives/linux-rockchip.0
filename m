Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FC1ACA9ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 10:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AlI5jFKFuYKSpptyfEWa6zbBWkOxjfp3vV4+b27fvJM=; b=FtCT+Mf8P6MGHc
	t8wxcSVvEW9dlK5xKmwi7GMGdx9xNHJpg4VFxm4x0d4Ni402QKeGFgpb5r++pXGg05W60mVKcg2fq
	znhPC1rF1YvKBQBgSdso2ffm5fkei2lsKi0V4lt6kNcRk9GYv7QTC418m+4zBU14Vtl53NQ8PC/ye
	cLNsgj7IfLO7DLbP5uQW2qRLgmrMFsaFkNBVMlU7N+GPyCCbZx9PL0P8ZiXud9uEOrReU9gsQMoxe
	VQCLd7Ux2EiwDm/TzTJX0LDp4INrHvuHxxCCq5stMh7lROqLDNsVGgjm5aQsHFf+Q2WElwjzyyyvz
	VOYvNxtepYpoIIlj81Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGD93-0000000ACCF-3Kh0;
	Mon, 12 Oct 2026 10:20:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGD92-0000000ACBj-0341;
	Mon, 12 Oct 2026 10:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=SLBCl332laY7zsY7WJDeYl95lbnGzbtwn7xkysuYFDY=; b=AP3JnuKHpnMXLw5lodkNehn9nC
	3KSJ7dp/QPaqGJXpGcCJcbH7yMxZeEHQYZO1VMMG+qOR6xoGuOhGG8CxnY6EolSt2shvXolwR6+CO
	W1QEqY2ami7Z05VV2RZc744QwbNiaZuqMJymisc5GttqCtmavhM/6jhsA1NQV3TN8SH8TnR5pmPgM
	wh1poFKu1igGaX2bWQ3xI4SVT/M5edhmqNn4atYbAziflHCpfp52eYTZdJMFRRx1WdZugW2BJj624
	8r69CQ/yw2nzu0YyIp7l76toeTwvCo22wyfBqC7NBguoPoB7r2jX5T1pRVVwfHrr7/1BHFR2TkXBC
	Ayv9O/Hg==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 7.4 #3
Date: Mon, 12 Oct 2026 12:20:30 +0200
Message-ID: <2330337.ZfL8zNpBrT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_032036_101045_EA6BD5B8 
X-CRM114-Status: GOOD (  15.50  )
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

Hi soc maintainers,

please find below some more Rockchip dt changes for arm64
for the next merge window.

Please pull.

Thanks
Heiko


The following changes since commit fa932a9b632ff0d80390b940e6aabe38ac305fe1:

  arm64: dts: rockchip: Add MangoPi M28K (2026-10-01 00:22:48 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.4-rockchip-dts64-3

for you to fetch changes up to ae965b9856f033145e292b0c29082a26bcc45efd:

  arm64: dts: rockchip: Add Radxa E54C (2026-10-10 14:04:34 +0200)

----------------------------------------------------------------
New boards: Radxa E54C using the RK3582 (a production variant of the
RK3588 where probably defective cores and gpus get disabled),
DP-carrier for the RK3588-tiger SoM, NanoPi M6

Interesting new peripherals: DPHY, CSI-2 and VICAP on RK3576 so all 3
bigger current-gen SoCs (RK3568, RK3576, RK3588) can now receive camera
data - yay.

Apart from that a rename of the hdmi-audio-cards to allow actual alsa
profiles to bind to something actually sane; and the regular bunch of
board-specific peripheral enablement/fixes.

----------------------------------------------------------------
Amin Gattout (5):
      dt-bindings: soc: rockchip: add rk3576 csidphy grf syscon
      arm64: dts: rockchip: add csi dphy nodes to rk3576
      arm64: dts: rockchip: add mipi csi-2 receiver nodes to rk3576
      arm64: dts: rockchip: add vicap node to rk3576
      arm64: dts: rockchip: add radxa camera 4k on rock 4d

Chukun Pan (5):
      arm64: dts: rockchip: fix adc button voltage on Radxa E52C
      arm64: dts: rockchip: enable NPU on Radxa E52C
      arm64: dts: rockchip: remove FRL GPIO for 100ASK DshanPi A1
      dt-bindings: arm: rockchip: Add Radxa E54C
      arm64: dts: rockchip: Add Radxa E54C

Dennis Gilmore (1):
      arm64: dts: rockchip: Use GPIO function for PCIe reset on Orange Pi 5 Pro

Detlev Casanova (5):
      arm64: dts: rockchip: Rename rk3328 HDMI audio card
      arm64: dts: rockchip: Rename rk3399 HDMI audio card
      arm64: dts: rockchip: Rename rk3566 and rk3568 HDMI audio cards
      arm64: dts: rockchip: Rename rk3576 HDMI audio card
      arm64: dts: rockchip: Rename rk3588 HDMI audio cards

Heiko Stuebner (2):
      dt-bindings: arm: rockchip: add RK3588 DP carrier from Theobroma Systems
      arm64: dts: rockchip: add RK3588 DP carrier from Theobroma Systems

Igor Velkov (2):
      arm64: dts: rockchip: Add buttons to Kobol Helios64
      arm64: dts: rockchip: Add the fan tachometers to Kobol Helios64

Joachim Eastwood (12):
      arm64: dts: rockchip: fix missing sdmmc cd pinctrl on rk3588s-nanopi-r6
      arm64: dts: rockchip: fix missing pcie rst pinctrl on rk3588s-nanopi-r6
      arm64: dts: rockchip: remove pull up on rtc int pin on rk3588s-nanopi-r6
      arm64: dts: rockchip: add pcie2x1l2 clkreq on rk3588s-nanopi-r6
      arm64: dts: rockchip: remove always-on and boot-on from vdd_npu_s0 reg on rk3588s-nanopi-r6
      arm64: dts: rockchip: remove useless vcc_3v3_pcie20 from rk3588s-nanopi-r6
      arm64: dts: rockchip: add gmac1 phy-supply to rk3588s-nanopi-r6
      arm64: dts: rockchip: remove bogus vcc5v0_usb regulator from rk3588s-nanopi-r6
      arm64: dts: rockchip: add comment about gmac phy-mode to rk3588s-nanopi-r6
      arm64: dts: rockchip: refactor rk3588s-nanopi-r6 to support M6 boards
      dt-bindings: arm: rockchip: add FriendlyElec NanoPi M6
      arm64: dts: rockchip: add support for NanoPi M6 board

Shawn Lin (2):
      arm64: dts: rockchip: add pcie30phy data-lanes on rk3588 coolpi-cm5-evb
      arm64: dts: rockchip: fix M.2 E-key reset pinctrl on rk3588 rock-5-itx

Yaozhong Li (3):
      arm64: dts: rockchip: fix analog headphone output on rk3399-firefly
      arm64: dts: rockchip: disable unused i2s0 on rk3399-firefly
      arm64: dts: rockchip: enable HDMI audio on rk3399-firefly

Youngwon Son (1):
      arm64: dts: rockchip: Enable the NPU on ODROID-M2

 .../devicetree/bindings/arm/rockchip.yaml          |   15 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml      |    1 +
 arch/arm64/boot/dts/rockchip/Makefile              |    8 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |    2 +-
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi      |    2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |   36 +-
 .../boot/dts/rockchip/rk3399-kobol-helios64.dts    |   82 ++
 arch/arm64/boot/dts/rockchip/rk3566-base.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           |    4 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi      |    1 -
 .../boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts |    9 -
 .../dts/rockchip/rk3576-rock-4d-radxa-cam4k.dtso   |  105 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  172 ++-
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts |   38 +-
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e54c.dts | 1172 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |    2 +-
 .../boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts    |    1 +
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi     |    2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts |    2 +-
 .../rockchip/rk3588-tiger-displayport-carrier.dts  |  110 ++
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dtsi |  142 +++
 .../boot/dts/rockchip/rk3588s-nanopi-m6v1.dts      |   57 +
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi |  792 +------------
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi   |  797 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts |   36 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5-pro.dts   |   14 +-
 26 files changed, 2777 insertions(+), 829 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-rock-4d-radxa-cam4k.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e54c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-displayport-carrier.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6v1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
