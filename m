Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C05C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 20:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kAJsNwwckkUrGEUFf2UsQiSDWRA5dX13AYbSwobpbbw=; b=z3OU9i6MYRvwMU
	WwVmb4dlOtLC6Azbhw3DV8OeodvUx9uITYqLfktxNkFthZcIX5QmyueM9Za0pwK+SS7yb1eh3mU/X
	8lzhK7Chvrb2Bvsk+PGfUonGDWHMb9GLTd/GswvNxHG5Gz8g0He+r3da1tce11pRehr/Gjc7TIfdO
	vSbSl+chFmiJjESarK7D6q8UYQ/mq76nTljyDyWyr086/WFZgCx7YWv4j6Hd6WmVef0fMCMD8/BbD
	preiLYEE5ARaYU2ItDFZSRnI/sx0SaGEWdRZk7kunid35s7Gh42Ba3LK1E7JsV2vNY+gOBKYWgbIr
	mOYfQ5K1bpl+TOVAxevg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyzZ-0000000AYiL-0wkE;
	Tue, 13 Feb 2024 20:02:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyzX-0000000AYgS-0t1e;
	Tue, 13 Feb 2024 20:02:56 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyzP-0000Dw-94; Tue, 13 Feb 2024 21:02:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.8
Date: Tue, 13 Feb 2024 21:02:46 +0100
Message-ID: <2450634.jE0xQCEvom@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_120255_277105_BFA3DC6E 
X-CRM114-Status: GOOD (  10.71  )
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

please find a below a collection of fixes for the current release 6.8
cycle.

Please pull

Thanks
Heiko


The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:

  Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v6.8-rockchip-dtsfixes1

for you to fetch changes up to c22d03a95b0d815cd186302fdd93f74d99f1c914:

  arm64: dts: rockchip: Correct Indiedroid Nova GPIO Names (2024-02-13 20:2=
8:19 +0100)

----------------------------------------------------------------
Some fixes to make devicetrees conform to bindings better (pwm irqs), dt
styling fixes (unneeded jaguar status, whitespaces, Cool Pi regulator
naming) and functionality fixes (px30 spi chipselect number, allowing
rk3588-evb1 to turn off, pcie lane numbers on CoolPi, wrong gpio-names
on Indidroid Nova and some CoolPi sdmmc aliases to match what uboot uses).

----------------------------------------------------------------
Andy Yan (4):
      arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi 4B
      arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi CM5 EVB
      arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for Cool Pi =
CM5 EVB
      arm64: dts: rockchip: Fix the num-lanes of pcie3x4 on Cool Pi CM5 EVB

Chris Morgan (1):
      arm64: dts: rockchip: Correct Indiedroid Nova GPIO Names

Heiko Stuebner (2):
      arm64: dts: rockchip: drop unneeded status from rk3588-jaguar gpio-le=
ds
      arm64: dts: rockchip: set num-cs property for spi on px30

Johan Jonker (1):
      arm64: dts: rockchip: Drop interrupts property from rk3328 pwm-rockch=
ip node

Krzysztof Kozlowski (1):
      arm64: dts: rockchip: minor rk3588 whitespace cleanup

Sebastian Reichel (1):
      arm64: dts: rockchip: mark system power controller on rk3588-evb1

Uwe Kleine-K=F6nig (1):
      ARM: dts: rockchip: Drop interrupts property from pwm-rockchip nodes

 arch/arm/boot/dts/rockchip/rv1108.dtsi                   |  8 --------
 arch/arm64/boot/dts/rockchip/px30.dtsi                   |  2 ++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                 |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts   |  8 +++++---
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi      |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts           |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts        |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts       |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 10 +++++-----
 10 files changed, 21 insertions(+), 26 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
