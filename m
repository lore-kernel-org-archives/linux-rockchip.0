Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5266AC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1p6yrBOGDzJHs5suPnW4s1yJU3GMS/bu+f3U14NHq/U=; b=B+JU/HI0HU8fYGBPj1sSg5z4fD
	t///9Adh6Af5Qym5yIBTWQfb9OCe62APfef4hK+yy48V+rH77y3ZoUFdKg7N9bnE+aNoeICWMyZbg
	4SynpoVX+r6JWGCUOLrCW1C+dLB/SWL8A8DG9u/yjjHc9SLYpyw26ZJpUNa4ifGF8H5iqpmH5WBiS
	fz+E53x7RXdrcel4PWhejwJLTnFUrBRKy4x+IPJSDlUI7KN/xyRLA3spx03FHqeSMPe7NDflA/eSC
	tVcHWS4LmbbHeEy9yx8LXk41RgRX3ZRbX6ZTLSIwl5JpgA8GvUoxOsBW2ZTtkhLsbQ09fZffUXZ7y
	cdR6GO+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4wxw-004ZCa-FI; Sat, 25 Jun 2022 04:00:12 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4wxt-004ZBm-Rd
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:00:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 557E73200913;
	Sat, 25 Jun 2022 00:00:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 25 Jun 2022 00:00:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656129607; x=1656216007; bh=F42Ql5wFzh
	i7xToG683TEiTKbGB+DZq3nsL8tdn10OE=; b=N0wPq8mvDcSf5ZxqQ+esZZ1vgD
	4Rm0cQpLQ0mCP7DaDnTgHvIVQtcZhON24Q8GqffYGDAgfCiRCnl9V9gxVCm5Ypbi
	jJ3dlEYZWv6vwuq+qfpzveYl4Ci8nzskZsk4wTGnjD0WHxXM7g+3PKun/+tt8cSy
	GCJrdc1inzvK5d+QILm2YCeOiCtkA3tcb/5c8s2HbiilG73/xP1JQeKPpIyZC0W5
	m4ffE7ASZC4gbMe4esAnRzetj3rY/rFzq4unpxEU9PSZs9MnLNZsz/sF69lI/M4F
	FT8x5cpaxzFleGTVp20gAOM0ParPL2J2qep7/lbKJWV+8citRKPW+zIQ86yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656129607; x=1656216007; bh=F42Ql5wFzhi7xToG683TEiTKbGB+
	DZq3nsL8tdn10OE=; b=ovg0m9AGWWpxyP3yBR/JfD0ckVSn8gwFpnMYo+Ak2V28
	60qIauGWIUyVPAwhfwg+NsoOLd04zQkTWlR/RW+np0wEWHpR9XkvX7HZyMvf8eaK
	qRLQ7b2DMWV593aV/eaR/J/oy9RbZJDNSzEpzxSe4aKwiEO2QmOXZXh+n4M762f9
	GyoqlScPL160ktNOF6UhMxJJsMjVtbFKYQq564eOiRmD5BFo4VnBGHtS4ZkasKCr
	CiTGbqDZHwczWW+t/fqYhqmjqZdjuZ5zwKSTMwkg/VrHt5quDXgjcenaqpge5aYc
	3gLnRuxjZ+Z+QtGvVqOSIvGL475u4s7lWKKfhgd9/g==
X-ME-Sender: <xms:R4i2YqlVCIVi3TzSxuIJKjKMEL_Y0gMHGGqfyApf6Yv4WyprwI7yrg>
    <xme:R4i2Yh1rRO81nnDk3nQrEZw1yfBkeGCFedme1r-wp0989C6YuItK5DsjMg4wKYjsY
    SVMYV3CpnclzP-AdD4>
X-ME-Received: <xmr:R4i2YooBejTRTcOXlANBTWOVLeTScEDZebhDGzASpOvtYtYl87lerQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgjeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:R4i2YukPcFHkIq4ZoJ2DNnHyEAsSUGwnQp8xx8djKK-i8Da16XDJ6A>
    <xmx:R4i2Yo3gEVDk3C7zWjEOZqA6qlBYrEYb_LvmseeQJWb_4OhaYKu08Q>
    <xmx:R4i2YlvmPfCdrg5xAWzl96Rz_tHODPQJX1fGEmLEEvJV3uy1qW8YxA>
    <xmx:R4i2Ypn2wqStke3-JJGtR9Jq6SPb_hSNqn1xH7YVdXcwO_evH9MzhQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:00:04 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:00:01 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 20/55] media: rkisp1: csi: Handle CSI-2 RX configuration
 fully in rkisp1-csi.c
Message-ID: <20220625040001.sk46222hare6kmce@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-21-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-21-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_210009_973683_8BD1641C 
X-CRM114-Status: GOOD (  13.15  )
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
>The ISP layer now calls multiple functions of the CSI-2 RX layer to
>configure, start and stop it, with the steps for the last two
>operations. Move those calls to rkisp1_mipi_csi2_start() and
>rkisp1_mipi_csi2_stop() to simplify the ISP code and the API exposed by
>the CSI-2 receiver component.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-csi.c     | 59 +++++++++++--------
> .../platform/rockchip/rkisp1/rkisp1-csi.h     |  4 --
> .../platform/rockchip/rkisp1/rkisp1-isp.c     | 10 +---
> 3 files changed, 35 insertions(+), 38 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>index 4af04296b625..f19513a601e8 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>@@ -18,7 +18,7 @@
> #include "rkisp1-common.h"
> #include "rkisp1-csi.h"
>
>-int rkisp1_config_mipi(struct rkisp1_csi *csi)
>+static int rkisp1_config_mipi(struct rkisp1_csi *csi)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
>@@ -68,6 +68,30 @@ int rkisp1_config_mipi(struct rkisp1_csi *csi)
> 	return 0;
> }
>
>+void rkisp1_mipi_start(struct rkisp1_csi *csi)
>+{
>+	struct rkisp1_device *rkisp1 = csi->rkisp1;
>+	u32 val;
>+
>+	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
>+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
>+		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
>+}
>+
>+void rkisp1_mipi_stop(struct rkisp1_csi *csi)
>+{
>+	struct rkisp1_device *rkisp1 = csi->rkisp1;
>+	u32 val;
>+
>+	/* Mask and clear interrupts. */
>+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
>+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
>+
>+	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
>+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
>+		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
>+}
>+
> int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 			   struct rkisp1_sensor_async *sensor)
> {
>@@ -75,6 +99,11 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 	union phy_configure_opts opts;
> 	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
> 	s64 pixel_clock;
>+	int ret;
>+
>+	ret = rkisp1_config_mipi(csi);
>+	if (ret)
>+		return ret;
>
> 	pixel_clock = v4l2_ctrl_g_ctrl_int64(sensor->pixel_rate_ctrl);
> 	if (!pixel_clock) {
>@@ -89,36 +118,16 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 	phy_configure(csi->dphy, &opts);
> 	phy_power_on(csi->dphy);
>
>+	rkisp1_mipi_start(csi);
>+
> 	return 0;
> }
>
> void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi)
> {
>-	phy_power_off(csi->dphy);
>-}
>-
>-void rkisp1_mipi_start(struct rkisp1_csi *csi)
>-{
>-	struct rkisp1_device *rkisp1 = csi->rkisp1;
>-	u32 val;
>+	rkisp1_mipi_stop(csi);
>
>-	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
>-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
>-		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
>-}
>-
>-void rkisp1_mipi_stop(struct rkisp1_csi *csi)
>-{
>-	struct rkisp1_device *rkisp1 = csi->rkisp1;
>-	u32 val;
>-
>-	/* Mask and clear interrupts. */
>-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
>-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
>-
>-	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
>-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
>-		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
>+	phy_power_off(csi->dphy);
> }
>
> irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>index d97a4ee5c002..1f921d534865 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>@@ -17,12 +17,8 @@ struct rkisp1_sensor_async;
> int rkisp1_csi_init(struct rkisp1_device *rkisp1);
> void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
>
>-int rkisp1_config_mipi(struct rkisp1_csi *csi);
>-
> int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
> 			   struct rkisp1_sensor_async *sensor);
> void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi);
>-void rkisp1_mipi_start(struct rkisp1_csi *csi);
>-void rkisp1_mipi_stop(struct rkisp1_csi *csi);
>
> #endif /* _RKISP1_CSI_H */
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 0e68c8d53404..208c68aa52ea 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -276,7 +276,6 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
> 		ret = rkisp1_config_dvp(rkisp1);
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
> 	} else if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
>-		ret = rkisp1_config_mipi(&rkisp1->csi);
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
> 	}
>
>@@ -309,15 +308,13 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
> 	 * ISP(mi) stop in mi frame end -> Stop ISP(mipi) ->
> 	 * Stop ISP(isp) ->wait for ISP isp off
> 	 */
>-	/* stop and clear MI, MIPI, and ISP interrupts */
>+	/* stop and clear MI and ISP interrupts */
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
>
> 	rkisp1_write(rkisp1, RKISP1_CIF_MI_IMSC, 0);
> 	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, ~0);
>
>-	rkisp1_mipi_stop(&rkisp1->csi);
>-
> 	/* stop ISP */
> 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
> 	val &= ~(RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE |
>@@ -358,15 +355,10 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>
> static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
> {
>-	struct rkisp1_sensor_async *sensor = rkisp1->active_sensor;
> 	u32 val;
>
> 	rkisp1_config_clk(rkisp1);
>
>-	/* Activate MIPI */
>-	if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY)
>-		rkisp1_mipi_start(&rkisp1->csi);
>-
> 	/* Activate ISP */
> 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
> 	val |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD |
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
