Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CB5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 10:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jODaOZShCS7ix/tMG31pv50J9aKG+3wIPZ5sQYWm37g=; b=zDzX7G27wmLSN6
	EQ7nxuFoAmf+UpfBvzEhSGksHkwu7ie0o02yu/Yupsy7ed04r4Ic4Gv5dngRmLZIv9yB7zBD37Pur
	4ZtTZanORHE6MBi1lkODm2QXezsPrYzjV9NFcr2qX+8T4Bnh+awoM7Xsiu4Y+egFmUHOcwmgJolsG
	ZHvcH2fDVhAegUZTEeu3N5MUxSiNiD8LLTPBdVc3oEWRGYbx8/tM41/+ymokxkapYST3w1ljMzB6e
	t2SWHa4hFUX/vWi5m+QWl0am/X7QpnbbaDTQmxxc96ZZQr4+/gIlEuoF5BGIl2LhF/qHIYgXBm5PL
	Eu/WVR38cnjSPeqSAScw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwiZD-0090kA-Pc; Mon, 13 Dec 2021 10:28:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwiCT-008rMv-B3; Mon, 13 Dec 2021 10:04:54 +0000
Received: from p5b127e39.dip0.t-ipconnect.de ([91.18.126.57]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwiCR-0000r3-FE; Mon, 13 Dec 2021 11:04:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 5.16
Date: Mon, 13 Dec 2021 11:04:52 +0100
Message-ID: <3072346.MIvVl8DfR5@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_020453_463022_686576F7 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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

The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:

  Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.16-rockchip-dtsfixes1

for you to fetch changes up to aef4b9a89a376a9cabe5e744729914e7766c59bb:

  arm64: dts: rockchip: fix poweroff on helios64 (2021-11-21 18:59:06 +0100)

----------------------------------------------------------------
Fixes for some board-level issues (regulators, mmc, poweroff, audio)

----------------------------------------------------------------
Alex Bee (1):
      arm64: dts: rockchip: fix audio-supply for Rock Pi 4

Artem Lapkin (1):
      arm64: dts: rockchip: remove mmc-hs400-enhanced-strobe from rk3399-khadas-edge

Florian Klink (1):
      arm64: dts: rockchip: fix poweroff on helios64

John Keeping (2):
      arm64: dts: rockchip: fix rk3308-roc-cc vcc-sd supply
      arm64: dts: rockchip: fix rk3399-leez-p710 vcc3v3-lan supply

 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi     | 2 +-
 5 files changed, 4 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
