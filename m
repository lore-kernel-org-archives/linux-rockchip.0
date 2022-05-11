Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43B3CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 04:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S/rEUbBh3PSob+xvbG2G6SjeTJ5QvM5VD/ljL8LAAv0=; b=yLtpCyqf/+pq7d
	dOShiWxf422YDL1VvZpxeSgyVDEH1dd3gi0pxofptXBVonEI1X+XLYavV8AP2aYblb62mxZUtDnw5
	gBeIam5HVj18Iqppxav7AZofI1SAPxBlrqjL3e25Zu2CiZY68/ZSqbGDxH0etZiJRzd/EMWCtu+j/
	G2wy47fbdtBLUqvQRq29EaALGvbL32iweWdAbPx6c5N6fj3gCfMwet2lM79Y5n87ZXjffpqKjFHqO
	0tXiV4AJnFiO2Uag61aS/TGQ5oQxr8U7/AWF2O6DNTWGIS471LR/mg7AG70/+EN8PbOPYlV3Wgfce
	BMj+QD4kZqdIfP939NFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noddA-0056Rs-SD; Wed, 11 May 2022 04:07:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nodd6-0056R6-I6; Wed, 11 May 2022 04:07:18 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nodcx-0000SY-QE; Wed, 11 May 2022 06:07:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 5.18
Date: Wed, 11 May 2022 06:07:07 +0200
Message-ID: <2300256.NG923GbCHz@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_210717_096516_7647305C 
X-CRM114-Status: UNSURE (   8.64  )
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

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-dtsfixes1

for you to fetch changes up to 77047ed73dd8b80c209bf5b5c215b858f1f5b14a:

  arm64: dts: rockchip: Add gmac1 and change network settings of bpi-r2-pro (2022-04-10 18:34:50 +0200)

----------------------------------------------------------------
Fixes for the mass-production version of BananaPi R2-Pro.
The mass market version received some changes compared to
preproduction versions and especially the io-domain setting
could affect the lifespan of the board if the wrong dt
gets booted on it.

----------------------------------------------------------------
Frank Wunderlich (2):
      arm64: dts: rockchip: Change io-domains of bpi-r2-pro
      arm64: dts: rockchip: Add gmac1 and change network settings of bpi-r2-pro

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 40 +++++++++++++++++++---
 1 file changed, 35 insertions(+), 5 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
