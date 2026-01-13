Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6648ED2D103
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bt3Jo1pbAhWDUODGWLauOfagU1FWmldqwCHjKhKYfaw=; b=O9JqP858YkXbjw
	wBn6HMTgpZckqqxyMVDxROoR7Z7RdvsQkcrhaj7mcH2ogDGNysGdVDM8fwHbdREuFwQMsqhJtwvIx
	/mePAfiMBLW/Q7u1jhmlMlye5hJDPw3KO+LTe4B9ZhrZCsJwMdy3ndgBCX98FQtF6/RN1DwbaCf+j
	8mnk3YHnL8ZWnIyvkoKjOkjJps0/HihQ2gKWI1D+CxHKcZ7W8hPwDH6HYKywxJEpK3eyjZ4+VexO8
	g2xESQ4wtMGebG7YdGnZHOSBPyniQWI11Bjc66F5BhRQOxPgTewMukbIjGfZuimI+98fCp8B0R393
	XB32WjO4nAwkoILvn0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfei6-00000007AfR-43H3;
	Tue, 13 Jan 2026 13:45:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfei4-00000007Aew-3fPz;
	Tue, 13 Jan 2026 13:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=z9jDZ0U0+KANI9tzxxMG4W2Nc4jLJjawz7bwnY2eJ5s=; b=STMTjWpcsiXuITptpYSE5yDqcO
	CkMuO18H8U83fVn6n07DAR44pONJDLGyfu9vUEmMV8q5+O4ZSNf8xyim8lOd1+XUiHB/W/4q6Q21B
	kGuZLdV5YS5znOqxwVKcbobtJkPNHmAYp+wwb4SnVsDiTLZR8xXD5qRtERYWJ8HQLJuID5oWLDRSc
	vgmHHds4xJauYOoDtj17f7GXq1PC+sVLJdLeg+WDCIJ01yGafTFgPGxSnJlQ6ChZUW6W966QVjard
	rwVF1m8Ypeh42dqDjvfjQkE4hGVKAHxFQlLHWTDh024SJZTRtPt4QllezzE8H2X9fT/zlEPdHSHpy
	9J7iqiww==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfei2-00275y-6i; Tue, 13 Jan 2026 14:45:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.19 #1
Date: Tue, 13 Jan 2026 14:45:22 +0100
Message-ID: <17171017.hlxOUv9cDv@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_054524_964168_AF7D0EE9 
X-CRM114-Status: GOOD (  12.77  )
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

Hi SoC maintainers,

please find a below some Rockchip fixes for the current 6.19 release-cycle.

Please pull

Thanks
Heiko


The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.19-rockchip-dtsfixes1

for you to fetch changes up to 56e7cc8dadf91cd2164e5d6dac9258f448d50182:

  arm64: dts: rockchip: Drop unsupported properties (2026-01-09 20:50:14 +0100)

----------------------------------------------------------------
In terms of bigger fixes, RK3576 GPU register range was overflowing into
the next peripheral, Nano Pi M5 sound was not working correctly, the
adc-keys voltage levels for 2 buttons on the Pinephone Pro were wrong
and a really wrong PCIe linkspeed was removed from helios64.

Apart from that there are a number of dt-cleanlieness fixes.

----------------------------------------------------------------
Alexey Charkov (2):
      arm64: dts: rockchip: Fix headphones widget name on NanoPi M5
      arm64: dts: rockchip: Configure MCLK for analog sound on NanoPi M5

Chaoyi Chen (1):
      arm64: dts: rockchip: Fix wrong register range of rk3576 gpu

Geraldo Nascimento (2):
      arm64: dts: rockchip: remove dangerous max-link-speed from helios64
      arm64: dts: rockchip: remove redundant max-link-speed from nanopi-r4s

Krzysztof Kozlowski (1):
      arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B

Ondrej Jirman (1):
      arm64: dts: rockchip: Fix voltage threshold for volume keys for Pinephone Pro

Quentin Schulz (1):
      arm64: dts: rockchip: fix unit-address for RK3588 NPU's core1 and core2's IOMMU

Rob Herring (Arm) (4):
      arm64: dts: rockchip: Drop "sitronix,st7789v" fallback compatible from rk3568-wolfvision
      arm64: dts: rockchip: Fix pinctrl property typo on rk3326-odroid-go3
      arm64: dts: rockchip: Fix gpio pinctrl node names
      arm64: dts: rockchip: Drop unsupported properties

 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts           |  3 ++-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts       |  2 --
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi          |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts         |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts        |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi                |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts         |  4 ++--
 .../boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso  |  3 +--
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts            | 12 ++++++++----
 arch/arm64/boot/dts/rockchip/rk3576.dtsi                     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi                |  4 ++--
 12 files changed, 20 insertions(+), 20 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
