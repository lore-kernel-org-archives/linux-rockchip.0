Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36468C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fvo9z1vko6+jCaxKPxRdS0F9Zo79zvKy//+2tv2NoA=; b=4lZgJvTyguYSRj
	D0bzjh9nZUbmRUv1SJ0otvHCF3HpI6cQvwur4VuMWBxvt44D/ykm6NycPhyF7U9yJq74TNR1QWB32
	7nK4sYnCffVfQQ0QEbmtieO9h5JWEgIFe5vn7IEGZ2+NF3zlgmISqwxgeu3EbobDuj4GLGXnCF6Hh
	61P0UeDtu1GWLpu+jWkXBZnpFRmJ2FYB6pCoGRQXhVTX8wL0fnQF2JzpUypZgk5bRjCNRJCd111IJ
	ZyWYdS3qdvT72nwmbCiBW7f88ho/PW5AZZRzd+lR5PNK/OMnHx2qSBjfW7FOGOHla91iY6MMi6evg
	QgT+bntblF4RFbOMYIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCjwj-00C9xq-GF; Wed, 26 Jan 2022 15:10:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkm-00C4J4-Ms
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=H1HlY6I2khkMAa5C+eaHTSz/ga+O5TYetTOsu5HA4fI=; b=ACpvObkVFujI84O2+zw/h36+rd
 acHETKQM6gvbtze0+y4tWvWcJGL04nGpVH/LbjlNX4xCMDtGGRkeu6h9XY/j3f8DW4HXi4N5Y0FII
 ElR3kg5r90dE/gDuFEmQbtJ2uM6OHNed0VZEchtQkLfttyudSwfDKtcQyCHimYJ7Pe7PuQfMrfH71
 360w6VLEBmlaE8JgSL0upZlXx4wxXUJMd3BR46VbWGhdqomdSpoXN2O4wuJNu6hCOSOiZJvu+LA5l
 buUuYH6DTjLf1Hnj2Ic9Qipx3VYj3s9mxdn0UVj/gFbMqSm7OmYC75/wpIR3o1juDRNDOn1OIQIXF
 LgmU5f0g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkj-003piT-0o
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkb-0005fH-J0; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l6R-Hv; Wed, 26 Jan 2022 15:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 08/27] drm/rockchip: dw_hdmi: drop mode_valid hook
Date: Wed, 26 Jan 2022 15:55:30 +0100
Message-Id: <20220126145549.617165-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145829_148595_C0C41292 
X-CRM114-Status: GOOD (  14.50  )
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

The driver checks if the pixel clock of the given mode matches an entry
in the mpll config table. The frequencies in the mpll table are meant as
a frequency range up to which the entry works, not as a frequency that
must match the pixel clock. The downstream Kernel also does not have
this check, so drop it to allow for more display resolutions.

Changes since v3:
- new patch

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 25 ---------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 160107b333ef..c44eb4d2e2d5 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -256,26 +256,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 	return 0;
 }
 
-static enum drm_mode_status
-dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
-			    const struct drm_display_info *info,
-			    const struct drm_display_mode *mode)
-{
-	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
-	int pclk = mode->clock * 1000;
-	bool valid = false;
-	int i;
-
-	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		if (pclk == mpll_cfg[i].mpixelclock) {
-			valid = true;
-			break;
-		}
-	}
-
-	return (valid) ? MODE_OK : MODE_BAD;
-}
-
 static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
 {
 }
@@ -441,7 +421,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -458,7 +437,6 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -478,7 +456,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -496,7 +473,6 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -509,7 +485,6 @@ static struct rockchip_hdmi_chip_data rk3568_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
