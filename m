Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EEDC2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6dkkb0hI3rTIzBVBU8L8Ef+kRZf9QFx5emIAmOlc2Q=; b=RIfgqt0OkG1DO8
	wQzx7KaodDbgRGmSv+9BBorVEpshMkGGx+zu6lHWVBi5c0WtyVdbVoI1bzCFJFPvdBU53rTHuDmoP
	dl7++af1uavCCRYagsnd7kp/cJJIMSEyGSvaeA4CxRTUp2EtYYA+htycOwphJJ6rYLxzPJKSTj68m
	OhuxPoeY1P5mzR4RLh5/4QOF1HW6KFAzjJBhoZM8pz2k7vFRE9dzgh8DGKNawlnibH2n6uHdwm3PK
	Ed7rrMQXc5itUtalY2535Skp8Hwz52MwCUhUgle0DtNmCB3f1hg0jilv9Z/LvJFz6A6nvXhSFjpQz
	kTFhsGCSaHbNlU551kJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCCV-0000000Dupr-0NA5;
	Fri, 28 Jun 2024 14:03:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCCS-0000000Duoi-3mTH;
	Fri, 28 Jun 2024 14:03:42 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNCCR-0007eC-IE; Fri, 28 Jun 2024 16:03:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.11 #1
Date: Fri, 28 Jun 2024 16:03:38 +0200
Message-ID: <2187283.irdbgypaU6@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070340_972666_A75E6F43 
X-CRM114-Status: GOOD (  10.51  )
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

The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:

  Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dts32-1

for you to fetch changes up to 313da6f69fa41d044b03f2ea37e56fe49f1e8a42:

  ARM: dts: rockchip: add #sound-dai-cells to hdmi node on rk3128 (2024-06-27 20:57:05 +0200)

----------------------------------------------------------------
More attention for the rk3128 soc (dsi, i2c, spdif, sfc), hdmi-sound
for a rk3066a board and some minor cleanups.

----------------------------------------------------------------
Alex Bee (6):
      dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
      ARM: dts: rockchip: Add D-PHY for RK3128
      ARM: dts: rockchip: Add DSI for RK3128
      ARM: dts: rockchip: Add i2s nodes for RK3128
      ARM: dts: rockchip: Add spdif node for RK3128
      ARM: dts: rockchip: Add SFC for RK3128

Heiko Stuebner (1):
      Merge branch 'v6.11-shared/clkids' into v6.11-armsoc/dts32

Johan Jonker (4):
      ARM: dts: rockchip: add hdmi-sound node to rk3066a
      ARM: dts: rockchip: enable hdmi_sound and i2s0 for mk808 hdmi
      ARM: dts: rockchip: add #sound-dai-cells to hdmi node no rk3036
      ARM: dts: rockchip: add #sound-dai-cells to hdmi node on rk3128

 arch/arm/boot/dts/rockchip/rk3036.dtsi       |   1 +
 arch/arm/boot/dts/rockchip/rk3066a-mk808.dts |   8 ++
 arch/arm/boot/dts/rockchip/rk3066a.dtsi      |  16 ++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi       | 128 +++++++++++++++++++++++++++
 include/dt-bindings/clock/rk3128-cru.h       |   1 +
 5 files changed, 154 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
