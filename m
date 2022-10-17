Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6FF2C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 08:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WuJf85TSoDAKGxiZtCIRMZg3M7+BjvaJw7+C5S7TfE0=; b=fdAZxquQux+qJq
	gOzSkBTmlnRTfEZ8aompGiKoaCQtCuiDLRPJifrBu1vVDqSRtIzx+c4b2RJuEJrO2cjVg9JSSyc3O
	UsySPkTDVuqBkeF53Dx5m9FQahWeh1dYoUOMdhv6FdwP5yvKa/m+aMZBazRPmjvLCdgIHYLOZt/pB
	DujAofFKdAIp91CxqpdC5pPm0XY3zMzEzvlrfLsLVexWwKffVtNTTWn41Ad31Fe4AptMfrGaBjc2s
	0jSwtC41SvvTNQSYadSqoc9C7WJwcYm9GBu9FiUlZ3zjX7UtpODs2RszkAiq4sRO9vR4kFHzaQQK2
	e9aGyOapKPPpOXP999FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLjc-009DEi-PT; Mon, 17 Oct 2022 08:44:32 +0000
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLjM-009Cyc-Qc; Mon, 17 Oct 2022 08:44:18 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R611e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045192;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0VSLCgh6_1665996241;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VSLCgh6_1665996241)
          by smtp.aliyun-inc.com;
          Mon, 17 Oct 2022 16:44:11 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: hjc@rock-chips.com
Cc: heiko@sntech.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] drm/rockchip: dsi: Remove the unused function dsi_update_bits()
Date: Mon, 17 Oct 2022 16:43:30 +0800
Message-Id: <20221017084330.94117-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_014417_053256_AAF5FE59 
X-CRM114-Status: UNSURE (   6.04  )
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

The function dsi_update_bits() is defined in the dw-mipi-dsi-rockchip.c
file, but not called elsewhere, so delete this unused function.

drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c:367:20: warning: unused function 'dsi_update_bits'.

https://bugzilla.openanolis.cn/show_bug.cgi?id=2414
Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bf6948125b84..313231d886d2 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -364,12 +364,6 @@ static inline u32 dsi_read(struct dw_mipi_dsi_rockchip *dsi, u32 reg)
 	return readl(dsi->base + reg);
 }
 
-static inline void dsi_update_bits(struct dw_mipi_dsi_rockchip *dsi, u32 reg,
-				   u32 mask, u32 val)
-{
-	dsi_write(dsi, reg, (dsi_read(dsi, reg) & ~mask) | val);
-}
-
 static void dw_mipi_dsi_phy_write(struct dw_mipi_dsi_rockchip *dsi,
 				  u8 test_code,
 				  u8 test_data)
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
