Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0BDCD4F3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3c8LuGWlG1UueB+hCX2brnWU+spcIcEHRYi/rG3a8g=; b=W4omGTflpBfooY
	QH2Cuj/UgX/1WKqHMgzVADvglRJVljfHSa3MRfqpBxqz2sYOL9Gldq4d1sgf+d/yMaRPVOYJIhN4x
	Y8FWpfXHh6LJLaTuCzCTNmdLuMQUqRR+NixJZbvUqBCZBtyG7vP4u6AmYd5zbOQbx8AsVxQ6bzaha
	Te/Iff1vTCOHoR8+6JOxFh0jYFw/oOOgxOIg8v1VJTV+uw1I8LAbiOFYDqGr6M70tooxQs/NK4/VD
	ukHNBOvtRgWkL7TJqEIxSNxrTQPY4hX1R5bDoLFRU8a3JGoht/ruplEkF6tWBEs5C6OGePtVihvrT
	Eft85BzFPFYV1IRZbUtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyoA-00000009IP0-1sgV;
	Fri, 15 May 2026 20:06:54 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyo7-00000009IN9-3Xvo
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 20:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778875593; bh=mQVj/vJocDfc9bnl+TBBUvO4ZpEZfSztcJ6eIOcbskY=;
 b=p8dQIVFE9o2O1px0lpTNVxRrB4fiFJzwJa4QgNd+R2yox8Ck6xrTccpxR+GyamyKJZgQqvBwV
 yufUl58Q2GizNO0A2x1UgNs0+P1lJu0MCVEBh721t3zxUfQznvOXt5VF/4uR49hMRSYSdiAII6a
 5oh8JruzRrancPD6LnEezNlbQmwA1SSRZqYEKE3F8mHda5CUTNm3k5IEoKewc2uWroQdqRGiClM
 iqiB98i4vKHuCBbk3HxithQugxpAxYmHyipjAxuYmbvCKHA8g23OjjyM0e+62AXeZjn7UWBBkh5
 Q++sCDRdKZ0fKw+uqpCBA73a05x/lSWp1iusr5TyZLSg==
X-Forward-Email-ID: 6a077a26ad7e292af75a1093
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 1/2] phy: rockchip: inno-hdmi: Add configure() and validate() ops
Date: Fri, 15 May 2026 19:55:10 +0000
Message-ID: <20260515195512.1757363-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260515195512.1757363-1-jonas@kwiboo.se>
References: <20260515195512.1757363-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_130651_887367_1E7D289A 
X-CRM114-Status: GOOD (  21.78  )
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

The commit 10ed34d6eaaf ("phy: Add HDMI configuration options")
introduced a way for HDMI PHYs to be configured through the generic
phy_configure() function.

This driver derives the TMDS character rate from the pixel clock and the
PHY bus width setting. However, no in-tree consumer of this PHY has ever
called phy_set_bus_width() to change the TMDS character rate as only
8-bit RGB output is supported by the HDMI display driver.

Add configure() and validate() ops to allow consumers to configure the
TMDS character rate using phy_configure(). Fallback to the deprecated
way of using the PHY bus width to configure the TMDS character rate.

A typical call chain during DRM modeset on a RK3328 device:

  dw_hdmi_rockchip_encoder_atomic_check():
  - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000

  dw_hdmi_rockchip_encoder_atomic_mode_set():
  - inno_hdmi_phy_configure(): pixclock 148500000
    - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000

  vop_crtc_atomic_enable():
  - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000
  - inno_hdmi_phy_rk3328_clk_set_rate(): pixclock 594000000 tmdsclock 594000000
  - inno_hdmi_phy_rk3328_clk_recalc_rate(): pixclock 594000000 vco 594000000

  dw_hdmi_rockchip_encoder_enable():
  - inno_hdmi_phy_power_on(): Inno HDMI PHY Power On
  - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- Change validate() ops to only validate tmdsclock
- Add comments about expected consumer usage
- Update commit message with a typical call chain
Changes in v2:
- Add validate() ops to validate that the TMDS rate is supported
- Split out parts that remove the old workaround into a separate patch

Patch "drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()"
at [1] adds phy_validate() and phy_configure() calls for this HDMI PHY.

[1] https://lore.kernel.org/dri-devel/20260510183114.1248840-10-jonas@kwiboo.se/
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 60 ++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 1483907413fa..efa95c22b3bb 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -245,6 +245,7 @@ struct inno_hdmi_phy {
 	struct clk *phyclk;
 	unsigned long pixclock;
 	unsigned long tmdsclock;
+	struct phy_configure_opts_hdmi hdmi_cfg;
 };
 
 struct pre_pll_config {
@@ -554,7 +555,12 @@ static inline void inno_update_bits(struct inno_hdmi_phy *inno, u8 reg,
 static unsigned long inno_hdmi_phy_get_tmdsclk(struct inno_hdmi_phy *inno,
 					       unsigned long rate)
 {
-	int bus_width = phy_get_bus_width(inno->phy);
+	int bus_width;
+
+	if (inno->hdmi_cfg.tmds_char_rate)
+		return inno->hdmi_cfg.tmds_char_rate;
+
+	bus_width = phy_get_bus_width(inno->phy);
 
 	switch (bus_width) {
 	case 4:
@@ -602,6 +608,55 @@ static irqreturn_t inno_hdmi_phy_rk3328_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int inno_hdmi_phy_validate(struct phy *phy, enum phy_mode mode,
+				  int submode, union phy_configure_opts *opts)
+{
+	const struct pre_pll_config *cfg = pre_pll_cfg_table;
+	unsigned long tmdsclock;
+
+	if (!(mode == PHY_MODE_HDMI && submode == PHY_HDMI_MODE_TMDS))
+		return -EINVAL;
+
+	if (!opts->hdmi.tmds_char_rate || opts->hdmi.tmds_char_rate > 594000000)
+		return -EINVAL;
+
+	/*
+	 * phy_validate() is expected to be called from encoder atomic_check(),
+	 * before the hdmiphy pixel clock is known. Without knowing the actual
+	 * pixel clock, we cannot do full validation of the configuration.
+	 * Instead, we do a simple check that the pre-pll table contains an
+	 * entry for the requested TMDS character rate.
+	 */
+	tmdsclock = opts->hdmi.tmds_char_rate;
+	for (; cfg->pixclock != 0; cfg++)
+		if (cfg->tmdsclock == tmdsclock)
+			return 0;
+
+	return -EINVAL;
+}
+
+static int inno_hdmi_phy_configure(struct phy *phy,
+				   union phy_configure_opts *opts)
+{
+	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
+	int ret;
+
+	ret = inno_hdmi_phy_validate(phy, phy_get_mode(phy),
+				     PHY_HDMI_MODE_TMDS, opts);
+	if (ret)
+		return ret;
+
+	/*
+	 * phy_configure() is expected to be called from atomic_set_mode(),
+	 * before the hdmiphy pixel clock is known. Store the requested TMDS
+	 * character rate, so that it can be used later in power_on() and/or
+	 * set_rate() when the pixel clock is known.
+	 */
+	inno->hdmi_cfg = opts->hdmi;
+
+	return 0;
+}
+
 static int inno_hdmi_phy_power_on(struct phy *phy)
 {
 	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
@@ -670,6 +725,8 @@ static const struct phy_ops inno_hdmi_phy_ops = {
 	.owner = THIS_MODULE,
 	.power_on = inno_hdmi_phy_power_on,
 	.power_off = inno_hdmi_phy_power_off,
+	.configure = inno_hdmi_phy_configure,
+	.validate = inno_hdmi_phy_validate,
 };
 
 static const
@@ -1392,6 +1449,7 @@ static int inno_hdmi_phy_probe(struct platform_device *pdev)
 	}
 
 	phy_set_drvdata(inno->phy, inno);
+	phy_set_mode_ext(inno->phy, PHY_MODE_HDMI, PHY_HDMI_MODE_TMDS);
 	phy_set_bus_width(inno->phy, 8);
 
 	if (inno->plat_data->ops->init) {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
