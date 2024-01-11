Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19D4DC47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 11:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGBZNVgnVBymcIxLsiydNQqiFMTJubGZ+C/9Y9XZVI0=; b=gK2m/1o5OSBkmy
	CCvDVpxXuzw9GvdlJ2vofBevnJSeDct1Qk8XUDFGeLk1Y8W6Y1GNVO9RLVLiWed8V/W8ZLh9R2Vx6
	K2odF4bRpNCt4X16mjNikc+TCAzjhkm1I15B+jOnMaFKD8WSDCakn726Xcf9g0mFKTD9is+Reyrr3
	vb79QxbvU84XvqcPl61Wz0COB5vbSJtURzYND03WbunQX/3nHnzM48IYJdZwPgZK5UB8D29axsm4P
	Dqj9fvydEAy9yv8vBXHhTz+z144tgCAhPJnq96JznSpOtTQSa2oo6PV95/WpzjAOp+1ebCUXzI986
	BFaUfGY5zT7tQh9a37eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtZW-00HTuj-2w;
	Thu, 11 Jan 2024 11:50:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtZ4-00HTK7-0R;
	Thu, 11 Jan 2024 11:49:40 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8C2F315B5;
	Thu, 11 Jan 2024 12:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704973711;
	bh=mByFgGZRsUoQ5mH7b+mvza/t76oxIexgK1kh1uSY9/U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g7aNEjmKWjEdLKdAC179epKOsBdCzthn8YCFrBbW474KSTUe4mDfgjDFIyJ0FvJ+E
	 Hul0rmr+uWg/azvJ5q1Qh+RuHhJEBUhQvXqrj7n/ZtmkoLo+6R3Wm8NF4cqs/DIUuE
	 6dttfsAcemL45zYp+uXqLO8lFFS3JJxs4TLI2tR0=
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
Subject: [PATCH v6 08/11] media: rkisp1: Support i.MX8MP's 34-bit DMA
Date: Thu, 11 Jan 2024 20:48:28 +0900
Message-Id: <20240111114831.656736-9-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114831.656736-1-paul.elder@ideasonboard.com>
References: <20240111114831.656736-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034938_330030_879D8A57 
X-CRM114-Status: GOOD (  23.91  )
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

On the ISP that is integrated in the i.MX8MP, DMA addresses have been
extended to 34 bits, with the 32 MSBs stored in the DMA address
registers and the 2 LSBs set to 0.

To support this:
- Shift the addresses to the right by 2 when writing to registers
- Set the dma mask to 34 bits
- Use dma_addr_t instead of u32 when storing the addresses

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes since v5:

- Improve the commit message

Changes since v4:

- Squash in fix from Tomi:
  - https://gitlab.com/ideasonboard/nxp/linux/-/commit/d6477fe673b1c0d05d12ae21d8db9a03b07e7fea

Changes since v2:

- Document the RKISP1_FEATURE_DMA_34BIT bit
- Use the rkisp1_has_feature() macro
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 20 ++++++++++---------
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 +++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 11 +++++++++-
 3 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index ca95f62822fa..1ee7639c42b7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -648,11 +648,13 @@ static void rkisp1_dummy_buf_destroy(struct rkisp1_capture *cap)
 
 static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 {
+	u8 shift = rkisp1_has_feature(cap->rkisp1, DMA_34BIT) ? 2 : 0;
+
 	cap->buf.curr = cap->buf.next;
 	cap->buf.next = NULL;
 
 	if (!list_empty(&cap->buf.queue)) {
-		u32 *buff_addr;
+		dma_addr_t *buff_addr;
 
 		cap->buf.next = list_first_entry(&cap->buf.queue, struct rkisp1_buffer, queue);
 		list_del(&cap->buf.next->queue);
@@ -660,7 +662,7 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		buff_addr = cap->buf.next->buff_addr;
 
 		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
-			     buff_addr[RKISP1_PLANE_Y]);
+			     buff_addr[RKISP1_PLANE_Y] >> shift);
 		/*
 		 * In order to support grey format we capture
 		 * YUV422 planar format from the camera and
@@ -669,17 +671,17 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		if (cap->pix.cfg->fourcc == V4L2_PIX_FMT_GREY) {
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cb_base_ad_init,
-				     cap->buf.dummy.dma_addr);
+				     cap->buf.dummy.dma_addr >> shift);
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cr_base_ad_init,
-				     cap->buf.dummy.dma_addr);
+				     cap->buf.dummy.dma_addr >> shift);
 		} else {
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cb_base_ad_init,
-				     buff_addr[RKISP1_PLANE_CB]);
+				     buff_addr[RKISP1_PLANE_CB] >> shift);
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cr_base_ad_init,
-				     buff_addr[RKISP1_PLANE_CR]);
+				     buff_addr[RKISP1_PLANE_CR] >> shift);
 		}
 	} else {
 		/*
@@ -687,11 +689,11 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		 * throw data if there is no available buffer.
 		 */
 		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 		rkisp1_write(cap->rkisp1, cap->config->mi.cb_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 		rkisp1_write(cap->rkisp1, cap->config->mi.cr_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 	}
 
 	/* Set plane offsets */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 69940014d597..26573f6ae575 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -114,6 +114,7 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
  * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
  * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
+ * @RKISP1_FEATURE_DMA_34BIT: The ISP uses 34-bit DMA addresses
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -124,6 +125,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
 	RKISP1_FEATURE_SELF_PATH = BIT(2),
 	RKISP1_FEATURE_DUAL_CROP = BIT(3),
+	RKISP1_FEATURE_DMA_34BIT = BIT(4),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
@@ -239,7 +241,7 @@ struct rkisp1_vdev_node {
 struct rkisp1_buffer {
 	struct vb2_v4l2_buffer vb;
 	struct list_head queue;
-	u32 buff_addr[VIDEO_MAX_PLANES];
+	dma_addr_t buff_addr[VIDEO_MAX_PLANES];
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 5a587391eacb..c2f1e533c8ff 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -549,7 +549,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isrs = imx8mp_isp_isrs,
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = IMX8MP_V10,
-	.features = RKISP1_FEATURE_MAIN_STRIDE,
+	.features = RKISP1_FEATURE_MAIN_STRIDE
+		  | RKISP1_FEATURE_DMA_34BIT,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
@@ -575,6 +576,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rkisp1_device *rkisp1;
 	struct v4l2_device *v4l2_dev;
+	unsigned long long dma_mask;
 	unsigned int i;
 	int ret, irq;
 	u32 cif_id;
@@ -589,6 +591,13 @@ static int rkisp1_probe(struct platform_device *pdev)
 	dev_set_drvdata(dev, rkisp1);
 	rkisp1->dev = dev;
 
+	dma_mask = rkisp1_has_feature(rkisp1, DMA_34BIT) ? DMA_BIT_MASK(34) :
+							   DMA_BIT_MASK(32);
+
+	ret = dma_set_mask_and_coherent(dev, dma_mask);
+	if (ret)
+		return ret;
+
 	mutex_init(&rkisp1->stream_lock);
 
 	rkisp1->base_addr = devm_platform_ioremap_resource(pdev, 0);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
