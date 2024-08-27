Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DD4AC54739
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfu1pXssOoZthE85ydEVj+kxM87I08tTt7K2UzZ1LnQ=; b=sOLZ9ROFdTwc7b
	34+ohHZaUdac3l5epT2LxlDZ8tKvV6VK1ELBjapoF2a2xOZWr9RmBfXuU+hUxtlM8kSFlThrfUuYn
	nDEqp23uan4yAnGOWLyQyd2GtJDa4fHmYeyLto2QO2cTNQVw3T2KUDQADOTAqyrOkbbKYKf/K3eOW
	GxMGxBoAjKoE85p90O9gYllfdJm+7rnBmZhqg5WdR/ImzNQ2onO34dmr3PV7m/dwjUDWdgdJA2L23
	gD7P8X/yi5IQIqORgMr6lE+JD7NuAlhbXtDsT0Ae2lhLt5hJgHNUJ8O6MRIMIezMIIfdoY/U77J9S
	dsMhpF0u6WPU1HDmepDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitV3-0000000ApIC-0hyl;
	Tue, 27 Aug 2024 10:32:33 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitUz-0000000ApFX-17IR
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ecwUy
	Pbd+3NIvBvhkRMKiPwJRtmOLx/mIpJ/IpKOxtk=; b=Ps1xTvWMpVrcsRYfTpwX2
	O8FrRcV0Ottsqm/LFkpy9UK/PJbKVgdDfgzPA8jZdNLVnowIzs8g9qM8z0qihF/L
	Vd4u1CXkC9d0f8QLfp0qe1vvMfgvg3n9V9HSP2wLWu1tyStEzdjFtBZQ30DJX8L1
	sbGZsdyqbfDoRWFV4gC8s8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp4 (Coremail) with SMTP id sygvCgBHnBwtq81mBkshAA--.8204S7;
	Tue, 27 Aug 2024 18:32:21 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH 5/5] drm/rockchip: Add basic RK3576 HDMI output support
Date: Tue, 27 Aug 2024 18:32:11 +0800
Message-Id: <20240827103211.3132728-6-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827103211.3132728-1-andyshrk@163.com>
References: <20240827103211.3132728-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: sygvCgBHnBwtq81mBkshAA--.8204S7
X-Coremail-Antispam: 1Uf129KBjvJXoWxtw4Duw48CFy8KF4kCF4fGrg_yoWfCr1fp3
	yay34UJryktF47Jr4SkFyaqay2y3W7trZagasFgayYvay0gr1fKF97WF45JF90qF9rZF17
	A3yvvay5JF47J3JanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j0UDXUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxZIXmXAnc2L7wAAsi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033230_233312_13BF8148 
X-CRM114-Status: GOOD (  14.28  )
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
Cc: heiko@sntech.de, s.hauer@pengutronix.de, hjc@rock-chips.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

The HDMI on rk3576 is share the same IP block (PHY and Controller)
with rk3588.

It depends on the WIP patch from Cristian[0]:

[0]https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 174 ++++++++++++++----
 1 file changed, 143 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 3ad5e62a1a85..67b84bf24e5b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -23,6 +23,41 @@
 
 #include "rockchip_drm_drv.h"
 
+#define RK3576_IOC_MISC_CON0		0xa400
+#define RK3576_HDMI_HPD_INT_MSK		BIT(2)
+#define RK3576_HDMI_HPD_INT_CLR		BIT(1)
+
+#define RK3576_IOC_HDMI_HPD_STATUS	0xa440
+#define RK3576_HDMI_LEVEL_INT		BIT(3)
+
+#define RK3576_VO0_GRF_SOC_CON1		0x0004
+#define RK3576_HDMI_FRL_MOD		BIT(0)
+#define RK3576_HDMI_HDCP14_MEM_EN	BIT(15)
+
+#define RK3576_VO0_GRF_SOC_CON8		0x0020
+#define RK3576_COLOR_FORMAT_MASK	(0xf << 4)
+#define RK3576_COLOR_DEPTH_MASK		(0xf << 8)
+#define RK3576_RGB                     (0 << 4)
+#define RK3576_YUV422                  (0x1 << 4)
+#define RK3576_YUV444                  (0x2 << 4)
+#define RK3576_YUV420                  (0x3 << 4)
+#define RK3576_8BPC                    (0x0 << 8)
+#define RK3576_10BPC                   (0x6 << 8)
+#define RK3576_CECIN_MASK		BIT(3)
+
+#define RK3576_VO0_GRF_SOC_CON12	0x0030
+#define RK3576_GRF_OSDA_DLYN		(0xf << 12)
+#define RK3576_GRF_OSDA_DIV		(0x7f << 1)
+#define RK3576_GRF_OSDA_DLY_EN		BIT(0)
+
+#define RK3576_VO0_GRF_SOC_CON14	0x0038
+#define RK3576_I2S_SEL_MASK		BIT(0)
+#define RK3576_SPDIF_SEL_MASK		BIT(1)
+#define HDCP0_P1_GPIO_IN		BIT(2)
+#define RK3576_SCLIN_MASK		BIT(4)
+#define RK3576_SDAIN_MASK		BIT(5)
+#define RK3576_HDMI_GRANT_SEL		BIT(6)
+
 #define RK3588_GRF_SOC_CON2		0x0308
 #define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
 #define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
@@ -161,6 +196,37 @@ static const struct dw_hdmi_qp_phy_ops rk3588_hdmi_phy_ops = {
 	.setup_hpd	= dw_hdmi_qp_rk3588_setup_hpd,
 };
 
+static enum drm_connector_status
+dw_hdmi_qp_rk3576_read_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+	u32 val;
+
+	regmap_read(hdmi->regmap, RK3576_IOC_HDMI_HPD_STATUS, &val);
+
+	return val & RK3576_HDMI_LEVEL_INT ?
+		connector_status_connected : connector_status_disconnected;
+}
+
+static void dw_hdmi_qp_rk3576_setup_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+	u32 val;
+
+	val = HIWORD_UPDATE(RK3576_HDMI_HPD_INT_CLR,
+	      RK3576_HDMI_HPD_INT_CLR | RK3576_HDMI_HPD_INT_MSK);
+
+	regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
+	regmap_write(hdmi->regmap, 0xa404, 0xffff0102);
+}
+
+static const struct dw_hdmi_qp_phy_ops rk3576_hdmi_phy_ops = {
+	.init		= dw_hdmi_qp_rk3588_phy_init,
+	.disable	= dw_hdmi_qp_rk3588_phy_disable,
+	.read_hpd	= dw_hdmi_qp_rk3576_read_hpd,
+	.setup_hpd	= dw_hdmi_qp_rk3576_setup_hpd,
+};
+
 static void dw_hdmi_qp_rk3588_hpd_work(struct work_struct *work)
 {
 	struct rockchip_hdmi_qp *hdmi = container_of(work,
@@ -181,13 +247,26 @@ static irqreturn_t dw_hdmi_qp_rk3588_hardirq(int irq, void *dev_id)
 	struct rockchip_hdmi_qp *hdmi = dev_id;
 	u32 intr_stat, val;
 
-	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+	if (of_device_is_compatible(hdmi->dev->of_node, "rockchip,rk3576-dw-hdmi-qp")) {
+		regmap_read(hdmi->regmap, RK3576_IOC_HDMI_HPD_STATUS, &intr_stat);
 
-	if (intr_stat) {
-		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK,
-				    RK3588_HDMI0_HPD_INT_MSK);
-		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
-		return IRQ_WAKE_THREAD;
+		if (intr_stat) {
+			val = HIWORD_UPDATE(RK3576_HDMI_HPD_INT_MSK,
+					    RK3576_HDMI_HPD_INT_MSK);
+
+			regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
+			return IRQ_WAKE_THREAD;
+		}
+	} else {
+
+		regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+
+		if (intr_stat) {
+			val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK,
+					    RK3588_HDMI0_HPD_INT_MSK);
+			regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+			return IRQ_WAKE_THREAD;
+		}
 	}
 
 	return IRQ_NONE;
@@ -199,27 +278,48 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
 	u32 intr_stat, val;
 	int debounce_ms;
 
-	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
-	if (!intr_stat)
-		return IRQ_NONE;
+	if (of_device_is_compatible(hdmi->dev->of_node, "rockchip,rk3576-dw-hdmi-qp")) {
+		regmap_read(hdmi->regmap, RK3576_IOC_HDMI_HPD_STATUS, &intr_stat);
+
+		val = HIWORD_UPDATE(RK3576_HDMI_HPD_INT_CLR,
+				    RK3576_HDMI_HPD_INT_CLR);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
-			    RK3588_HDMI0_HPD_INT_CLR);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+		regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
 
-	debounce_ms = intr_stat & RK3588_HDMI0_LEVEL_INT ? 150 : 20;
-	mod_delayed_work(system_wq, &hdmi->hpd_work,
-			 msecs_to_jiffies(debounce_ms));
+		debounce_ms = intr_stat & RK3576_HDMI_LEVEL_INT ? 150 : 20;
+		mod_delayed_work(system_wq, &hdmi->hpd_work,
+					 msecs_to_jiffies(debounce_ms));
 
-	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+		val = HIWORD_UPDATE(0, RK3576_HDMI_HPD_INT_MSK);
+
+		regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
+	} else {
+		regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+		if (!intr_stat)
+			return IRQ_NONE;
+
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				    RK3588_HDMI0_HPD_INT_CLR);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+		debounce_ms = intr_stat & RK3588_HDMI0_LEVEL_INT ? 150 : 20;
+		mod_delayed_work(system_wq, &hdmi->hpd_work,
+				 msecs_to_jiffies(debounce_ms));
+
+		val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+	}
 
 	return IRQ_HANDLED;
 }
 
 static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
-	  .data = &rk3588_hdmi_phy_ops },
+	  .data = &rk3588_hdmi_phy_ops
+	}, {
+	   .compatible = "rockchip,rk3576-dw-hdmi-qp",
+	   .data = &rk3576_hdmi_phy_ops
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_hdmi_qp_rockchip_dt_ids);
@@ -308,22 +408,34 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
-	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
-	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
-	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
-	regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON3, val);
+	if (of_device_is_compatible(dev->of_node, "rockchip,rk3576-dw-hdmi-qp")) {
+		val = HIWORD_UPDATE(RK3576_SCLIN_MASK, RK3576_SCLIN_MASK) |
+			HIWORD_UPDATE(RK3576_SDAIN_MASK, RK3576_SDAIN_MASK) |
+			HIWORD_UPDATE(RK3576_HDMI_GRANT_SEL, RK3576_HDMI_GRANT_SEL) |
+			HIWORD_UPDATE(RK3576_I2S_SEL_MASK, RK3576_I2S_SEL_MASK);
 
-	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
-			    RK3588_SET_HPD_PATH_MASK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+		regmap_write(hdmi->vo1_regmap, RK3576_VO0_GRF_SOC_CON14, val);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-			    RK3588_HDMI0_GRANT_SEL);
-	regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON9, val);
+		val = HIWORD_UPDATE(0, RK3576_HDMI_HPD_INT_MSK);
+		regmap_write(hdmi->regmap, RK3576_IOC_MISC_CON0, val);
+	} else {
+		val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+		      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+		      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+		      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON3, val);
+
+		val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+				    RK3588_SET_HPD_PATH_MASK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				    RK3588_HDMI0_GRANT_SEL);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON9, val);
+
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+	}
 
 	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_qp_rk3588_hpd_work);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
