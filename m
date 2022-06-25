Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F256BC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OSn7JQ2H4w+Q/S4CWL92+0hWAWrk5UMHKrHE1Q3O49k=; b=ULfi20mfGGLrHPY8Th8nNbur6E
	0sashSVctngRRhQVASDh9/kMPRA47EA3Ivve48/835qSdJYeGMkUCnIObdkuitmx+pc86z176U2px
	kOQYk8IAFZRvXPqp94CcVSg7Q3AoqpCXJqMaNuCxQfKIXw4aRlVG7hM0EFpTAvSj6iJlVZKWXDfU2
	uvJDOaVj4cSzf2/q4tV6SdAf4WRtzUkXd+WrT3rqJ4ADUlHZ0rXVhqtHyJtgXPJRZweiZG4xxCqGu
	0LEYe5lxMyPYUSV0mgTURB51APTn3gNwG3cjLLqKCuUXaQHkzGhx2tQUYe5J0Ur3Wp+yRjeS6DcPN
	+TJuUPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4x0s-004ZcZ-4i; Sat, 25 Jun 2022 04:03:14 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4x0o-004ZcE-NP
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:03:12 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 5BC6A32004E7;
	Sat, 25 Jun 2022 00:03:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sat, 25 Jun 2022 00:03:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656129788; x=1656216188; bh=eDPc9edfWJ
	l7U7jIsXeB84KOuiTkPKJVKr3f2vfYMZ4=; b=KNbaLJX7CqVmdUn4UAYcy4x6+G
	Sk8mrMuc1BsGoWfBhaXHOfKuEzfSPG20d3l1n7sKAYdmXwyQ0WwD64aDizKHHFwM
	ApLCEZ5rvaGz4j+gCZ8F1W1RtGCeYbw7oDDpSCM4SdZwuhVTCOAxiGi5B8mGe/dp
	wykZkg7MXRKWYnPNR71/vQx4hdiIvQQkVoDmErJTUeoMjgP0BgbXhIhoLLGWAdqL
	65ZfVqE7S27oNcR3rT8BtrCtCSGtS4EiEYyJyPKNfhDsXePoE4lwBkqk05t6rAGU
	m/jKgLnbNMgTZI+97jOwh9UUsPGffXgYHz2FwRKCZlmIBCkBQg0XaPzliLXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656129788; x=1656216188; bh=eDPc9edfWJl7U7jIsXeB84KOuiTk
	PKJVKr3f2vfYMZ4=; b=h7r2ZB5dQ//99vzjFiy4q0cMfGHbRtJLA3q0xcjIjCwW
	xN9nBy46NCQhNLC7cHACJJc3zhJ4BCOfp2bbA1BQqGdWTHAw8e6dCIf+B7uZY6Zs
	Wf63vXJwXejXvgdGQeVDlQoxckzyg6xOKqAaOSz2jW8rT9Aaw08Y58AP4Mgje8HO
	znSZTkhbAX3PRnjLrWey/xRL5VKfpNCg4kBXAok5bPaPPPaaujXLKeiahp50AZM0
	MuUEhLCclhVerBLCcdHshDzJsPBIw1m9eeSZPhJzwJo+OKUS8zaB1eY6iLt2hhfY
	0SynES1oofAas36rUHrA8thNDQ74qOvF1h2sFnze8Q==
X-ME-Sender: <xms:_Ii2YmHuP0XgVddjdRIE13lt2OzXgO8S-UAp8cgBAIp1L-CTXYX3RA>
    <xme:_Ii2YnXBxROUFXr79JMsDDu0K-MBBcYV94c4Oqs0UbAIthx5YPPRL0Uy3V0FYdxOC
    TGXnw2_u2ECutTLC-I>
X-ME-Received: <xmr:_Ii2YgLVPtxMeNZtxgSEd7SoWVNq14r2Mujo1xUuFHuS57BMJUojRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:_Ii2YgHq25jcp4WZbLXZngP4PW33z6KukdZe2yZb9qytTyGu1LrYGg>
    <xmx:_Ii2YsVMD32t5HgV-SX5Ng5OFG8VlIsUyq8MkI5HxTlcQaBq6V4bpg>
    <xmx:_Ii2YjNK_xqCAdCezrnlroBqIDB0xMfXXvLWu3cV5sh3MtlQeWvoGA>
    <xmx:_Ii2YvGSJgzIkt--uVYQAJfQm2hBrIjCputxgrjkNrXdBOnVpMst6w>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:03:05 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:03:03 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 21/55] media: rkisp1: csi: Rename CSI functions with a
 common rkisp1_csi prefix
Message-ID: <20220625040303.slwswsnbhxp5ff2n@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-22-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-22-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_210310_842119_AB048D0C 
X-CRM114-Status: GOOD (  12.64  )
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

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>The CSI-related functions are not named consistently. Fix it by using a
>common rkisp1_csi prefix.

this fixes my comment few patches back

>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +-
> .../platform/rockchip/rkisp1/rkisp1-csi.c     | 20 +++++++++----------
> .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 +++---
> .../platform/rockchip/rkisp1/rkisp1-dev.c     |  4 ++--
> .../platform/rockchip/rkisp1/rkisp1-isp.c     |  6 +++---
> 5 files changed, 19 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index a52fa9e0dd66..dbf1baca623a 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -555,7 +555,7 @@ void rkisp1_params_disable(struct rkisp1_params *params);
>
> /* irq handlers */
> irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
>-irqreturn_t rkisp1_mipi_isr(int irq, void *ctx);
>+irqreturn_t rkisp1_csi_isr(int irq, void *ctx);
> irqreturn_t rkisp1_capture_isr(int irq, void *ctx);
> void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
> void rkisp1_params_isr(struct rkisp1_device *rkisp1);
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>index f19513a601e8..c1bb8c05543d 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>@@ -18,7 +18,7 @@
> #include "rkisp1-common.h"
> #include "rkisp1-csi.h"
>
>-static int rkisp1_config_mipi(struct rkisp1_csi *csi)
>+static int rkisp1_csi_config(struct rkisp1_csi *csi)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
>@@ -68,7 +68,7 @@ static int rkisp1_config_mipi(struct rkisp1_csi *csi)
> 	return 0;
> }
>
>-void rkisp1_mipi_start(struct rkisp1_csi *csi)
>+static void rkisp1_csi_enable(struct rkisp1_csi *csi)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	u32 val;
>@@ -78,7 +78,7 @@ void rkisp1_mipi_start(struct rkisp1_csi *csi)
> 		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
> }
>
>-void rkisp1_mipi_stop(struct rkisp1_csi *csi)
>+static void rkisp1_csi_disable(struct rkisp1_csi *csi)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	u32 val;
>@@ -92,8 +92,8 @@ void rkisp1_mipi_stop(struct rkisp1_csi *csi)
> 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
> }
>
>-int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
>-			   struct rkisp1_sensor_async *sensor)
>+int rkisp1_csi_start(struct rkisp1_csi *csi,
>+		     struct rkisp1_sensor_async *sensor)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	union phy_configure_opts opts;
>@@ -101,7 +101,7 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 	s64 pixel_clock;
> 	int ret;
>
>-	ret = rkisp1_config_mipi(csi);
>+	ret = rkisp1_csi_config(csi);
> 	if (ret)
> 		return ret;
>
>@@ -118,19 +118,19 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 	phy_configure(csi->dphy, &opts);
> 	phy_power_on(csi->dphy);
>
>-	rkisp1_mipi_start(csi);
>+	rkisp1_csi_enable(csi);
>
> 	return 0;
> }
>
>-void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi)
>+void rkisp1_csi_stop(struct rkisp1_csi *csi)
> {
>-	rkisp1_mipi_stop(csi);
>+	rkisp1_csi_disable(csi);
>
> 	phy_power_off(csi->dphy);
> }
>
>-irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
>+irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
> {
> 	struct device *dev = ctx;
> 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>index 1f921d534865..7d3f01cfb49f 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>@@ -17,8 +17,8 @@ struct rkisp1_sensor_async;
> int rkisp1_csi_init(struct rkisp1_device *rkisp1);
> void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
>
>-int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
>-			   struct rkisp1_sensor_async *sensor);
>-void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi);
>+int rkisp1_csi_start(struct rkisp1_csi *csi,
>+		     struct rkisp1_sensor_async *sensor);
>+void rkisp1_csi_stop(struct rkisp1_csi *csi);
>
> #endif /* _RKISP1_CSI_H */
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 373a1f00c10a..253220188abd 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -383,7 +383,7 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
> 	 */
> 	rkisp1_capture_isr(irq, ctx);
> 	rkisp1_isp_isr(irq, ctx);
>-	rkisp1_mipi_isr(irq, ctx);
>+	rkisp1_csi_isr(irq, ctx);
>
> 	return IRQ_HANDLED;
> }
>@@ -398,7 +398,7 @@ static const char * const px30_isp_clks[] = {
> static const struct rkisp1_isr_data px30_isp_isrs[] = {
> 	{ "isp", rkisp1_isp_isr },
> 	{ "mi", rkisp1_capture_isr },
>-	{ "mipi", rkisp1_mipi_isr },
>+	{ "mipi", rkisp1_csi_isr },
> };
>
> static const struct rkisp1_info px30_isp_info = {
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 208c68aa52ea..ecb8ca0ad670 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -763,7 +763,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
> 				 false);
>
>-		rkisp1_mipi_csi2_stop(&rkisp1->csi);
>+		rkisp1_csi_stop(&rkisp1->csi);
> 		rkisp1_isp_stop(rkisp1);
>
> 		return 0;
>@@ -789,7 +789,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>
> 	rkisp1_isp_start(rkisp1);
>
>-	ret = rkisp1_mipi_csi2_start(&rkisp1->csi, rkisp1->active_sensor);
>+	ret = rkisp1_csi_start(&rkisp1->csi, rkisp1->active_sensor);
> 	if (ret) {
> 		rkisp1_isp_stop(rkisp1);
> 		goto mutex_unlock;
>@@ -799,7 +799,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 			       true);
> 	if (ret) {
> 		rkisp1_isp_stop(rkisp1);
>-		rkisp1_mipi_csi2_stop(&rkisp1->csi);
>+		rkisp1_csi_stop(&rkisp1->csi);
> 		goto mutex_unlock;
> 	}
>
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
