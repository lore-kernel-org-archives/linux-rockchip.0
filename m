Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC0EC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QbY0CL6gJDZsSK3/tKV21QwZ9Z8AbeAtufMtcU7D4o=; b=iAGfQrUXKu0t7x
	Rl5E76Phu1kCcAwcRh9Qs6RB+mEJhcXFCKm84/N+cxSGSClQHEzBZXxbsSELX5TFdkqVFn0NHdb9X
	ezWht6Ie1D1TwHJ8eEUeXpTsoS0Xg0II8Cn5ANSLzyoox9ZZgbzQzoaRVRAnPZfnoWJt6OV8D2Yae
	31eWgiCDR/dNC959jfZqo6mcvFNSgDMEXTWj3LJhgIHjOJAf+GhPbxfst7NJA/sIhobhSOsLiREhI
	ncOuienbYXD7k/XchKeBEhX/zXVZOs9vAmPCwPa26+D+HrZaiKWdL+S0hb6FhEDRIYdw2lswDqWSJ
	cgM+pBdmr9pIHLl2fVag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98m-001YTe-1W;
	Sat, 06 Jan 2024 16:03:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98i-001YOy-1R;
	Sat, 06 Jan 2024 16:03:14 +0000
Received: from pyrite.hamster-moth.ts.net (unknown [IPv6:2001:268:c203:a8ee:6c57:4243:1eb3:6cb])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3EB40149B;
	Sat,  6 Jan 2024 17:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704556929;
	bh=yAl4WEzOvPyQriXbCzXvW1whaLfexVOys8O1wjcFO/A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Re6HiQLdZ2b+kMn9oeRaVKf6NWejS2Rsvwxic45opSiFkiv+79vOj4sbUtGodDNLV
	 VLuGJsL/M9ZA6bWB/kuKR90C2DDaTyFqi8ddP+HbO2MfOLc5/ynV2QwuwRdfufcxZX
	 Bqu2nKmGqygs7BPhuTtu6UBeEk1WLQgV0Su6U4SA=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v5 04/10] media: rkisp1: Support devices lacking dual crop
Date: Sun,  7 Jan 2024 01:02:15 +0900
Message-Id: <20240106160221.4183409-5-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
References: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_080312_662687_E135046E 
X-CRM114-Status: GOOD (  15.68  )
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

Some versions of the ISP supported by the rkisp1 driver, such as the ISP
in the i.MX8MP, lack the dual crop registers and don't support cropping
at the resizer input. They instead rely on cropping in the Image
Stabilization module, at the output of the ISP, to modify the resizer
input size and implement digital zoom.

Support those ISP versions by addind a dual crop feature flag, and
mapping the resizer input crop rectangle to either the resizer dual crop
module or the image stabilization module.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 ++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 6 ++++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 6 ++++--
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index f7c251f79aa9..219d4a2547aa 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -112,6 +112,7 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
  * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
  * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
+ * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -121,6 +122,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
 	RKISP1_FEATURE_SELF_PATH = BIT(2),
+	RKISP1_FEATURE_DUAL_CROP = BIT(3),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 106040c4181c..e79fbd4d7e44 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -507,7 +507,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_SELF_PATH,
+		  | RKISP1_FEATURE_SELF_PATH
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -527,7 +528,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_SELF_PATH,
+		  | RKISP1_FEATURE_SELF_PATH
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index dd77a31e6014..de2eb2c97cc4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -635,7 +635,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	struct v4l2_subdev_state *sd_state;
 
 	if (!enable) {
-		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
+		if (rkisp1_has_feature(rkisp1, DUAL_CROP))
+			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		return 0;
 	}
@@ -646,7 +647,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	sd_state = v4l2_subdev_lock_and_get_active_state(sd);
 
 	rkisp1_rsz_config(rsz, sd_state, when);
-	rkisp1_dcrop_config(rsz, sd_state);
+	if (rkisp1_has_feature(rkisp1, DUAL_CROP))
+		rkisp1_dcrop_config(rsz, sd_state);
 
 	v4l2_subdev_unlock_state(sd_state);
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
