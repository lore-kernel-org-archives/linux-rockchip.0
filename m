Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62535C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM07DqCsH64ZxkS0nWQq3PLVxl4dFmJoffXldvhTRPg=; b=dOxo5QJUs/N1at
	UDl5JRQGQJGYBidfRquIUKHyA7kf+59Fze6n1z9ZEgKLIS+XP+C6xq2iQeqhojwxvfA90zHp95T3m
	WnCY152l7CIN0712lUavLPMbL+tsaFeSA+K6U8sgJol2eN2WD/tfVknQv8THivUUE1u6zJaNg6xV2
	S+W52QiJkasDayLFBvb93Jg7LHdvBmejD2YIMk0c+8urmVQ42lyyq7lOlwsWjUjQKCQBWMs9suQrn
	LpnxDXkudPMmYQobV0th7vfuY6ikQqGphQO7nLyr4zl8OKwrq8d5j2AzCmxVjkMX7BbOaRMxOXPWI
	oYK2iNiEVIl5CL6aYP2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzD-00Aubq-5i; Tue, 14 Jun 2022 19:13:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzA-00AuYV-QP
	for linux-rockchip@bombadil.infradead.org; Tue, 14 Jun 2022 19:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SaNlkS4nL1siz8YV7D0uE4ZsVj+xgJB55kGxa2J8VII=; b=Uo/rUU8nhJLBmPaAtavUDNL9Lc
	bU9lLqbr52kdiPZZxlVU8ZXCkoogNkw+EW1SToP85xFpcey7fb5iZk8//C9oLIw1Qhz/inSoa5vvd
	SymTDuVjk55B6Fr1lLZRu2uaZlJBnus017xWmxyJ2qgGweKQOpDzF9Jpeag4ZrqfdeRSKsxrRBPJE
	iRZ3BdEkBtmHWe1ubXjCsuYm3hB3ZVOmbfHFQ6JbvbEEzfDPGIb6VtZHSTLIIbZP+sXgvnrUWqYiH
	nrvDVr63IagC/cykEy1RnYdB9WkE0dCaLwXVF0CKWsBEEqHeT7gAu79jLVSHjiday49nB6YIW+gnl
	UmzNfh9g==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byy-007wFw-Jw
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:54 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 39C13FA0;
	Tue, 14 Jun 2022 21:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234021;
	bh=nen/2bN6BiLU0SoY7+g9X9Z3wLthtBU3eonu0OwOdH4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JhwdEfNjVrPpzOt2chrJDy9lwg1jLnGNIW76W4PTQ9ks2DxRXEtl9mwnbun98S2cE
	 u4V0+UBNHpXyGtu5ev7gimBMlIUZLNLrf3HT5KNO80QVjek1IwR92R8o0mX7Kc6Qzo
	 OCSMS7Br5Brgpe/YYr4tIpXtKHET7WbxMvUVWwqs=
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
Subject: [PATCH 28/55] media: rkisp1: isp: Add container_of wrapper to cast subdev to rkisp1_isp
Date: Wed, 15 Jun 2022 04:11:00 +0900
Message-Id: <20220614191127.3420492-29-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_201344_994335_15D5324B 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

Replace manual container_of() calls with a static inline wrapper to
increase readability.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c   | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 4f12fc0b7694..812fb2ea5323 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -370,6 +370,11 @@ static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
  * Subdev pad operations
  */
 
+static inline struct rkisp1_isp *to_rkisp1_isp(struct v4l2_subdev *sd)
+{
+	return container_of(sd, struct rkisp1_isp, sd);
+}
+
 static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
 				     struct v4l2_subdev_state *sd_state,
 				     struct v4l2_subdev_mbus_code_enum *code)
@@ -625,7 +630,7 @@ static int rkisp1_isp_get_fmt(struct v4l2_subdev *sd,
 			      struct v4l2_subdev_state *sd_state,
 			      struct v4l2_subdev_format *fmt)
 {
-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 
 	mutex_lock(&isp->ops_lock);
 	fmt->format = *rkisp1_isp_get_pad_fmt(isp, sd_state, fmt->pad,
@@ -638,7 +643,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
 			      struct v4l2_subdev_state *sd_state,
 			      struct v4l2_subdev_format *fmt)
 {
-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 
 	mutex_lock(&isp->ops_lock);
 	if (fmt->pad == RKISP1_ISP_PAD_SINK_VIDEO)
@@ -659,7 +664,7 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
 				    struct v4l2_subdev_state *sd_state,
 				    struct v4l2_subdev_selection *sel)
 {
-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	int ret = 0;
 
 	if (sel->pad != RKISP1_ISP_PAD_SOURCE_VIDEO &&
@@ -701,7 +706,7 @@ static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
 {
 	struct rkisp1_device *rkisp1 =
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	int ret = 0;
 
 	if (sel->target != V4L2_SEL_TGT_CROP)
@@ -748,7 +753,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct rkisp1_device *rkisp1 =
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
-	struct rkisp1_isp *isp = &rkisp1->isp;
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	struct rkisp1_sensor_async *asd;
 	int ret;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
