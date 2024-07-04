Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6DB7C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnCaALuAZQXyshEFOaFL2SM4rpdvwqjHoahQ14nDf1A=; b=Xv7qroAmJPLGoF
	D1riigmedkWP/NAoZNHdnHRWQJJkoxqOHjilAEpvGrYuy9R7v2nRzNoqhpo47RYSOUdvZ6Lxow+kZ
	72wRNpWB6Alt85uhSmtGXisvbIhL4QmyXxTSNZ5rqrk46GX2X7s7NYTxWt2H+/jAgRlmb98Dip7iA
	gABYTBuF9E5nZ+TCdMMnpAJ7klzQUzb0U9wE5Y8j+0anFKnPnixd5tmq13LgqesHr+rRBsz0PiNdb
	B4i3DPiXWYLov+t4b2zlsdagsMNLzbvUixAyB+6IZdMo0jtfJR2LlMrPtPDWNbpNWPcwcEwfjDMz8
	CBDJp+sBdg1wcUmWXvUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOig-0000000Dkak-0RsS;
	Thu, 04 Jul 2024 15:50:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOic-0000000DkYH-2BsJ
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 15:50:00 +0000
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7FB0EAD8;
	Thu,  4 Jul 2024 17:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720108168;
	bh=+oMShFf57mJXRQGZvxDmyQ6JHFcZeA08KxQkWqA5j9o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QPZeR6jhkuPKNoc4A35EYEvOLgUtkBAzIfCvnFjwNh1SRu0T4LpKdAH4tj67S9aHI
	 qYJUxANQOiqDxaImi7Kt8cu9TIFCt4jlog1a+Hx9e5n/7GlnKqLheiwSkg7AGUe/K7
	 eo6HiTa0z8PE6lG1RArnpSV9i5OLetVyu5G/iLyA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 4/5] media: rkisp1: Add feature flags for BLS and compand
Date: Thu,  4 Jul 2024 18:49:31 +0300
Message-ID: <20240704154932.6686-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_084958_728786_C6B054CA 
X-CRM114-Status: GOOD (  14.04  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

Add feature flags for the dedicated black level subtraction hardware
block and for the compand hardware block. The companding feature flag is
added on its own (as opposed to "the absence of BLS") because we will
need it later for when we add support for the companding block.

Skip BLS configuration when the BLS feature flag is unset, as devices
without the dedicated BLS block cannot configure a hardware block that
doesn't exist.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 4 ++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 9 ++++++---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 7 +++++++
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index a52079261579..ca952fd0829b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -116,6 +116,8 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
  * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
  * @RKISP1_FEATURE_DMA_34BIT: The ISP uses 34-bit DMA addresses
+ * @RKISP1_FEATURE_BLS: The ISP has a dedicated BLS block
+ * @RKISP1_FEATURE_COMPAND: The ISP has a companding block
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -127,6 +129,8 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_SELF_PATH = BIT(2),
 	RKISP1_FEATURE_DUAL_CROP = BIT(3),
 	RKISP1_FEATURE_DMA_34BIT = BIT(4),
+	RKISP1_FEATURE_BLS = BIT(5),
+	RKISP1_FEATURE_COMPAND = BIT(6),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 0535ce57e862..dd114ab77800 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -509,7 +509,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2
 		  | RKISP1_FEATURE_SELF_PATH
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_BLS,
 	.max_width = 3264,
 	.max_height = 2448,
 };
@@ -532,7 +533,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2
 		  | RKISP1_FEATURE_SELF_PATH
-		  | RKISP1_FEATURE_DUAL_CROP,
+		  | RKISP1_FEATURE_DUAL_CROP
+		  | RKISP1_FEATURE_BLS,
 	.max_width = 4416,
 	.max_height = 3312,
 };
@@ -554,7 +556,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = RKISP1_V_IMX8MP,
 	.features = RKISP1_FEATURE_MAIN_STRIDE
-		  | RKISP1_FEATURE_DMA_34BIT,
+		  | RKISP1_FEATURE_DMA_34BIT
+		  | RKISP1_FEATURE_COMPAND,
 	.max_width = 4096,
 	.max_height = 3072,
 };
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index d3a7c7f55db0..20bc6d582527 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1268,6 +1268,12 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 	module_cfg_update = new_params->module_cfg_update;
 	module_ens = new_params->module_ens;
 
+	if (!rkisp1_has_feature(params->rkisp1, BLS)) {
+		module_en_update &= ~RKISP1_CIF_ISP_MODULE_BLS;
+		module_cfg_update &= ~RKISP1_CIF_ISP_MODULE_BLS;
+		module_ens &= ~RKISP1_CIF_ISP_MODULE_BLS;
+	}
+
 	/* update dpc config */
 	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
 		rkisp1_dpcc_config(params,
@@ -1851,6 +1857,7 @@ static const struct rkisp1_ext_params_handler {
 		.size		= sizeof(struct rkisp1_ext_params_bls_config),
 		.handler	= rkisp1_ext_params_bls,
 		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
+		.features	= RKISP1_FEATURE_BLS,
 	},
 	[RKISP1_EXT_PARAMS_BLOCK_TYPE_DPCC] = {
 		.size		= sizeof(struct rkisp1_ext_params_dpcc_config),
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
