Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EABC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 10:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=he4XrdVXecK6gFOxRuSdCnubqy45/RRIH3Ci1Ca+uA4=; b=HtHQmzPKuRjU3l
	KI7Bd9Xj5dztDUy3RLoE4ETdI19+U/eiMBFejpopLc/xI4JEDztVK6w5IohqUxFBSg47cADwC2b9E
	RRGYdFFhO4xBolR+1G3ch6VlTR4HI5OkACiD+4MU1eWBExufGvj/OAgJ1tsWpd+RUxHdF2CHQ1WqZ
	zhcp70vzzjIsrETDWJw6rZmUnajd7N73rTLIDP6HstNSoaLNn3dX12ux9ypQUN95kB/Xak9MQE31w
	t6T0U61yEBWjWLLWA1AYAf31LnHVfU+cjY/QLDm3N2pFA4CZtFcCgaiZShMajQ22/FOKkYjTu5HG/
	BDVOs3r9u/XUf33VOLsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5mF6-000Du4-G4; Mon, 27 Jun 2022 10:45:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5mEu-000Dmo-I7; Mon, 27 Jun 2022 10:45:10 +0000
Received: from pyrite.rasen.tech (softbank036240122163.bbtec.net [36.240.122.163])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 41A571C82;
	Mon, 27 Jun 2022 12:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656326697;
	bh=JUTe1Y6WoD8DgWJv3i4rjflynR1VghSx9YpSwPME9r8=;
	h=From:To:Cc:Subject:Date:From;
	b=aUViQXEwZwVEZbLhaQLkB6+Gk7U3NKtkEyLPtE8aNDFqZGMZAGPK7j1YmZgH3e6an
	 F+jt0k8CQl6ARS3mG4p5DX9BR8LNlqbsDtSIZRrQRPoCCjiyf+VzfpCJzuvow7ezyN
	 gQchYdn8/XP7F8DFhq5Fd+SXduF4+YQ2pSMLgtpo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH] media: rkisp1: Support devices without self path
Date: Mon, 27 Jun 2022 19:44:29 +0900
Message-Id: <20220627104429.1454717-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_034508_790177_2C1F38BB 
X-CRM114-Status: GOOD (  18.44  )
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

---
This patch depends on "media: rkisp1: Cleanups and add support for
i.MX8MP" [1], which in turn depends on v4 of "media: rkisp1: Misc bug fixes
and cleanups" [2].

[1] https://lore.kernel.org/linux-media/20220625070034.6odv6cyvqqigb2sa@guri/T/
[2] https://lore.kernel.org/linux-media/Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com/T/
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c   | 11 ++++++++---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h    |  1 +
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c   | 10 +++++++---
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c   |  7 +++++--
 4 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 234b1f8488cb..9387996f64a4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -711,6 +711,8 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	unsigned int i;
 	u32 status;
+	bool self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
+	unsigned int dev_count = ARRAY_SIZE(rkisp1->capture_devs) - (self_path ? 0 : 1);
 
 	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
 	if (!status)
@@ -718,7 +720,7 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, status);
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
+	for (i = 0; i < dev_count; ++i) {
 		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
 
 		if (!(status & RKISP1_CIF_MI_FRAME(cap)))
@@ -875,6 +877,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 {
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
+	bool has_self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
 
 	cap->ops->set_data_path(cap);
 	cap->ops->config(cap);
@@ -892,7 +895,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	 * This's also required because the second FE maybe corrupt
 	 * especially when run at 120fps.
 	 */
-	if (!other->is_streaming) {
+	if (has_self_path && !other->is_streaming) {
 		/* force cfg update */
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT,
 			     RKISP1_CIF_MI_INIT_SOFT_UPD);
@@ -1447,8 +1450,10 @@ int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
 {
 	unsigned int i;
 	int ret;
+	bool self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
+	unsigned int dev_count = ARRAY_SIZE(rkisp1->capture_devs) - (self_path ? 0 : 1);
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
 
 		rkisp1_capture_init(rkisp1, i);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 0b834579d08c..4a9e53aa3229 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -114,6 +114,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
 	RKISP1_FEATURE_DMA_34BIT = BIT(4),
+	RKISP1_FEATURE_SELF_PATH = BIT(5),
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 4c77aa2bc50a..721075849a25 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -328,6 +328,8 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 {
 	unsigned int i;
 	int ret;
+	bool self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
+	unsigned int dev_count = self_path ? 2 : 1;
 
 	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
 		/* Link the CSI receiver to the ISP. */
@@ -341,7 +343,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	}
 
 	/* create ISP->RSZ->CAP links */
-	for (i = 0; i < 2; i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct media_entity *resizer =
 			&rkisp1->resizer_devs[i].sd.entity;
 		struct media_entity *capture =
@@ -466,7 +468,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_SELF_PATH,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -486,7 +489,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_SELF_PATH,
 };
 
 static const char * const imx8mp_isp_clks[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 29a31b18a082..fe699b49757c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -673,6 +673,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	struct rkisp1_device *rkisp1 = rsz->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[rsz->id ^ 1];
 	enum rkisp1_shadow_regs_when when = RKISP1_SHADOW_REGS_SYNC;
+	bool has_self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
 
 	if (!enable) {
 		if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
@@ -681,7 +682,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 		return 0;
 	}
 
-	if (other->is_streaming)
+	if (has_self_path && other->is_streaming)
 		when = RKISP1_SHADOW_REGS_ASYNC;
 
 	mutex_lock(&rsz->ops_lock);
@@ -771,8 +772,10 @@ int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
 {
 	unsigned int i;
 	int ret;
+	bool self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
+	unsigned int dev_count = ARRAY_SIZE(rkisp1->resizer_devs) - (self_path ? 0 : 1);
 
-	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
+	for (i = 0; i < dev_count; i++) {
 		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
 
 		rsz->rkisp1 = rkisp1;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
