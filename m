Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDB9AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 11:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qastR5rdLpr0axWuBRxPuw+bs/uBLvkOOUA67o4qXqM=; b=zNIOprvTZRxWJp
	PooQMFILDpO8pBcgkx40Ax51wQt3qUoIxQEjXsR4TdZNYjzqG73EXV5okCJ+8weNoidpWhGZ4aeuN
	PIqws+kYNaDO8uNotG2sFNlo9MJaS9ke9oo0aH7XJUiyYLTcaVkH5EWeYbUC3Caf6Ekka4H0rbfVI
	70dPHsUVDdZ9yRwUVk1g+bGRNXC5EdZ0aI1ImPI7DkgsT1cgZVyPbHaR7h2H9jD4SAzJDKUtPXdsw
	2FJDusAx80FeYAZi/2e8NlYuT1OnfZqSLteIUSHu1kWUOIzJbXHjDBGUNUEfdSOt4pn9wye/IkNta
	T7JkpS9Ov1Gea2VAiKkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncmtP-00Ger1-5s; Fri, 08 Apr 2022 11:35:07 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmhu-00GYH4-Q6
 for linux-rockchip@bombadil.infradead.org; Fri, 08 Apr 2022 11:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=JlDWJ45LXbwvcatMddiEBWhMMoVgFil2zg20YfM7IiY=; b=FcZR7N8Me74p9BNoJ8F6lM0B6w
 aYk/GEY6nW+WjtNHssY/OZsuNX3H5Ka4g8hM+At1LwZU2EOu82bWShn2p2Cgun8BoDCzEa2VO3KkJ
 yRS3+lJPwNO/7oaJ8lBItXrcy2fdBifa1NhI5ne0iWPX6Jq0po/Pq72tMZPr/IHDH1QuTdY4YdCqQ
 77s36NsAFlLjsSKEIVnCPq1CBh93xqJC6d5cOkC4Vd0vQQIrrUDgZLYF5Y4VKRpebT8g5VKLvTFuH
 CQOyK8/pWHHTV0N3gMDmUtqZZXoSiHUf8b0Zr0tf6+a3EdJIygmi+unrhHi+0gJ4HhRThj14hSb/g
 nu2CDSFA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmhe-002t9m-Ni
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 11:23:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhS-0002IC-VK; Fri, 08 Apr 2022 13:22:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhT-001n4U-8b; Fri, 08 Apr 2022 13:22:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhO-005Z4A-Di; Fri, 08 Apr 2022 13:22:42 +0200
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
Subject: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Date: Fri,  8 Apr 2022 13:22:26 +0200
Message-Id: <20220408112238.1274817-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408112238.1274817-1-s.hauer@pengutronix.de>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_122300_060509_D994972D 
X-CRM114-Status: GOOD (  13.70  )
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v3:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 25 ---------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index cb43e7b47157d..008ab20f39ee6 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -248,26 +248,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
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
@@ -433,7 +413,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -450,7 +429,6 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -470,7 +448,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -488,7 +465,6 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -501,7 +477,6 @@ static struct rockchip_hdmi_chip_data rk3568_chip_data = {
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
