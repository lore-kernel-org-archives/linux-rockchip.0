Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4D3CCF58F1
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 08:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvtRIxjRTL9lVaa1U9I2kzzH7UaLjuMnMwG7t73kPBo=; b=VsHWVQqiThLn1W
	mdrSCyjGkbDn1vRX+Ac8GWnJfpVUWjAFjXSt127RzrokeDQ43p6MEkHEXwVOQp4tlKOB2wlA3D63M
	hy6dgjODq4UiNbBL0ZplZVwUmrtsipssnK4h96pdwrP91QWXPuFf4Sw8Y7ZsV/hQXabK0DfI51nkU
	x1WbNSblItz2Zt1CT6VODBizf7a/I4G/dKokZCilKVozrSGf6aKwmp3Tb5fpjPb93YUYS7c+0/E8r
	xxzEGw/pNi5r3dEYGarE9n1PiomNn/m6Y3X647tl562xeDaLj2tRDswR+A/gvRo3QSXE6vg/9Lteh
	dPuDAoaY5kdyvKhm323g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZCf-0000000Bo1w-2gaZ;
	Fri, 20 Sep 2024 08:41:25 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYuM-0000000BkBh-2E6y;
	Fri, 20 Sep 2024 08:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=+L2hu
	lmOrj8kWPHYwkIDVi7uLloU6A250/+u13q2u8M=; b=W0mQwA7nUnaRDzLOKaL3R
	6RA5vNAJEdtqdlcUVe93t3KRGQ8DYpszvrO7491xSbG12KDboSmiBplIzlJPsmQV
	hFvM8c4JUdn4Uw1ehJdvGAfvMp/h7B59Uk9KXf+5cfyLh0t8zjrk2f9W377Jw/gm
	ZZULwiDmmF9EiiBm9Ga0SY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp1 (Coremail) with SMTP id sCgvCgAn7jywMO1mJzMoCQ--.45724S2;
	Fri, 20 Sep 2024 16:22:12 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 10/15] drm/rockchip: vop2: Introduce vop hardware version
Date: Fri, 20 Sep 2024 16:22:06 +0800
Message-ID: <20240920082207.6863-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240920081626.6433-1-andyshrk@163.com>
References: <20240920081626.6433-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: sCgvCgAn7jywMO1mJzMoCQ--.45724S2
X-Coremail-Antispam: 1Uf129KBjvJXoW3Xry3tF47Aw4xCr4kKryUZFb_yoW7ArW7pF
	W7AFWYgrWxGa1jgws7Xay3ZF4aywn2yayxGanrGw13t3sxKr9rC3Z0qF1ayFs0qFnFkr4j
	krn7A34UWF47tr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jFT5dUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxRgXmbtL08sBAAAsa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_012230_920859_52E1909F 
X-CRM114-Status: GOOD (  18.69  )
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

There is a version number hardcoded in the VOP VERSION_INFO
register, and the version number increments sequentially based
on the production order of the SOC.

So using this version number to distinguish different VOP features
will simplify the code.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check

Changes in v2:
- Introduce vop hardware version

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 17 ++++++++++++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 11 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c |  3 +++
 3 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 6a7982ad3550..b4964c70149f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -354,7 +354,7 @@ static bool vop2_output_uv_swap(u32 bus_format, u32 output_mode)
 
 static bool vop2_output_rg_swap(struct vop2 *vop2, u32 bus_format)
 {
-	if (vop2->data->soc_id == 3588) {
+	if (vop2->version == VOP_VERSION_RK3588) {
 		if (bus_format == MEDIA_BUS_FMT_YUV8_1X24 ||
 		    bus_format == MEDIA_BUS_FMT_YUV10_1X30)
 			return true;
@@ -798,6 +798,7 @@ static void rk3588_vop2_power_domain_enable_all(struct vop2 *vop2)
 static void vop2_enable(struct vop2 *vop2)
 {
 	int ret;
+	u32 version;
 
 	ret = pm_runtime_resume_and_get(vop2->dev);
 	if (ret < 0) {
@@ -817,10 +818,19 @@ static void vop2_enable(struct vop2 *vop2)
 		return;
 	}
 
+	version = vop2_readl(vop2, RK3568_VERSION_INFO);
+	if (version != vop2->version) {
+		drm_err(vop2->drm, "Hardware version(0x%08x) mismatch\n", version);
+		return;
+	}
+	/*
+	 * rk3566 share the same vop version with rk3568, so
+	 * wen need to use soc_id for identification here.
+	 */
 	if (vop2->data->soc_id == 3566)
 		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
 
-	if (vop2->data->soc_id == 3588)
+	if (vop2->version == VOP_VERSION_RK3588)
 		rk3588_vop2_power_domain_enable_all(vop2);
 
 	vop2_writel(vop2, RK3568_REG_CFG_DONE, RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
@@ -1231,7 +1241,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		 * this bit is gating disable, we should write 1 to
 		 * disable gating when enable afbc.
 		 */
-		if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
+		if (vop2->version == VOP_VERSION_RK3568)
 			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
 		else
 			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 1);
@@ -2320,6 +2330,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	vop2->dev = dev;
 	vop2->data = vop2_data;
 	vop2->ops = vop2_data->ops;
+	vop2->version = vop2_data->version;
 	vop2->drm = drm;
 
 	dev_set_drvdata(dev, vop2);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 9b269f6e576e..871d9bcd1d80 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -13,6 +13,15 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_vop.h"
 
+#define VOP2_VERSION(major, minor, build)	((major) << 24 | (minor) << 16 | (build))
+
+/* The new SOC VOP version is bigger than the old */
+#define VOP_VERSION_RK3568	VOP2_VERSION(0x40, 0x15, 0x8023)
+#define VOP_VERSION_RK3588	VOP2_VERSION(0x40, 0x17, 0x6786)
+#define VOP_VERSION_RK3528	VOP2_VERSION(0x50, 0x17, 0x1263)
+#define VOP_VERSION_RK3562	VOP2_VERSION(0x50, 0x17, 0x4350)
+#define VOP_VERSION_RK3576	VOP2_VERSION(0x50, 0x19, 0x9765)
+
 #define VOP2_VP_FEATURE_OUTPUT_10BIT        BIT(0)
 
 #define VOP2_FEATURE_HAS_SYS_GRF	BIT(0)
@@ -235,6 +244,7 @@ struct vop2_ops {
 struct vop2_data {
 	u8 nr_vps;
 	u64 feature;
+	u32 version;
 	const struct vop2_ops *ops;
 	const struct vop2_win_data *win;
 	const struct vop2_video_port_data *vp;
@@ -252,6 +262,7 @@ struct vop2_data {
 };
 
 struct vop2 {
+	u32 version;
 	struct device *dev;
 	struct drm_device *drm;
 	struct vop2_video_port vps[ROCKCHIP_MAX_CRTC];
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 8473dc9c232c..efd704464fab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -1593,6 +1593,7 @@ static const struct vop2_ops rk3588_vop_ops = {
 };
 
 static const struct vop2_data rk3566_vop = {
+	.version = VOP_VERSION_RK3568,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
 	.max_input = { 4096, 2304 },
@@ -1611,6 +1612,7 @@ static const struct vop2_data rk3566_vop = {
 };
 
 static const struct vop2_data rk3568_vop = {
+	.version = VOP_VERSION_RK3568,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
 	.max_input = { 4096, 2304 },
@@ -1629,6 +1631,7 @@ static const struct vop2_data rk3568_vop = {
 };
 
 static const struct vop2_data rk3588_vop = {
+	.version = VOP_VERSION_RK3588,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF | VOP2_FEATURE_HAS_VO1_GRF |
 		   VOP2_FEATURE_HAS_VOP_GRF | VOP2_FEATURE_HAS_SYS_PMU,
 	.nr_vps = 4,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
