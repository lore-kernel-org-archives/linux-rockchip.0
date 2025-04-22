Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CBEBC369CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cr8rN73k+xdZ3fHjLRGU+0eoqi/KpAx4fuw8bFJrXa4=; b=ieJ1sTbQa0SyZ0
	I2JFMOaB0/+FIU5WigPj5XDRO6ztBA8yKnB0/KLgopWSRpqB8VPwLFMpciStSo9FpGM24BGZdSLhF
	n9pymhqO4Fc4MigIi9rMofdWaV0UoEozmfvdBcAWhpheW8lyTOAQwqmmMAmIR6KgyWo4DmHzrv7be
	pGX3+lA+C4qV+ltwr/ark7r3/H8u8t2pHNcxYDNA5smJbrYxsodKp2tdUqkzDoilFThW8+WgOtUxR
	2ockk6S+VBoadky0Fuc3yAn6bTQEENz7vbllUp6z/tol6ZUpm86TD+CzAhaPmldBsQfooz4cmmWs5
	vh6bbFEw8Qf4PGx7jMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78O7-00000006B0J-1lPz;
	Tue, 22 Apr 2025 07:49:51 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77h9-000000063yC-2GiI;
	Tue, 22 Apr 2025 07:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=CBuVD
	5mLxW1qWVh3yysFaNPsNmOWSZ6Qe90zC/Vn6b4=; b=mcrSfFPK1lcjdYAV1LUz4
	gX95wW5vObTfSWe6/aVPY0cwa5ug1UJ032FOp+rshXXe43xrG0zBQ0wOTCreYIm7
	jce1UZnM9vCIUTCe35tNhMmMI+2YgSlPpIadMWt4xEkDoJqASx22/UrKZ6h5KIAo
	UUGYVhGOCRB5aD9gSlVeoU=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wCHACaZPwdowMxzBg--.7474S6;
	Tue, 22 Apr 2025 15:05:06 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	knaerzche@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 4/7] drm/rockchip: inno-hdmi: Fix video timing HSYNC/VSYNC polarity setting for rk3036
Date: Tue, 22 Apr 2025 15:04:43 +0800
Message-ID: <20250422070455.432666-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250422070455.432666-1-andyshrk@163.com>
References: <20250422070455.432666-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCHACaZPwdowMxzBg--.7474S6
X-Coremail-Antispam: 1Uf129KBjvJXoWxZr17Gry3Ar18CFW5Xw4xZwb_yoWrJF4xpa
	yUCFyUJF43Xa13Jw4xAa97Cr1aga97ta12yry7W3Wa9w12gr9YyF1kZF43uF1rAF93Was7
	trWkGa4UG3W7Zw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jsNVkUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gU3XmgHOe-cKwABsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_000527_907350_C2CDA4F6 
X-CRM114-Status: GOOD (  16.07  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The HSYNC/VSYNC polarity of rk3036 HDMI are controlled by GRF.
Without the polarity configuration in GRF, it can be observed
from the HDMI protocol analyzer that the H/V front/back timing
output by RK3036 HDMI are currently not in line with the specifications.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

(no changes since v2)

Changes in v2:
- First included in this series

 drivers/gpu/drm/rockchip/inno_hdmi.c | 36 +++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e891d42dd08a4..db4b4038e51d5 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -10,10 +10,12 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
+#include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
@@ -29,8 +31,19 @@
 
 #include "inno_hdmi.h"
 
+#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
+
 #define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
 
+#define RK3036_GRF_SOC_CON2	0x148
+#define RK3036_HDMI_PHSYNC	BIT(4)
+#define RK3036_HDMI_PVSYNC	BIT(5)
+
+enum inno_hdmi_dev_type {
+	RK3036_HDMI,
+	RK3128_HDMI,
+};
+
 struct inno_hdmi_phy_config {
 	unsigned long pixelclock;
 	u8 pre_emphasis;
@@ -38,6 +51,7 @@ struct inno_hdmi_phy_config {
 };
 
 struct inno_hdmi_variant {
+	enum inno_hdmi_dev_type dev_type;
 	struct inno_hdmi_phy_config *phy_configs;
 	struct inno_hdmi_phy_config *default_phy_config;
 };
@@ -58,6 +72,7 @@ struct inno_hdmi {
 	struct clk *pclk;
 	struct clk *refclk;
 	void __iomem *regs;
+	struct regmap *grf;
 
 	struct drm_connector	connector;
 	struct rockchip_encoder	encoder;
@@ -374,7 +389,15 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 					 struct drm_display_mode *mode)
 {
-	int value;
+	int value, psync;
+
+	if (hdmi->variant->dev_type == RK3036_HDMI) {
+		psync = mode->flags & DRM_MODE_FLAG_PHSYNC ? RK3036_HDMI_PHSYNC : 0;
+		value = HIWORD_UPDATE(psync, RK3036_HDMI_PHSYNC);
+		psync = mode->flags & DRM_MODE_FLAG_PVSYNC ? RK3036_HDMI_PVSYNC : 0;
+		value |= HIWORD_UPDATE(psync, RK3036_HDMI_PVSYNC);
+		regmap_write(hdmi->grf, RK3036_GRF_SOC_CON2, value);
+	}
 
 	/* Set detail external video timing polarity and interlace mode */
 	value = v_EXTERANL_VIDEO(1);
@@ -904,6 +927,15 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		goto err_disable_pclk;
 	}
 
+	if (hdmi->variant->dev_type == RK3036_HDMI) {
+		hdmi->grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
+		if (IS_ERR(hdmi->grf)) {
+			ret = dev_err_probe(dev, PTR_ERR(hdmi->grf),
+					    "Unable to get rockchip,grf\n");
+			goto err_disable_clk;
+		}
+	}
+
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
 		ret = irq;
@@ -988,11 +1020,13 @@ static void inno_hdmi_remove(struct platform_device *pdev)
 }
 
 static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
+	.dev_type = RK3036_HDMI,
 	.phy_configs = rk3036_hdmi_phy_configs,
 	.default_phy_config = &rk3036_hdmi_phy_configs[1],
 };
 
 static const struct inno_hdmi_variant rk3128_inno_hdmi_variant = {
+	.dev_type = RK3128_HDMI,
 	.phy_configs = rk3128_hdmi_phy_configs,
 	.default_phy_config = &rk3128_hdmi_phy_configs[1],
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
