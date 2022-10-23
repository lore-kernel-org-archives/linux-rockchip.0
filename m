Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE6ABECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 16:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a6HIZjL8gobiRue2T5Sx8nf2/6eHfl3SfB/1iCHvGsA=; b=AXhXAClWSzEBnP
	dxvpa+cMKWu9zKdlRsdIH/jBBJUlLx/aUKvoah9choQDB+WB7eFDX9TA7ycg+IS39hxLElehyLD82
	TPjfsL4egmFpprfbdderi+yWBe9coS4ftunPGcEZsFKg6CUVsobVnES1B8D8ACG8kqChAqjkM3aGc
	/H16VLZguX6qWYIz+aIjUvzcrTMIVEW3+ahqXOx+jE2/QV6eL42iGaE/Acq+wfA/BUtDlUcYGVFVC
	nq56G9oXM3M9CJKBFXt2wnpdSqIzYUPtlB1DAru7y/1JQBHts/ULqx6x5bF8UYtv8/5c9Wwc4lvBx
	kvcokwCiHT+4i+NDutrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omdWI-00FfNO-Vz; Sun, 23 Oct 2022 16:08:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omdW8-00FfLQ-4s; Sun, 23 Oct 2022 16:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1666541278; bh=Xqe11Ibqu1NMh5rur/Ihh+EKSfXa12WMvQt557WAbbY=;
	h=From:To:Cc:Subject:Date:From;
	b=C7R1LepSst+u0rs2BWjVoU/OgTNul4lRGyCMQgdXH/iuYd1xPpgj29NwV5AT2T95A
	 dDivamyUv51VfefpUpwDdaxiIax1TAPHjawjkw1u42EItsmM0RkZua5xlASwThYL0f
	 7KSk+LpLgTkW3HY7EBBPHufiphKpFKK+cv/wSD1c=
From: Ondrej Jirman <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Chris Morgan <macromorgan@hotmail.com>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] drm/rockchip: dsi: Fix VOP selection on SoCs that support it
Date: Sun, 23 Oct 2022 18:07:47 +0200
Message-Id: <20221023160747.607943-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_090804_999667_30E7E2F6 
X-CRM114-Status: UNSURE (   8.51  )
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

lcdsel_grf_reg is defined as u32, so "< 0" comaprison is always false,
which breaks VOP selection on eg. RK3399. Compare against 0.

Fixes: f3aaa6125b6f ("drm/rockchip: dsi: add rk3568 support")
Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 7d50a4f463d9..2982a4e9a6ed 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -760,7 +760,7 @@ static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi)
 static void dw_mipi_dsi_rockchip_set_lcdsel(struct dw_mipi_dsi_rockchip *dsi,
 					    int mux)
 {
-	if (dsi->cdata->lcdsel_grf_reg < 0)
+	if (dsi->cdata->lcdsel_grf_reg)
 		regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
 			mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
 }
@@ -1643,7 +1643,6 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
 	{
 		.reg = 0xfe060000,
-		.lcdsel_grf_reg = -1,
 		.lanecfg1_grf_reg = RK3568_GRF_VO_CON2,
 		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI0_SKEWCALHS |
 					  RK3568_DSI0_FORCETXSTOPMODE |
@@ -1653,7 +1652,6 @@ static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
 	},
 	{
 		.reg = 0xfe070000,
-		.lcdsel_grf_reg = -1,
 		.lanecfg1_grf_reg = RK3568_GRF_VO_CON3,
 		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI1_SKEWCALHS |
 					  RK3568_DSI1_FORCETXSTOPMODE |
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
