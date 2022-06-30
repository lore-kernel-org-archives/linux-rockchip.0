Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D5DCCA483
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2u7sPIItj5YBCkhkGrXkziCD9OkgjoIti9HvYSRsv4=; b=XxLGxJsjfiA8Zj
	GqqiLvzZu/YyM2skZjFUwmO2NB9ZRpKnzwJ+kxAXxQX6WAas+8k0Dl0V1IpMx2aqA+vUd+54tiJ+P
	1lUA9BtUfVqCqjnePK8PBec99kc2CS+AHkmR0Xch995J5KO1NcFsS9e+GiPxfq6oGxB26O11N8nkz
	LsFOUSAiEbgj2gXXG5cXxUHz2rVNrlM/nJZqpYGMNKwc5FqESnJwU3IxnTSeol+wj25ccheu2KhoJ
	E6zMuX2CDC3vzIgAAFfh+ojK/cGOafockZGaIfASxhC6iqUwBsH/GzIQFbQUPfSrfWbrucVyt1QrH
	tDWKQE0y5+5ZioKYU/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gz-0020mo-LC; Thu, 30 Jun 2022 23:08:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GZ-0020TG-KP
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:19 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CE87BA1C;
	Fri,  1 Jul 2022 01:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630486;
	bh=9Vohmbbva7uI4DtI9pF4Wld+RGir5COGGdVGOhliK+s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mTfjJ+j6k/SCl5PgkWpnWHNfdJXW+GUjReF5h71bFCI4U6ebVRQHpbtqip3ASPbR/
	 FMcmtriaM/d1CqIaHBLrBfp6OukOHERPGQRIrbuawOVDtqbx3NfYKCqCcxZV6QUtLg
	 u22fm4zyDQCx0HwwDb2wDCWYigjg7TrziFj9+bBg=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 44/55] media: rkisp1: Add infrastructure to support ISP features
Date: Fri,  1 Jul 2022 02:07:02 +0300
Message-Id: <20220630230713.10580-45-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160807_843930_1169420A 
X-CRM114-Status: GOOD (  14.26  )
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

Different ISP versions implement different sets of features. The driver
already takes the version into account in several places, but this
approach won't scale well for features that are found in different
versions. Introduce a new mechanism using a features bitmask in the
rkisp1_info structure to indicate which features the ISP support.

The first feature bit tells if the ISP has an internal CSI-2 receiver,
which is not available in all ISP versions.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h      | 15 +++++++++++++++
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c   |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index e436f1572566..dedfcf3466c8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -98,6 +98,19 @@ enum rkisp1_isp_pad {
 	RKISP1_ISP_PAD_MAX
 };
 
+/*
+ * enum rkisp1_feature - ISP features
+ *
+ * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
+ *
+ * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
+ * the driver to implement support for features present in some ISP versions
+ * only.
+ */
+enum rkisp1_feature {
+	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
+};
+
 /*
  * struct rkisp1_info - Model-specific ISP Information
  *
@@ -106,6 +119,7 @@ enum rkisp1_isp_pad {
  * @isrs: array of ISP interrupt descriptors
  * @isr_size: number of entries in the @isrs array
  * @isp_ver: ISP version
+ * @features: bitmatk of rkisp1_feature features implemented by the ISP
  *
  * This structure contains information about the ISP specific to a particular
  * ISP model, version, or integration in a particular SoC.
@@ -116,6 +130,7 @@ struct rkisp1_info {
 	const struct rkisp1_isr_data *isrs;
 	unsigned int isr_size;
 	enum rkisp1_cif_isp_version isp_ver;
+	unsigned int features;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 1dcade2fd2a7..bc278b49fefc 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -460,6 +460,7 @@ static const struct rkisp1_info px30_isp_info = {
 	.isrs = px30_isp_isrs,
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
+	.features = RKISP1_FEATURE_MIPI_CSI2,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -478,6 +479,7 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isrs = rk3399_isp_isrs,
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
+	.features = RKISP1_FEATURE_MIPI_CSI2,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
