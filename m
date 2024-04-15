Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB436C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJ3NhXryJE648LWoiy7GP6NX8NhahP5efRJTTeY5WgI=; b=CocbclwtDpJtK9
	EAe4hFthZvNu3UZ5XHRpDZTEoPHpIHBMvn4MY5wJFQJLnlGSC7YLSgAxlX6qThHsNvCEYHolazggB
	OK7m05DRxj248r0sXC60qo6FvrWnjvUyjXhNea7XuMwXhzXd6h3VWcpYoMC8xEdZRchNv+s1Hq35e
	PPLYhY2txA5bQ0LgQXKuWwa22CGOf4wuTptKzZ2CU2SgPUoNO8wBnn1XAbsEAW5/+w9euavXbfbpr
	wSU5rJDRYv1Pf/+r9ho6jpdtEX9h1ymeZoXtsZ+Tte/MltRLoUXuNQRFQGfylCyxIbD/z00LDR/KO
	L+MUhlhO4fbpparY2pHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQM7-00000009MhG-03AH;
	Mon, 15 Apr 2024 17:42:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQM1-00000009Mg2-3yub;
	Mon, 15 Apr 2024 17:42:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E623260F03;
	Mon, 15 Apr 2024 17:42:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BF3DC113CC;
	Mon, 15 Apr 2024 17:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713202972;
	bh=b5rLA/xVoC+OnWb0hZtV4A0foD6WE7RauuxZaOV01Mg=;
	h=From:To:Cc:Subject:Date:From;
	b=joHMUDe3XpppSRRtQPD1MK47Dqe0DuaSAuEkdvdS+QkgldwdLCa7GWZDYld4zOc/Y
	 C2f+RzkS/7WbglclkVG8xy+L7ipbFF9aMiA5h7WFmvr4DGgd6Z4B+jQ32DdZyikgne
	 Vs6x6Vv1rmX/e+kuXHXsbzubN7QbEGyiFshsw+itXPA3YlTpgV1eWUjEZ8e6RHzebY
	 8FRyTXPj59ZpchT5O80bda4/9uuW48nKKb8JWauEYZ563mYJdrhlXRoM78OCTxh+gD
	 BAGbhjrJBcLe9ggXi9ci+h81/p35HDlrP91bBncIFPxWWpfsVvVSbvLY/kIsCp34KJ
	 /rdxZyjpKbD+Q==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: fix CONFIG_TYPEC dependency
Date: Mon, 15 Apr 2024 19:42:25 +0200
Message-Id: <20240415174241.77982-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_104254_231165_08F14ED2 
X-CRM114-Status: GOOD (  11.76  )
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

From: Arnd Bergmann <arnd@arndb.de>

The newly added driver causes a warning about missing dependencies
by selecting CONFIG_TYPEC unconditionally:

WARNING: unmet direct dependencies detected for TYPEC
  Depends on [n]: USB_SUPPORT [=n]
  Selected by [y]:
  - PHY_ROCKCHIP_USBDP [=y] && ARCH_ROCKCHIP [=y] && OF [=y]

WARNING: unmet direct dependencies detected for USB_COMMON
  Depends on [n]: USB_SUPPORT [=n]
  Selected by [y]:
  - EXTCON_RTK_TYPE_C [=y] && EXTCON [=y] && (ARCH_REALTEK [=y] || COMPILE_TEST [=y]) && TYPEC [=y]

Since that is a user-visible option, it should not really be selected
in the first place. Replace the 'select' with a 'depends on' as
we have for similar drivers.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/rockchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index a752ccdddb86..08b0f4345760 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -120,8 +120,8 @@ config PHY_ROCKCHIP_USB
 config PHY_ROCKCHIP_USBDP
 	tristate "Rockchip USBDP COMBO PHY Driver"
 	depends on ARCH_ROCKCHIP && OF
+	depends on TYPEC
 	select GENERIC_PHY
-	select TYPEC
 	help
 	  Enable this to support the Rockchip USB3.0/DP combo PHY with
 	  Samsung IP block. This is required for USB3 support on RK3588.
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
