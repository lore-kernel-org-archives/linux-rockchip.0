Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31318C433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 14:44:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4BD42310A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 14:44:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4BD42310A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kH5Vf9jNHuKzXF8L3Fq+Uqy25zxx9guU8+RB/cESHcY=; b=qyN6HXpv7d5Gx9jCOZGlyqi9OP
	4QQeDxaE21zXsyp0nf8p1ZjFMiSO9CHezfIWXbCgE1RK81Z26aEqors8MaGdSGFlNTugaD2Ns7bzy
	16wzbqOsEiBDBjy6nd1fCTofvZBenbade4nTBaf/dR6TJXqYINzygtOOkgMK4Fnvc+fegvPbOgAXO
	2ADj9atDTUBCjM1jr+CyDdFypipqjtTs2IbWi9ExyKWY7Mkbf+AUdh10P7N98h1jfzBFawJmOuVFo
	rRy9wRQzs26yfFU6qcyOspLfwe779v9b2i06XBIx0WuA7yIWs2r+bpR2+MMjXrWVuV/X8jTN5w0f+
	fQJtxAeg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2bCF-000108-N3; Thu, 21 Jan 2021 14:44:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2bC8-0000wu-SW
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 14:44:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 568051F45EBB
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, heiko@sntech.de
Subject: [PATCH v8 5/6] media: rockchip: rkisp1: carry ip version information
Date: Thu, 21 Jan 2021 15:44:06 +0100
Message-Id: <20210121144407.9045-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
References: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_094421_133287_B4128AB0 
X-CRM114-Status: GOOD (  19.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, dafna3@gmail.com,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The IP block evolved from its rk3288/rk3399 base and the vendor
designates them with a numerical version. rk3399 for example
is designated V10 probably meaning V1.0.

There doesn't seem to be an actual version register we could read that
information from, so allow the match_data to carry that information
for future differentiation.

Also carry that information in the hw_revision field of the media-
controller API, so that userspace also has access to that.

The added versions are:
- V10: at least rk3288 + rk3399
- V11: seemingly unused as of now, but probably appeared in some soc
- V12: at least rk3326 + px30
- V13: at least rk1808

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
[fix checkpatch warning don't use multiple blank lines]
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 Documentation/admin-guide/media/rkisp1.rst    | 16 ++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 21 +++++++++++--------
 include/uapi/linux/rkisp1-config.h            | 15 +++++++++++++
 3 files changed, 43 insertions(+), 9 deletions(-)

diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
index 2267e4fb475e..ccf418713623 100644
--- a/Documentation/admin-guide/media/rkisp1.rst
+++ b/Documentation/admin-guide/media/rkisp1.rst
@@ -13,6 +13,22 @@ This file documents the driver for the Rockchip ISP1 that is part of RK3288
 and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
 and uses the Media-Controller API.
 
+Revisions
+=========
+
+There exist multiple smaller revisions to this ISP that got introduced in
+later SoCs. Revisions can be found in the enum :c:type:`rkisp1_cif_isp_version`
+in the UAPI and the revision of the ISP inside the running SoC can be read
+in the field hw_revision of struct media_device_info as returned by
+ioctl MEDIA_IOC_DEVICE_INFO.
+
+Versions in use are:
+
+- RKISP1_V10: used at least in rk3288 and rk3399
+- RKISP1_V11: declared in the original vendor code, but not used
+- RKISP1_V12: used at least in rk3326 and px30
+- RKISP1_V13: used at least in rk1808
+
 Topology
 ========
 .. _rkisp1_topology_graph:
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 68da1eed753d..f7e9fd305548 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -104,6 +104,7 @@
 struct rkisp1_match_data {
 	const char * const *clks;
 	unsigned int size;
+	enum rkisp1_cif_isp_version isp_ver;
 };
 
 /* ----------------------------------------------------------------------------
@@ -411,15 +412,16 @@ static const char * const rk3399_isp_clks[] = {
 	"hclk",
 };
 
-static const struct rkisp1_match_data rk3399_isp_clk_data = {
+static const struct rkisp1_match_data rk3399_isp_match_data = {
 	.clks = rk3399_isp_clks,
 	.size = ARRAY_SIZE(rk3399_isp_clks),
+	.isp_ver = RKISP1_V10,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
 	{
 		.compatible = "rockchip,rk3399-cif-isp",
-		.data = &rk3399_isp_clk_data,
+		.data = &rk3399_isp_match_data,
 	},
 	{},
 };
@@ -457,15 +459,15 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	const struct rkisp1_match_data *clk_data;
+	const struct rkisp1_match_data *match_data;
 	struct device *dev = &pdev->dev;
 	struct rkisp1_device *rkisp1;
 	struct v4l2_device *v4l2_dev;
 	unsigned int i;
 	int ret, irq;
 
-	clk_data = of_device_get_match_data(&pdev->dev);
-	if (!clk_data)
+	match_data = of_device_get_match_data(&pdev->dev);
+	if (!match_data)
 		return -ENODEV;
 
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
@@ -494,15 +496,16 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	rkisp1->irq = irq;
 
-	for (i = 0; i < clk_data->size; i++)
-		rkisp1->clks[i].id = clk_data->clks[i];
-	ret = devm_clk_bulk_get(dev, clk_data->size, rkisp1->clks);
+	for (i = 0; i < match_data->size; i++)
+		rkisp1->clks[i].id = match_data->clks[i];
+	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
 	if (ret)
 		return ret;
-	rkisp1->clk_size = clk_data->size;
+	rkisp1->clk_size = match_data->size;
 
 	pm_runtime_enable(&pdev->dev);
 
+	rkisp1->media_dev.hw_revision = match_data->isp_ver;
 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
 		sizeof(rkisp1->media_dev.model));
 	rkisp1->media_dev.dev = &pdev->dev;
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 35aa82d5f6dd..bee4413fe0d3 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -123,6 +123,21 @@
 #define RKISP1_CIF_ISP_STAT_AFM           (1U << 2)
 #define RKISP1_CIF_ISP_STAT_HIST          (1U << 3)
 
+/**
+ * enum rkisp1_cif_isp_version - ISP variants
+ *
+ * @RKISP1_V10: used at least in rk3288 and rk3399
+ * @RKISP1_V11: declared in the original vendor code, but not used
+ * @RKISP1_V12: used at least in rk3326 and px30
+ * @RKISP1_V13: used at least in rk1808
+ */
+enum rkisp1_cif_isp_version {
+	RKISP1_V10 = 10,
+	RKISP1_V11,
+	RKISP1_V12,
+	RKISP1_V13,
+};
+
 enum rkisp1_cif_isp_histogram_mode {
 	RKISP1_CIF_ISP_HISTOGRAM_MODE_DISABLE,
 	RKISP1_CIF_ISP_HISTOGRAM_MODE_RGB_COMBINED,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
