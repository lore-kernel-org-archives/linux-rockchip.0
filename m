Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C1FC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 10:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9jMCxV7LiMDtRKPHLdFP97ItSM52bqF6guaGJKt8DLA=; b=F3rdizY387dfK4
	f5i98J87/XISkvm6lUrNrO+YB2WX2rpxgRRbyEcM/+OzlwTh2PXy6jESnsysS7I7OfU+wZnu+ax9U
	mMFUgdw4u4id+2L/wA+a/n9q88jK5Q4/yEN6Ty1A/CbYUDzNrCkxN3xTMn3B5+oXcZ6MKslfzvUz2
	zsteYIDeJWO2NezOvyt7Le5HJDLFiC5IzzQGyF+jzx7xnv1Xl9dgBmv9Um9vG1UeMcnhAz+zBNbj6
	M3tdjs09k5WTvyBlKmq/2V5toSUt8WPc5fpNUYeMIBx21+4Utz8SEC+xb+HOTaCPozDRAhaL2wp2t
	B/6rr6dlISkBDubwY8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwigG-00946q-R3; Mon, 13 Dec 2021 10:35:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwidM-0092lP-8b; Mon, 13 Dec 2021 10:32:41 +0000
Received: from p5b127e39.dip0.t-ipconnect.de ([91.18.126.57]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwidL-00010J-2E; Mon, 13 Dec 2021 11:32:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 5.17 #1
Date: Mon, 13 Dec 2021 11:32:39 +0100
Message-ID: <3637342.7akbv5NDAT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_023240_365035_0F6D2881 
X-CRM114-Status: GOOD (  10.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

please find below Rockchip changes for for 5.17.

Please pull!

Thanks
Heiko

The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:

  Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.17-rockchip-dts64-1

for you to fetch changes up to f471b1b2db0819917c54099ab68349ad6a7e9e19:

  arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards (2021-12-12 13:50:22 +0100)

----------------------------------------------------------------
Improvements on a number of boards:
- helios64: hdd-power, pcie, 2.5GbE nic
- spi for rk356x and on the Quartz-A board
- headphone, bluetooth support on Rock Pi4
And some misc soc improvements:
- missing dsi compatible on px30
- pwm pinctrl name on rk356x

----------------------------------------------------------------
Alex Bee (1):
      arm64: dts: rockchip: add interrupt and headphone-detection for Rock Pi4's audio codec

David Heidelberg (1):
      arm64: dts: rockchip: Add missing secondary compatible for PX30 DSI

Dennis Gilmore (2):
      arm64: dts: rockchip: define usb hub and 2.5GbE nic on helios64
      arm64: dts: rockchip: add variables for pcie completion to helios64

Florian Klink (1):
      arm64: dts: rockchip: Enable HDD power on helios64

Jagan Teki (1):
      arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards

Nicolas Frattaroli (2):
      arm64: dts: rockchip: Add spi nodes on rk356x
      arm64: dts: rockchip: Add spi1 pins on Quartz64 A

Sascha Hauer (1):
      arm64: dts: rockchip: Change pwm pinctrl-name to "default" on rk356x

 arch/arm64/boot/dts/rockchip/px30.dtsi             |  2 +-
 .../boot/dts/rockchip/rk3399-kobol-helios64.dts    | 87 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 12 ++-
 .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts   | 11 +++
 .../boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts   | 18 +++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts |  7 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 18 +++-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 96 ++++++++++++++++++----
 9 files changed, 232 insertions(+), 24 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
