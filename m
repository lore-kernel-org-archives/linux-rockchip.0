Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B2FFEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 21:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9fp1Erjw7DN2eRlnDuHWSS+RGyepOSt8uS3f/J79J4=; b=tMu8Sb4BUHFIl6
	SPOKaceoNxmOsrBxzBlQzjl3GC/IuBxX21KpSM+CZ88cxoLj69W+UmEG2V4a6ZO8org831x+YIGUT
	XxHZLMgSRZhNoC0XVgbmn5oQPjBw5psOegIuQy+a2rou79vxf+Xwv+ls+KQLoSf89X57i/xkjBknm
	XhQt/cqRuLMY0dzbxKrPMvRGD1BBWx5YA8R2MB8ysQkVgIxEUSc94eHZ8tc6wxXVWx50CyjzluJ0e
	3BcTUG9TW6gs8nkRpVKAE0c52KkMfJqy7DBqfDXyx7n8KCCbYP401iA3ZrE39VLuxTVvN8Ndnwk2t
	JdUQ/ytsOIv8aoWYMBIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBiVy-00CLwg-2f;
	Tue, 20 Jun 2023 21:03:50 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBiVu-00CLvM-2F;
	Tue, 20 Jun 2023 21:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687295026; x=1718831026;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Qy2nBFndB7zMhlWJ7jbpgbfuTUNl9LWdB5UOeqaAxkc=;
  b=NcdRNovQBb9skfzr4YeyRO6rtUSrdDk+iiVolmDyMUrS1cpqjmXXNpmP
   LWlycitUFg1QzZ57ZPlNU6rdHdK/JOp6vyQTj9+ZtC+g+NCU4GX8gMBMB
   zwd+DcPqLOl+rUzeAb4W3RDP6Cn0Yutk1EVf+E5I3NVtbxh2dkqK708jB
   23MmwNtjGxjKXcifLAk7G2QGn3WK0uLIT24eA1WZKPCiohJlFTv7a2JIH
   eewgBG3mJ4d7KwKRyC1JOy9bviW5SZ6Y3n2kKJZRMCgyPZnuPPw1zCdZ3
   2r/07d+OTve/Mqw7QdwSiD9mBBAYWacYDcIVrKS6Ww2jSCA3a5ir8aBgt
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363405836"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; 
   d="scan'208";a="363405836"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2023 14:03:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888384781"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; 
   d="scan'208";a="888384781"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2023 14:03:31 -0700
Received: from punajuuri.localdomain (punajuuri.localdomain [192.168.240.130])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id CD3F811F89D;
	Wed, 21 Jun 2023 00:03:27 +0300 (EEST)
Received: from sailus by punajuuri.localdomain with local (Exim 4.96)
	(envelope-from <sakari.ailus@linux.intel.com>)
	id 1qBiVS-002jLy-1Z;
	Wed, 21 Jun 2023 00:03:18 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: linux-media@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Joe Tessler <jrt@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sean Young <sean@mess.org>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 20/28] media: platform: jpeg: always reference OF data
Date: Wed, 21 Jun 2023 00:03:08 +0300
Message-Id: <20230620210308.650986-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_140346_857098_5FDEA564 
X-CRM114-Status: GOOD (  15.58  )
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

From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

The driver can match only via the DT table so the table should be always
used and the of_match_ptr does not have any sense (this also allows ACPI
matching via PRP0001, even though it might not be relevant here).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
[Sakari Ailus: Rebased on media tree master, reword commit message,
	       drop additional #if defined(CONFIG_OF)/#endif's.]
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c   | 6 +-----
 drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c | 4 +---
 drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c | 4 +---
 3 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
index 4768156181c99..40cb3cb87ba17 100644
--- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
@@ -28,7 +28,6 @@
 #include "mtk_jpeg_core.h"
 #include "mtk_jpeg_dec_parse.h"
 
-#if defined(CONFIG_OF)
 static struct mtk_jpeg_fmt mtk_jpeg_enc_formats[] = {
 	{
 		.fourcc		= V4L2_PIX_FMT_JPEG,
@@ -102,7 +101,6 @@ static struct mtk_jpeg_fmt mtk_jpeg_dec_formats[] = {
 		.flags		= MTK_JPEG_FMT_FLAG_CAPTURE,
 	},
 };
-#endif
 
 #define MTK_JPEG_ENC_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_enc_formats)
 #define MTK_JPEG_DEC_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_dec_formats)
@@ -1455,7 +1453,6 @@ static const struct dev_pm_ops mtk_jpeg_pm_ops = {
 	SET_RUNTIME_PM_OPS(mtk_jpeg_pm_suspend, mtk_jpeg_pm_resume, NULL)
 };
 
-#if defined(CONFIG_OF)
 static int mtk_jpegenc_get_hw(struct mtk_jpeg_ctx *ctx)
 {
 	struct mtk_jpegenc_comp_dev *comp_jpeg;
@@ -1951,14 +1948,13 @@ static const struct of_device_id mtk_jpeg_match[] = {
 };
 
 MODULE_DEVICE_TABLE(of, mtk_jpeg_match);
-#endif
 
 static struct platform_driver mtk_jpeg_driver = {
 	.probe = mtk_jpeg_probe,
 	.remove_new = mtk_jpeg_remove,
 	.driver = {
 		.name           = MTK_JPEG_NAME,
-		.of_match_table = of_match_ptr(mtk_jpeg_match),
+		.of_match_table = mtk_jpeg_match,
 		.pm             = &mtk_jpeg_pm_ops,
 	},
 };
diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
index 869068fac5e2f..baa7be58ce691 100644
--- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
+++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
@@ -39,7 +39,6 @@ enum mtk_jpeg_color {
 	MTK_JPEG_COLOR_400		= 0x00110000
 };
 
-#if defined(CONFIG_OF)
 static const struct of_device_id mtk_jpegdec_hw_ids[] = {
 	{
 		.compatible = "mediatek,mt8195-jpgdec-hw",
@@ -47,7 +46,6 @@ static const struct of_device_id mtk_jpegdec_hw_ids[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_jpegdec_hw_ids);
-#endif
 
 static inline int mtk_jpeg_verify_align(u32 val, int align, u32 reg)
 {
@@ -653,7 +651,7 @@ static struct platform_driver mtk_jpegdec_hw_driver = {
 	.probe = mtk_jpegdec_hw_probe,
 	.driver = {
 		.name = "mtk-jpegdec-hw",
-		.of_match_table = of_match_ptr(mtk_jpegdec_hw_ids),
+		.of_match_table = mtk_jpegdec_hw_ids,
 	},
 };
 
diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
index 71e85b4bbf127..244018365b6f1 100644
--- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
+++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
@@ -46,7 +46,6 @@ static const struct mtk_jpeg_enc_qlt mtk_jpeg_enc_quality[] = {
 	{.quality_param = 97, .hardware_value = JPEG_ENC_QUALITY_Q97},
 };
 
-#if defined(CONFIG_OF)
 static const struct of_device_id mtk_jpegenc_drv_ids[] = {
 	{
 		.compatible = "mediatek,mt8195-jpgenc-hw",
@@ -54,7 +53,6 @@ static const struct of_device_id mtk_jpegenc_drv_ids[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_jpegenc_drv_ids);
-#endif
 
 void mtk_jpeg_enc_reset(void __iomem *base)
 {
@@ -377,7 +375,7 @@ static struct platform_driver mtk_jpegenc_hw_driver = {
 	.probe = mtk_jpegenc_hw_probe,
 	.driver = {
 		.name = "mtk-jpegenc-hw",
-		.of_match_table = of_match_ptr(mtk_jpegenc_drv_ids),
+		.of_match_table = mtk_jpegenc_drv_ids,
 	},
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
