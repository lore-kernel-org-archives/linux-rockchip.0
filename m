Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88221C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ipM2QGsQIU07w30qD9zkhnUDkchKNPUS5it6JmetahA=; b=tVuIPHgPjNIBqs
	382eseEnNgIokDEWSu8cz74Rb61A4pX3rs9FMaWBr04B+A2NL8+gho785gsyEBLC/OHD8CkzFVkGk
	OSbhoGPCR3qThcQ2ImWGdHdaa/c3a5bvzfmEQR5WHZTEd6qS4EwBZuYJlsxX1EBHlZbfB6Y8cBDw5
	SJJpyhqC8Y8I/wP8p1nUxwj4gG1jcendyrbe4stU7OLeGO8qgn2AHx6AeyTfm93qARa1kF3kR6xAU
	SxFihM/lwUGX4EaVzu8KsdL7w79d2pLpNQyMiKDjSVI4C3zWgeA5aC1mHf+HrCpN+14AQ1wXYMfJV
	T8TnSxB+Ivuiy8ot9Icw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3j2X-00000005ISN-2B45;
	Sun, 05 May 2024 21:04:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3j2U-00000005IRT-1jK6;
	Sun, 05 May 2024 21:04:55 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s3j2S-0008I3-Sb; Sun, 05 May 2024 23:04:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.10 #2
Date: Sun, 05 May 2024 23:04:52 +0200
Message-ID: <13810480.dW097sEU6C@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_140454_492169_DAF6F717 
X-CRM114-Status: GOOD (  11.11  )
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

please find below some more Rockchip changes for for 6.10 .

One new board and more enablement for the newly available gpu- and
usb3-support


Please pull!

Thanks
Heiko


The following changes since commit d7b83921d098bd76623381f75f5cd2296f1315cc:

  arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou (2024-04-23 17:37:41 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-dts64-2

for you to fetch changes up to cd81d3a0695cc54ad6ac0ef4bbb67a7c8f55d592:

  arm64: dts: rockchip: add rk3588 pcie and php IOMMUs (2024-05-03 13:32:42 +0200)

----------------------------------------------------------------
Radxa Rock 3C board. More gpu+usb enablement on rk3588 boards as well
as two new iommus on rk3588.

----------------------------------------------------------------
Anand Moon (2):
      arm64: dts: rockchip: Support poweroff on Edgeble Neural Compute Module
      arm64: dts: rockchip: Add USB3 on Edgeble NCM6A-IO board

Chukun Pan (3):
      dt-bindings: arm: rockchip: add Radxa ROCK 3C
      arm64: dts: rockchip: Add Radxa ROCK 3C
      arm64: dts: rockchip: enable onboard spi flash for rock-3a

Jimmy Hon (2):
      arm64: dts: rockchip: Enable GPU on Orange Pi 5
      arm64: dts: rockchip: add USB-C support to rk3588s-orangepi-5

Muhammed Efe Cetin (1):
      arm64: dts: rockchip: enable GPU on khadas-edge2

Niklas Cassel (1):
      arm64: dts: rockchip: add rk3588 pcie and php IOMMUs

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts    | 726 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |  14 +
 .../dts/rockchip/rk3588-edgeble-neu6a-common.dtsi  |   2 +
 .../boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi |   8 +
 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts     |   5 +
 .../arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |  99 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |  24 +
 9 files changed, 884 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
