Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0151CD3427
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 May 2026 17:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KXnoaFPdYcS2ZdW1fQroHbO4e9ovOkVh7W+nUWQQKz0=; b=TYHwboyWwBd73J
	V7ApG+9kw/b2E3ZpIeBfdpExUoePdhWCzsOzacL2gsEeaZ4peo2QVyZswZwyZ/KfqDWLFgVZwHgk4
	tWBBD5Y6lkdo1w1nFzOblLEshM0Yn7ZMfQclDRDwCkuolymSzWhcSAMbpw/4cgipCfC333epqk8Ei
	Yn/Lri5YoQOcsjdBDdtav4dlrzbTdAPS3GvywQqvjZE5JY01SkdCMoyz5U+FVEHX4PiQib94dKlSv
	4pNT2to6JwYJhcBZ8LY8Rl/DsWcTTRm4HnNMeosH+M2gdEurhcm4NeaZ6qWs6a3hJJNn5lyyOLd+A
	gkn/Z7rJlJoDkX3qQlpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJadd-0000000BPJ7-1qXM;
	Sun, 03 May 2026 17:29:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJadZ-0000000BPHh-3X0H
	for linux-rockchip@lists.infradead.org;
	Sun, 03 May 2026 17:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1777829389;
 bh=cUmX2lfSAIxHAO30a5b/VSjazGULvRZ0BJbIP2Jnpbg=;
 b=UuRDOGnZd1nKw2tayWyEY5ruXqSRhDmuHQTnrncD1ZJUFRY8QNTMmH9fLjcH3ihxXIXd5kQ0H
 xOVYWWSfCCi30ycZnYRbbtf++ysICmjG0UFqEidIGoMRgFoyhwFATs9bpcmHLIplxdRctX6Ad0J
 zNJl5NIapOlKX5Uv4R2B7Vli02sP6vtd5GiZnYnh6F5RzWrrOzd2QwZ2Pis1pKBVjKHmWpdzpQs
 +rUBQWhkH1H4ZdH0HNd5gX+gR3+Vv/8WBklgXv5SXY+O1CkB0vh8b09XAAkPaLoWdMcVmMgtRMV
 2ZHthnZOS1EoXjKLekCbwA3S6tbHfn6Qjy5jDAtKriwA==
X-Forward-Email-ID: 69f78606acdb2a4edb003b13
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops
Date: Sun,  3 May 2026 17:29:36 +0000
Message-ID: <20260503172936.194003-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_102950_170109_2B837533 
X-CRM114-Status: GOOD (  13.99  )
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

This driver currently derives the TMDS character rate from the pixel
clock and the PHY bus width setting. However, no in-tree consumer of
this PHY has ever called phy_set_bus_width() to change the TMDS rate.

Change the TMDS character rate handling to depend on the configure() ops
before any PHY consumer needs to configure a TMDS character rate that is
different from the pixel clock rate.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
A near future drm/rockchip: dw_hdmi: series plans to include a call to
phy_configure() to configure this HDMI PHYs TMDS character rate.
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++---------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 1483907413fa..7f0563d4d482 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -245,6 +245,7 @@ struct inno_hdmi_phy {
 	struct clk *phyclk;
 	unsigned long pixclock;
 	unsigned long tmdsclock;
+	struct phy_configure_opts_hdmi hdmi_cfg;
 };
 
 struct pre_pll_config {
@@ -554,19 +555,10 @@ static inline void inno_update_bits(struct inno_hdmi_phy *inno, u8 reg,
 static unsigned long inno_hdmi_phy_get_tmdsclk(struct inno_hdmi_phy *inno,
 					       unsigned long rate)
 {
-	int bus_width = phy_get_bus_width(inno->phy);
-
-	switch (bus_width) {
-	case 4:
-	case 5:
-	case 6:
-	case 10:
-	case 12:
-	case 16:
-		return (u64)rate * bus_width / 8;
-	default:
-		return rate;
-	}
+	if (inno->hdmi_cfg.tmds_char_rate)
+		return inno->hdmi_cfg.tmds_char_rate;
+
+	return rate;
 }
 
 static irqreturn_t inno_hdmi_phy_rk3328_hardirq(int irq, void *dev_id)
@@ -602,6 +594,16 @@ static irqreturn_t inno_hdmi_phy_rk3328_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int inno_hdmi_phy_configure(struct phy *phy,
+				   union phy_configure_opts *opts)
+{
+	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
+
+	inno->hdmi_cfg = opts->hdmi;
+
+	return 0;
+}
+
 static int inno_hdmi_phy_power_on(struct phy *phy)
 {
 	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
@@ -668,6 +670,7 @@ static int inno_hdmi_phy_power_off(struct phy *phy)
 
 static const struct phy_ops inno_hdmi_phy_ops = {
 	.owner = THIS_MODULE,
+	.configure = inno_hdmi_phy_configure,
 	.power_on = inno_hdmi_phy_power_on,
 	.power_off = inno_hdmi_phy_power_off,
 };
@@ -1392,7 +1395,6 @@ static int inno_hdmi_phy_probe(struct platform_device *pdev)
 	}
 
 	phy_set_drvdata(inno->phy, inno);
-	phy_set_bus_width(inno->phy, 8);
 
 	if (inno->plat_data->ops->init) {
 		ret = inno->plat_data->ops->init(inno);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
