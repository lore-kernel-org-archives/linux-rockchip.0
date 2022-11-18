Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82377C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCqr3pcxyjw5QJSre2zDEJZecl6FnF1SECpFk6sWBI0=; b=BGc1G4GJxIX/du
	KH15XWBJIUjYAHPYmf372+SXsts46xCX+NZhacyW3OwixZ6/79xdh50fyptbSWLKN5IYmgcp8Ujw3
	ErPL5aUCRBpOalzNV/65oY45qEPLxdJGvlutliSYrTwDnYTEjsaPeMbLrWPT6kwnWXFN6efi6l14o
	WRnvWj5Ln4BV439gW1QLdgluFaHNWSv+MKlax7BmY3KZZNl+nEv9K5za6k49vUdzahHUQRs+9mLAg
	bBMBaO/srXf0AZb+8IEmk3J0qbVeiB+EX7cWOmFwnsWJzcxu75qGkikAuyx2872Tp4rt6jRntnpYv
	sBPq3+22pH0YtEK6G5Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxwU-003C3X-0K; Fri, 18 Nov 2022 09:45:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxrM-00397k-Cq; Fri, 18 Nov 2022 09:40:36 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7F0F0CCA;
	Fri, 18 Nov 2022 10:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764431;
	bh=rPo3Gs9GnXlqjb4A0xvmR8+wouEmRjlcCZF2j1gbOsU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YEReXAA3sJaQ4DN8Ka4xlIh1Q/ZskhDsEWh9KfpGyWLVi+rXvYVaEAU1yx7/nccAM
	 pGYrpd1iw3+9s55J01o+yIHQPQtXebHp2HOKSgSpN2/rNyFFnpU34ml4DzcvjdIRnH
	 9Yl39J616EWQwRnL32zqSUzUGKO9EdqwhEYwVagw=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 12/14] media: rkisp1: Support devices without self path
Date: Fri, 18 Nov 2022 18:39:29 +0900
Message-Id: <20221118093931.1284465-13-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_014032_622651_93A8E074 
X-CRM114-Status: GOOD (  23.14  )
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

Some hardware supported by the rkisp1 driver, such as the ISP in the
i.MX8MP, don't have a self path. Add a feature flag for this, and
massage the rest of the driver to support the lack of a self path.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Simplify rkisp1_path_count()
- Use the rkisp1_has_feature() macro
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c      |  9 ++++++---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h | 14 ++++++++++++++
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    |  9 ++++++---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c      |  6 ++++--
 4 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 55e863b762e6..94e173706eb4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -708,6 +708,7 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 {
 	struct device *dev = ctx;
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
+	unsigned int dev_count = rkisp1_path_count(rkisp1);
 	unsigned int i;
 	u32 status;
 
@@ -717,7 +718,7 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, status);
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
+	for (i = 0; i < dev_count; ++i) {
 		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
 
 		if (!(status & RKISP1_CIF_MI_FRAME(cap)))
@@ -874,6 +875,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 {
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
+	bool has_self_path = rkisp1_has_feature(rkisp1, SELF_PATH);
 
 	cap->ops->set_data_path(cap);
 	cap->ops->config(cap);
@@ -891,7 +893,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	 * This's also required because the second FE maybe corrupt
 	 * especially when run at 120fps.
 	 */
-	if (!other->is_streaming) {
+	if (!has_self_path || !other->is_streaming) {
 		/* force cfg update */
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT,
 			     RKISP1_CIF_MI_INIT_SOFT_UPD);
@@ -1445,10 +1447,11 @@ rkisp1_capture_init(struct rkisp1_device *rkisp1, enum rkisp1_stream_id id)
 
 int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
 {
+	unsigned int dev_count = rkisp1_path_count(rkisp1);
 	unsigned int i;
 	int ret;
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
 
 		rkisp1_capture_init(rkisp1, i);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index fff5f5264386..8b6c0977ee91 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -118,6 +118,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
 	RKISP1_FEATURE_DMA_34BIT = BIT(4),
+	RKISP1_FEATURE_SELF_PATH = BIT(5),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
@@ -548,6 +549,19 @@ int rkisp1_cap_enum_mbus_codes(struct rkisp1_capture *cap,
  */
 const struct rkisp1_mbus_info *rkisp1_mbus_info_get_by_index(unsigned int index);
 
+/*
+ * rkisp1_path_count - Return the number of paths supported by the device
+ *
+ * Some devices only have a main path, while other device have both a main path
+ * and a self path. This function returns the number of paths that this device
+ * has, based on the feature flags. It should be used insted of checking
+ * ARRAY_SIZE of capture_devs/resizer_devs.
+ */
+static inline unsigned int rkisp1_path_count(struct rkisp1_device *rkisp1)
+{
+	return rkisp1_has_feature(rkisp1, SELF_PATH) ? 2 : 1;
+}
+
 /*
  * rkisp1_sd_adjust_crop_rect - adjust a rectangle to fit into another rectangle.
  *
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 2b13962c5c32..8f3001bf7562 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -336,6 +336,7 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
 
 static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 {
+	unsigned int dev_count = rkisp1_path_count(rkisp1);
 	unsigned int i;
 	int ret;
 
@@ -351,7 +352,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	}
 
 	/* create ISP->RSZ->CAP links */
-	for (i = 0; i < 2; i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct media_entity *resizer =
 			&rkisp1->resizer_devs[i].sd.entity;
 		struct media_entity *capture =
@@ -476,7 +477,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_SELF_PATH,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -496,7 +498,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_SELF_PATH,
 };
 
 static const char * const imx8mp_isp_clks[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 7ff7b608fc3f..891a622124e2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -712,6 +712,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	struct rkisp1_device *rkisp1 = rsz->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[rsz->id ^ 1];
 	enum rkisp1_shadow_regs_when when = RKISP1_SHADOW_REGS_SYNC;
+	bool has_self_path = rkisp1_has_feature(rkisp1, SELF_PATH);
 
 	if (!enable) {
 		if (rkisp1_has_feature(rkisp1, DUAL_CROP))
@@ -720,7 +721,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 		return 0;
 	}
 
-	if (other->is_streaming)
+	if (has_self_path && other->is_streaming)
 		when = RKISP1_SHADOW_REGS_ASYNC;
 
 	mutex_lock(&rsz->ops_lock);
@@ -808,10 +809,11 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 
 int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
 {
+	unsigned int dev_count = rkisp1_path_count(rkisp1);
 	unsigned int i;
 	int ret;
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
 
 		rsz->rkisp1 = rkisp1;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
