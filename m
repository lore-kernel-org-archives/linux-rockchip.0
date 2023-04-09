Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D396EC77B61
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Apr 2023 00:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jd3OpBXAd2HelgmPlfqbdxnM3JTNb8pPmjht6D+DAR4=; b=HBUZcfh29xn6yS
	XSYW3RT2PyT7ISDcXTGHpPpnfsjVk0OsQ5wJeR0EOj7Fk9LHUS3LXjO2xwW2tziClSCV8I58gzUsE
	dmRvODcxiEuOoswB0Q83YqagAb7ltjtca7HmFt5Njr6o2sh2iTPb6PU5eDykE33fJgNm6ZXGMlvmU
	z6bsLLb8va+rigg0EPgR7/sL/FvX5DgEwTahwzUwVwX0wJCR3zpBgFjgoaMEiu2fcThqHYLhdu48g
	XX2DxO+A4TUx3jAisKIlEUAOCdoIw/8+GYusohgWpLx7KejrnDgMouFyT5jArQ56l0VoROhuLEBR5
	ka4z3m0I53Ekb3Xk04zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plIUl-00Cwd6-20;
	Sun, 09 Apr 2023 00:01:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plIUi-00CwcO-2s;
	Sun, 09 Apr 2023 00:01:22 +0000
Received: from p57b77242.dip0.t-ipconnect.de ([87.183.114.66] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1plIUe-0006zQ-22; Sun, 09 Apr 2023 02:01:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.3
Date: Sun, 09 Apr 2023 02:01:14 +0200
Message-ID: <10559306.CDJkKcVGEf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230408_170120_945863_D4F52BAD 
X-CRM114-Status: GOOD (  10.59  )
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

please find a below a collection of fixes for the current release 6.3
cycle.

Please pull

Thanks
Heiko


The following changes since commit fe15c26ee26efa11741a7b632e9f23b01aca4cc6:

  Linux 6.3-rc1 (2023-03-05 14:52:03 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.3-rockchip-dtsfixes1

for you to fetch changes up to 60a655debd36e3278a46872accc1a51a54f94f02:

  arm64: dts: rockchip: correct panel supplies on some rk3326 boards (2023-04-05 19:38:03 +0200)

----------------------------------------------------------------
Lower sd card speeds for two boards to make them run more reliable,
missing 32k clock definition for Anbric xx3 devices, missing cache-levels
for rk3588, fixed rk3326-board display supplies and more dt-schema fixes.

----------------------------------------------------------------
Chris Morgan (1):
      arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices

Dan Johansen (2):
      arm64: dts: rockchip: Lower sd speed on rk3566-soquartz
      arm64: dts: rockchip: Lower SD card speed on rk3399 Pinebook Pro

Javier Martinez Canillas (1):
      arm64: dts: rockchip: Remove non-existing pwm-delay-us property

Jianqun Xu (1):
      ARM: dts: rockchip: fix a typo error for rk3288 spdif node

Krzysztof Kozlowski (3):
      arm64: dts: rockchip: use just "port" in panel on Pinebook Pro
      arm64: dts: rockchip: use just "port" in panel on RockPro64
      arm64: dts: rockchip: correct panel supplies on some rk3326 boards

Rob Herring (1):
      arm64: dts: rockchip: Fix rk3399 GICv3 ITS node name

Sebastian Reichel (1):
      arm64: dts: rockchip: add rk3588 cache level information

 arch/arm/boot/dts/rk3288.dtsi                          |  2 +-
 .../arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts |  2 ++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi     |  2 --
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts |  2 ++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts     |  2 ++
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           |  1 -
 .../arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi   |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 18 ++++--------------
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi     | 12 +++---------
 arch/arm64/boot/dts/rockchip/rk3399.dtsi               |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi      |  6 ++++--
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts |  6 ++++--
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi              |  9 +++++++++
 15 files changed, 33 insertions(+), 35 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
