Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63BFC433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 23:41:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35D8822BED
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 23:41:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 35D8822BED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ky8PAKBjdVS1Lisk1HIl5XzTT9uJHYs60ZQQAgoE4TI=; b=XpFxNZK7FUCQXfs/StspVEbr2
	uoIw/BVcFUxWZ+N9IQZn8vYvKXhJzabY5ftbd1fwknV3uKBK9Q43mOj33ejPCQVVCj9qBO2VwctEg
	P7kBMLuHJkJBtM52+VV5TFfyJ0UQp/RVqmLET9S1C/PfT7MqTM2GQRwlUNoYQjVIsxKPRxzcMUQ7c
	moIGOXruj+YzhXOjPXYkU35j/HJcLL9xpUiDJCekQQ73yh+OPapCvXfukI7GetD7a7hwk6oKfbjcC
	24cjsQUmXXjJKsrZXS4NCPCU3ojq1vxXwwWuEI8PdOa4BUzQgD8l7vzBZtlwonhr1eGyRqIxUBzjY
	yAYkfjMDg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kz6o1-0000oc-Qz; Mon, 11 Jan 2021 23:41:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kz6ny-0000l4-DE
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 23:40:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kz6nm-0001p6-D3; Tue, 12 Jan 2021 00:40:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: [PATCH 1/2] media: rockchip: rkisp1: carry ip version information
Date: Tue, 12 Jan 2021 00:40:10 +0100
Message-Id: <20210111234011.3642481-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111234011.3642481-1-heiko@sntech.de>
References: <20210111234011.3642481-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_184058_548381_D2713BD4 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com, heiko@sntech.de,
 christoph.muellner@theobroma-systems.com
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
---
changes since rfc:
- move rkisp1_version enum into uapo
- show version in media-api hw_revision

 .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++--------
 include/uapi/linux/rkisp1-config.h            |  7 ++++++
 3 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 038c303a8aed..bad1bd468f2f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -354,6 +354,7 @@ struct rkisp1_device {
 	void __iomem *base_addr;
 	int irq;
 	struct device *dev;
+	enum rkisp1_cif_isp_version isp_ver;
 	unsigned int clk_size;
 	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
 	struct v4l2_device v4l2_dev;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 68da1eed753d..f594d7cd03d0 100644
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
@@ -494,15 +496,17 @@ static int rkisp1_probe(struct platform_device *pdev)
 
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
+	rkisp1->isp_ver = match_data->isp_ver;
 
 	pm_runtime_enable(&pdev->dev);
 
+	rkisp1->media_dev.hw_revision = rkisp1->isp_ver;
 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
 		sizeof(rkisp1->media_dev.model));
 	rkisp1->media_dev.dev = &pdev->dev;
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 6e449e784260..bad46aadf838 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -124,6 +124,13 @@
 #define RKISP1_CIF_ISP_STAT_AFM           (1U << 2)
 #define RKISP1_CIF_ISP_STAT_HIST          (1U << 3)
 
+enum rkisp1_cif_isp_version {
+	RKISP1_V10 = 0,
+	RKISP1_V11,
+	RKISP1_V12,
+	RKISP1_V13,
+};
+
 enum rkisp1_cif_isp_histogram_mode {
 	RKISP1_CIF_ISP_HISTOGRAM_MODE_DISABLE,
 	RKISP1_CIF_ISP_HISTOGRAM_MODE_RGB_COMBINED,
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
