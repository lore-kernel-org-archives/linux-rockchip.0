Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DB16C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 01:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dzL+jjdOLORW6lATgnhhkrLP6CNyRL1IWRwHHSgJALM=; b=vK1SCNuukNnGX0tmWuUmViYKze
	nrfb5BINiDZeadKkIaaUhOej+jJFAP3eDcbmZ3jSyIhkov4w349jAeIZE79GdkgcSgttE/6/k8UzA
	/ktlsyE+NcgekEr3S2eNq9NGehJgNoTQVjJuu2uVDNLNhBFEFYjGkooSDHT9RYbadVf/nrJT3Gt5O
	fVNNd7WoN9bOWOSUu5q4vKMQv5W5vQcFoPDKjw2JDpwWmT1l4vBRnb5kvQxCH7ter7QfLY6F9/5lW
	jH8ClLM++XgVdJP/mAPA9v9s8UZkOByzp6cjEoTpHeO4+PpVAFDGHNJOLJK5HAUfkNGeCHw9kn3ub
	4rLwckuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAiJ5-00F19w-MH; Mon, 11 Jul 2022 01:33:51 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAiJ2-00F17x-RB
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 01:33:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 93F543200124;
	Sun, 10 Jul 2022 21:33:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 10 Jul 2022 21:33:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657503227; x=1657589627; bh=h9V6Qcon/L
	p8/s6bjRW+bFR5ZnlJ2oHkaSmDdClm+cw=; b=VTO6HBWNTOdvXclpBkFg45ffEj
	9/apKtgFnpkPZ+oZEKuX/J17DhRYOy7fiZ/3P2W6aadtOUlvV+DhwSKfD0+TbMAo
	GrekL+7/vSmNJkyhFUwosfWGl5ajHqkWyZVz9MiVcVnrKc8QCjxxymTr9unbWzCW
	GdcpATyaDtpFJ4K155sD99Uw7/89nlzJZpkIBTLoa/L/1+z4TvOs/Qq+PazApQiw
	eiK3zF5/Az/wGv7TB4VZZydcPDhkMfO0ubn4AHxHc8FgxUFeNvdDZrEmb2Rn8K3o
	+UkbxodSDulZIZu52Z2Vi1Wm2GYm5BGh/9lzwzPtNlO4XyH54idNwDNMACbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657503227; x=1657589627; bh=h9V6Qcon/Lp8/s6bjRW+bFR5ZnlJ
	2oHkaSmDdClm+cw=; b=Qxk3iMOoN0ubIR2r1mDiysb0k2tmA0L0Gmm0bRthPNkp
	zeo7sTDI3nc26wFnfug29bSnzF8Yd5ARkJBbvAMaTxukCc33VgWHbr/rrT6hXxr8
	QslbgzpVaEm3KOvZ6xVxaufAi+Z9lLXifE7EwlyNXzBlWWmtiZEfatzOC7KxTfHv
	1bWGOFhlu7dsSFhOg5PpmcuHZ1kpJLi+Bk0XHoxppc7tivK1YPexRLzXVIMy0rAx
	dkD05ywZllqCUaa4RQzWgE+oUCrQztpRG+nnQl+6qBQP4GEfzzijTEmuyJs7A7i3
	r7yIjvVICc3T0nHIhHdai7GgK2/TpDH12ir63tBFOw==
X-ME-Sender: <xms:-n3LYmQb6Zwl7P8CCDJmRqDM6wNuTDlZ0D1j2b7D2rQOPUnstXvWtg>
    <xme:-n3LYrydAn4hzOIO6i2ZbaQtN5G7G5laJ_cnFyJNNcPd8UT0Djm8At8lpHidxixvV
    Y11IRV7egY3EaR76p4>
X-ME-Received: <xmr:-n3LYj1phGl57sTa9SffmvTkZlHEdOnBt9JwOwO0pRNFghTMX_Z9TA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddggeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:-n3LYiAJDRMBSH6w5wq-ajnmUNDM5Tlq4XVnBZ7UUHhBpJht8QNmbQ>
    <xmx:-n3LYvhmgzjUef0WT0fN1spUYVrChyOtpTc4njijt5kc9pgdEfCikA>
    <xmx:-n3LYupD_JseVLPMUe4lZMHZWEINAp4O47somQMmyAV0658Wt-UeZA>
    <xmx:-33LYvcjNP3hiI-VZVREp4U_vvcerDghJPO12K94hETsHyJRnHTJrw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 21:33:44 -0400 (EDT)
Date: Mon, 11 Jul 2022 04:33:41 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 40/55] media: rkisp1: csi: Plumb the CSI RX subdev
Message-ID: <20220711013341.i2pm77oirfdzrwsj@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-41-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-41-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_183348_971148_26A05924 
X-CRM114-Status: GOOD (  18.27  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 01.07.2022 02:06, Laurent Pinchart wrote:
>Connect the CSI receiver subdevice between the sensors and the ISP. This
>includes:
>
>- Calling the subdevice via the v4l2 subdev API
>- Moving the async notifier for the sensor from the ISP to the CSI
>  receiver
>- In the ISP, create a media link to the CSI receiver, and remove the
>  media link creation to the sensor
>- In the CSI receiver, create a media link to the sensor
>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
>Changes since v1:
>
>- Clarify commit message
>- Update the media device topology
>- Fix white space
>---
> .../platform/rockchip/rkisp1/rkisp1-csi.c     | 34 ++++++++-
> .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 +-
> .../platform/rockchip/rkisp1/rkisp1-dev.c     | 70 ++++++++++---------
> .../platform/rockchip/rkisp1/rkisp1-isp.c     | 21 +-----
> 4 files changed, 75 insertions(+), 56 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>index 173a0550af5c..6d904bbef424 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>@@ -44,6 +44,34 @@ rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
> 		return v4l2_subdev_get_try_format(&csi->sd, &state, pad);
> }
>
>+int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
>+			   struct rkisp1_sensor_async *s_asd,
>+			   unsigned int source_pad)
>+{
>+	struct rkisp1_csi *csi = &rkisp1->csi;
>+	int ret;
>+
>+	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
>+						V4L2_CID_PIXEL_RATE);
>+	if (!s_asd->pixel_rate_ctrl) {
>+		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
>+			sd->name);
>+		return -EINVAL;
>+	}
>+
>+	/* Create the link from the sensor to the CSI receiver. */
>+	ret = media_create_pad_link(&sd->entity, source_pad,
>+				    &csi->sd.entity, RKISP1_CSI_PAD_SINK,
>+				    !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
>+	if (ret) {
>+		dev_err(csi->rkisp1->dev, "failed to link src pad of %s\n",
>+			sd->name);
>+		return ret;
>+	}
>+
>+	return 0;
>+}
>+
> static int rkisp1_csi_config(struct rkisp1_csi *csi,
> 			     const struct rkisp1_sensor_async *sensor)
> {
>@@ -120,8 +148,8 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
> 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
> }
>
>-int rkisp1_csi_start(struct rkisp1_csi *csi,
>-		     const struct rkisp1_sensor_async *sensor)
>+static int rkisp1_csi_start(struct rkisp1_csi *csi,
>+			    const struct rkisp1_sensor_async *sensor)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	union phy_configure_opts opts;
>@@ -157,7 +185,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
> 	return 0;
> }
>
>-void rkisp1_csi_stop(struct rkisp1_csi *csi)
>+static void rkisp1_csi_stop(struct rkisp1_csi *csi)
> {
> 	rkisp1_csi_disable(csi);
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>index ddf8e5e08f55..eadcd24f65fb 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>@@ -21,8 +21,8 @@ void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
> int rkisp1_csi_register(struct rkisp1_device *rkisp1);
> void rkisp1_csi_unregister(struct rkisp1_device *rkisp1);
>
>-int rkisp1_csi_start(struct rkisp1_csi *csi,
>-		     const struct rkisp1_sensor_async *sensor);
>-void rkisp1_csi_stop(struct rkisp1_csi *csi);
>+int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
>+			   struct rkisp1_sensor_async *s_asd,
>+			   unsigned int source_pad);
>
> #endif /* _RKISP1_CSI_H */
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 5428e19e818f..c3a7ab70bbef 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -17,6 +17,7 @@
> #include <linux/pinctrl/consumer.h>
> #include <linux/pm_runtime.h>
> #include <media/v4l2-fwnode.h>
>+#include <media/v4l2-mc.h>
>
> #include "rkisp1-common.h"
> #include "rkisp1-csi.h"
>@@ -67,18 +68,28 @@
>  *
>  * Media Topology
>  * --------------
>- *      +----------+     +----------+
>- *      | Sensor 2 |     | Sensor X |
>- *      ------------ ... ------------
>- *      |    0     |     |    0     |
>- *      +----------+     +----------+      +-----------+
>- *                  \      |               |  params   |
>- *                   \     |               | (output)  |
>- *    +----------+    \    |               +-----------+
>- *    | Sensor 1 |     v   v                     |
>- *    ------------      +------+------+          |
>- *    |    0     |----->|  0   |  1   |<---------+
>- *    +----------+      |------+------|
>+ *
>+ *          +----------+       +----------+
>+ *          | Sensor 1 |       | Sensor X |
>+ *          ------------  ...  ------------
>+ *          |    0     |       |    0     |
>+ *          +----------+       +----------+
>+ *               |                  |
>+ *                \----\       /----/
>+ *                     |       |
>+ *                     v       v
>+ *                  +-------------+
>+ *                  |      0      |
>+ *                  ---------------
>+ *                  |  CSI-2 RX   |
>+ *                  ---------------         +-----------+
>+ *                  |      1      |         |  params   |
>+ *                  +-------------+         | (output)  |
>+ *                         |               +-----------+
>+ *                         v                     |
>+ *                      +------+------+          |
>+ *                      |  0   |  1   |<---------+
>+ *                      |------+------|
>  *                      |     ISP     |
>  *                      |------+------|
>  *        +-------------|  2   |  3   |----------+
>@@ -119,17 +130,8 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
> 		container_of(asd, struct rkisp1_sensor_async, asd);
> 	int source_pad;
>
>-	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
>-						V4L2_CID_PIXEL_RATE);
>-	if (!s_asd->pixel_rate_ctrl) {
>-		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
>-			sd->name);
>-		return -EINVAL;
>-	}
>-
> 	s_asd->sd = sd;
>
>-	/* Create the link to the sensor. */
> 	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
> 						 MEDIA_PAD_FL_SOURCE);
> 	if (source_pad < 0) {
>@@ -138,10 +140,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
> 		return source_pad;
> 	}
>
>-	return media_create_pad_link(&sd->entity, source_pad,
>-				     &rkisp1->isp.sd.entity,
>-				     RKISP1_ISP_PAD_SINK_VIDEO,
>-				     !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
>+	return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
> }
>
> static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
>@@ -283,6 +282,14 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> 	unsigned int i;
> 	int ret;
>
>+	/* Link the CSI receiver to the ISP. */
>+	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
>+				    &rkisp1->isp.sd.entity,
>+				    RKISP1_ISP_PAD_SINK_VIDEO,
>+				    MEDIA_LNK_FL_ENABLED);
>+	if (ret)
>+		return ret;
>+
> 	/* create ISP->RSZ->CAP links */
> 	for (i = 0; i < 2; i++) {
> 		struct media_entity *resizer =
>@@ -364,13 +371,6 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> 	if (ret)
> 		goto error;
>
>-	ret = rkisp1_subdev_notifier_register(rkisp1);
>-	if (ret) {
>-		dev_err(rkisp1->dev,
>-			"Failed to register subdev notifier(%d)\n", ret);
>-		goto error;
>-	}
>-
> 	return 0;
>
> error:
>@@ -534,10 +534,16 @@ static int rkisp1_probe(struct platform_device *pdev)
> 	if (ret)
> 		goto err_cleanup_csi;
>
>+	ret = rkisp1_subdev_notifier_register(rkisp1);
>+	if (ret)
>+		goto err_unreg_entities;
>+
> 	rkisp1_debug_init(rkisp1);
>
> 	return 0;
>
>+err_unreg_entities:
>+	rkisp1_entities_unregister(rkisp1);
> err_cleanup_csi:
> 	rkisp1_csi_cleanup(rkisp1);
> err_unreg_media_dev:
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index d7e2802d11f5..ea0bbccb5aee 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -16,7 +16,6 @@
> #include <media/v4l2-event.h>
>
> #include "rkisp1-common.h"
>-#include "rkisp1-csi.h"
>
> #define RKISP1_DEF_SINK_PAD_FMT MEDIA_BUS_FMT_SRGGB10_1X10
> #define RKISP1_DEF_SRC_PAD_FMT MEDIA_BUS_FMT_YUYV8_2X8
>@@ -728,17 +727,13 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> {
> 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> 	struct rkisp1_device *rkisp1 = isp->rkisp1;
>-	const struct rkisp1_sensor_async *asd;
> 	struct media_pad *source_pad;
> 	struct media_pad *sink_pad;
> 	int ret;
>
> 	if (!enable) {
> 		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
>-
>-		rkisp1_csi_stop(&rkisp1->csi);
> 		rkisp1_isp_stop(isp);
>-
> 		return 0;
> 	}
>
>@@ -756,30 +751,20 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		return -EPIPE;
> 	}
>
>-	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,
>-			   asd);
>-
>-	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
>-		return -EINVAL;
>+	if (rkisp1->source != &rkisp1->csi.sd)
>+		return -EPIPE;
>
> 	isp->frame_sequence = -1;
> 	mutex_lock(&isp->ops_lock);
>-	ret = rkisp1_config_cif(isp, asd->mbus_type, asd->mbus_flags);
>+	ret = rkisp1_config_cif(isp, V4L2_MBUS_CSI2_DPHY, 0);
> 	if (ret)
> 		goto mutex_unlock;
>
> 	rkisp1_isp_start(isp);
>
>-	ret = rkisp1_csi_start(&rkisp1->csi, asd);
>-	if (ret) {
>-		rkisp1_isp_stop(isp);
>-		goto mutex_unlock;
>-	}
>-
> 	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
> 	if (ret) {
> 		rkisp1_isp_stop(isp);
>-		rkisp1_csi_stop(&rkisp1->csi);
> 		goto mutex_unlock;
> 	}
>
>-- 
>Regards,
>
>Laurent Pinchart
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
