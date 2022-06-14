Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F02EC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0idsRmeO6Jlbh4wP6hPQ8V+4jOnT9j2AgBt/1xp2NKY=; b=3T7yVN4pvB8/KY
	D8LbuIBohlk4/rd70jyVvbL8V2H9jZqVyoyYE2aWN5kn4ECy5GOZmuMoL8+Jh2Rye3UxwdbP07IUM
	aXf5M/w1X3yn9O9mDoks/UkadcX00r0c1GpjJwD8N6yJUvppJmZn2tkPraYaGfyMMiiYxVWZMCrpq
	ZP5c/ou1P70dsWJVHvWvWAX1Icv13IVKYUYQV8piMB2GfOdiSnnvD2JaITsXxVpy+tFPphYbYOkgX
	G2g+F9oKrmBz7PdXhOmk3QGnYG9+IZfkPd4TazqY1XB0YVRaO9k/eR2DPDznC5o2J2OwOsS7NOS2T
	IZ2ii4zDvRqamzseTMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C07-00AvRx-HJ; Tue, 14 Jun 2022 19:14:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C03-00AvOW-V4
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:54 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8E019D96;
	Tue, 14 Jun 2022 21:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234090;
	bh=Bhft2ql1CSfmPHJxfGOvZIq7jzGcGv9JEwoGwE8igyI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uVkpy072o89BR0n10QWcZ6dBCRoenK46mXj1Oq0Ygzbh3P/R25wl+OFtY4CdwWR61
	 M3/eExIQs+fhmTFMzBQq1DgcLY5g/+AxU+zf06A98G5fIF1t/5+RLlLqijQWL63qE9
	 BHCyaLzlRxLWODdX4YL5wE4MoURGZ7le6ekI2TuQ=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 45/55] media: rkisp1: Add infrastructure to support ISP features
Date: Wed, 15 Jun 2022 04:11:17 +0900
Message-Id: <20220614191127.3420492-46-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121452_238192_B0686B8F 
X-CRM114-Status: GOOD (  13.45  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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
index f926ca8248f8..eccdd3f9bc89 100644
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
  * @isr_size: number of entires in the @isrs array
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
index e85cf0d79af9..8ccd4042f3f3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -450,6 +450,7 @@ static const struct rkisp1_info px30_isp_info = {
 	.isrs = px30_isp_isrs,
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
+	.features = RKISP1_FEATURE_MIPI_CSI2,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -468,6 +469,7 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isrs = rk3399_isp_isrs,
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
+	.features = RKISP1_FEATURE_MIPI_CSI2,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
