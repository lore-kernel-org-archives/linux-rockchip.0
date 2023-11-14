Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA57C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/70SAvJUTnL8lu4Kbhr75W2beEqnq3O2Qm+Ul9OUSw=; b=zpLt04D63wPfVM
	Sxe5o7EVwoAN5tT/5f1TL1zxbJnNUJtEmVmv6GmdnsbG1Wt/w86uo8P8yYbQnkrvKImOPVStNhK7k
	7ifckXHowQ84QU0HwXauuK1CSMfg+jiKwu0doajLa+1tMVXPmrc/yIFXgMCi+We9rdvGpzUqarv8V
	y7XyO8eSXL24Kcs+rg8nMhD0uPLTe0XSKtIan4v/1BEGtUqxIzXSti6ORDI3rZCyUy5wT73WKXU5K
	UHMKg3QLj+fcLErDYPR+0uvgMQYkUntbbdUrafe4SH+hBzI+w/+Dj9r/SI4D3XRM+Upu98MVrOHar
	XGM74+C7hHUjwkx5wtBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rZw-00FfPx-0e;
	Tue, 14 Nov 2023 11:27:36 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rZt-00FfNQ-0S
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=z4f9v
	h+ko/yOM3S1IKGQAP4ukkO44mI0I0nVUzbEqFc=; b=D0eCrGEXMrAlZHZSxWLAy
	jHhTev06BQpU6KXYmNMGdCXRFTYlkBAeDY5pFTY1hPj/vRq+cF735OaeSl8qPtcu
	FjNaVymeHlHz8Amv/akzAwBpttDA2vU4l40ETetR5Fl1bDWrp4tiL/k/ei9p+tTX
	G8dFdmPKoV+5aQEPrFWGuE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-0 (Coremail) with SMTP id _____wDXlCOJWVNlbG5MDA--.55303S2;
	Tue, 14 Nov 2023 19:27:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 01/11] drm/rockchip: move output interface related definition to rockchip_drm_drv.h
Date: Tue, 14 Nov 2023 19:27:04 +0800
Message-Id: <20231114112704.1770880-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDXlCOJWVNlbG5MDA--.55303S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxtFW3Zw17XF4DCr1xZr45trb_yoW3GFyrpa
	1DAryjvrW7CF42qrnrAFs3Ar4fta1qyayxCr97W3WavF1Ikr1DG3sxWws5Xr9xXr1xAFy2
	krsrG34UZFW2gr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSD73UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnA0oXlghlUycewAAsg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032733_526752_7C5D1289 
X-CRM114-Status: GOOD (  11.50  )
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

The output interface related definition can shared between
vop and vop2, move them to rockchip_drm_drv.h can avoid duplicated
definition.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c |  1 -
 drivers/gpu/drm/rockchip/cdn-dp-core.c          |  1 -
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c |  1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c     |  1 -
 drivers/gpu/drm/rockchip/inno_hdmi.c            |  1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c          |  1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h     | 17 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h     | 12 +-----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h    | 16 +---------------
 drivers/gpu/drm/rockchip/rockchip_lvds.c        |  1 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c         |  1 -
 11 files changed, 19 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 84aa811ca1e9..bd08d57486fe 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -30,7 +30,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 #define RK3288_GRF_SOC_CON6		0x25c
 #define RK3288_EDP_LCDC_SEL		BIT(5)
diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 21254e4e107a..a855c45ae7f3 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -24,7 +24,6 @@
 
 #include "cdn-dp-core.h"
 #include "cdn-dp-reg.h"
-#include "rockchip_drm_vop.h"
 
 static inline struct cdn_dp_device *connector_to_dp(struct drm_connector *connector)
 {
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 6396f9324dab..4cc8ed8f4fbd 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -26,7 +26,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 #define DSI_PHY_RSTZ			0xa0
 #define PHY_DISFORCEPLL			0
diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 341550199111..fe33092abbe7 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -18,7 +18,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 #define RK3228_GRF_SOC_CON2		0x0408
 #define RK3228_HDMI_SDAIN_MSK		BIT(14)
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..f6d819803c0e 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -23,7 +23,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 #include "inno_hdmi.h"
 
diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index fa6e592e0276..78136d0c5a65 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -17,7 +17,6 @@
 #include "rk3066_hdmi.h"
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 #define DEFAULT_PLLA_RATE 30000000
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index aeb03a57240f..3d8ab2defa1b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -20,6 +20,23 @@
 #define ROCKCHIP_MAX_CONNECTOR	2
 #define ROCKCHIP_MAX_CRTC	4
 
+/*
+ * display output interface supported by rockchip lcdc
+ */
+#define ROCKCHIP_OUT_MODE_P888		0
+#define ROCKCHIP_OUT_MODE_BT1120	0
+#define ROCKCHIP_OUT_MODE_P666		1
+#define ROCKCHIP_OUT_MODE_P565		2
+#define ROCKCHIP_OUT_MODE_BT656		5
+#define ROCKCHIP_OUT_MODE_S888		8
+#define ROCKCHIP_OUT_MODE_S888_DUMMY	12
+#define ROCKCHIP_OUT_MODE_YUV420	14
+/* for use special outface */
+#define ROCKCHIP_OUT_MODE_AAAA		15
+
+/* output flags */
+#define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)
+
 struct drm_device;
 struct drm_connector;
 struct iommu_domain;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 4b2daefeb8c1..43d9c9191b7a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -277,17 +277,7 @@ struct vop_data {
 /* dst alpha ctrl define */
 #define DST_FACTOR_M0(x)		(((x) & 0x7) << 6)
 
-/*
- * display output interface supported by rockchip lcdc
- */
-#define ROCKCHIP_OUT_MODE_P888	0
-#define ROCKCHIP_OUT_MODE_P666	1
-#define ROCKCHIP_OUT_MODE_P565	2
-/* for use special outface */
-#define ROCKCHIP_OUT_MODE_AAAA	15
-
-/* output flags */
-#define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)
+
 
 enum alpha_mode {
 	ALPHA_STRAIGHT,
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 56fd31e05238..7175f46a2014 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -7,10 +7,9 @@
 #ifndef _ROCKCHIP_DRM_VOP2_H
 #define _ROCKCHIP_DRM_VOP2_H
 
-#include "rockchip_drm_vop.h"
-
 #include <linux/regmap.h>
 #include <drm/drm_modes.h>
+#include "rockchip_drm_vop.h"
 
 #define VOP_FEATURE_OUTPUT_10BIT        BIT(0)
 
@@ -166,19 +165,6 @@ struct vop2_data {
 #define WB_YRGB_FIFO_FULL_INTR		BIT(18)
 #define WB_COMPLETE_INTR		BIT(19)
 
-/*
- * display output interface supported by rockchip lcdc
- */
-#define ROCKCHIP_OUT_MODE_P888		0
-#define ROCKCHIP_OUT_MODE_BT1120	0
-#define ROCKCHIP_OUT_MODE_P666		1
-#define ROCKCHIP_OUT_MODE_P565		2
-#define ROCKCHIP_OUT_MODE_BT656		5
-#define ROCKCHIP_OUT_MODE_S888		8
-#define ROCKCHIP_OUT_MODE_S888_DUMMY	12
-#define ROCKCHIP_OUT_MODE_YUV420	14
-/* for use special outface */
-#define ROCKCHIP_OUT_MODE_AAAA		15
 
 enum vop_csc_format {
 	CSC_BT601L,
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f0f47e9abf5a..59341654ec32 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -27,7 +27,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 #include "rockchip_lvds.h"
 
 #define DISPLAY_OUTPUT_RGB		0
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index c677b71ae516..dbfbde24698e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -19,7 +19,6 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 #include "rockchip_rgb.h"
 
 struct rockchip_rgb {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
