Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642BAC67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 22:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pjWQ6We7hKaunY+q1A3bFU+7xlOjb1Gr1gPFhEIrOL8=; b=jAYQrXvzYgVjbA
	6dt3DT3cY58dkpvqLAWDCCBEBm8/OhbkntCaDzsJShcBKpCA77JkwphwXy7CGAiFtdgXZ02jb2Ehp
	RmptSKSrTnUCK18Ym/kaESKbP6FXmMCiNp7fpZN486F0ZkBl46t8EFq76FLdxSqOiAT1iQbOYY6li
	rRlly3VlpuFan4daLgnF/ziP5j7QirOvsDRZDh0U3+1PThNNblrNbFRvpTi1qqtylZaz4hMNo+ymN
	Fa5qf2pb3OLC67erazBrBpHAda0OzsVyqSkS68AoP3DlekQu3nhtmxd6GfEebdldLJuSd0n8Og61H
	l8Ge6BsM+J4VXacb4IxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtxUh-0000000H1R4-1wUU;
	Mon, 08 Apr 2024 22:29:39 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtxUd-0000000H1PG-0rzC;
	Mon, 08 Apr 2024 22:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712615369;
	bh=3COvrdRUXf3EnV72Dbioxkcz2kZLKag4fAKpaIM7UKQ=;
	h=From:To:Cc:Subject:Date:From;
	b=yd3MumOCP1JO+SiMH/8ecXlW63dJZTbkKearngXIKlyVbnlqqUlcQxVvi6GtpTG3m
	 +i1xSbyI/+xj185A83oZ4Ki8iNeZOWHwr1keBYCi5UynJIra4z9esdRreRhI2pA1Yq
	 UkclNPrI7afzZT3mlBcgTqdz24LZ7U7Z9dGrn3TX9MXI/n2lJ8tzVCpcCbINMXytW1
	 axw0bPOt+MbASXqnCFiTzFFb7SFN3nZcxGAOWHE0bFtN+1d8o2c9ZQ3DQfVEEvYT/a
	 qLRX8WpzviLSYclPljEHyS+BpdtGxBLOU3amBH8O5fUXMK844juIJWCHbWyKTcgfth
	 tjhOEBLTYLmjA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DCCAA37809CE;
	Mon,  8 Apr 2024 22:29:28 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Select CONFIG_RATIONAL
Date: Tue,  9 Apr 2024 01:29:25 +0300
Message-ID: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_152935_454430_EC4554FF 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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

Ensure CONFIG_RATIONAL is selected in order to fix the following link
error with some kernel configurations:

drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_ropll_tmds_cmn_config':
phy-rockchip-samsung-hdptx.c:(.text+0x950): undefined reference to `rational_best_approximation'

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202404090540.2l1TEkDF-lkp@intel.com/
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index a34f67bb7e61..b60a4b60451e 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -87,6 +87,7 @@ config PHY_ROCKCHIP_SAMSUNG_HDPTX
 	tristate "Rockchip Samsung HDMI/eDP Combo PHY driver"
 	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
 	select GENERIC_PHY
+	select RATIONAL
 	help
 	  Enable this to support the Rockchip HDMI/eDP Combo PHY
 	  with Samsung IP block.
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
