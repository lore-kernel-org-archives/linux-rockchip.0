Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48066C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUpdWx3RMZ3+ZMQHzci20XlNL+bZ5DfQcZfTOmBAtPs=; b=jg5zskRauVA9lG
	b6OSoMm4Sxkuf/30de/CdrL6vMXOX3DT1iBqqx3syro7PbZGq9LfYZWBzkP42gOVfpYQNx+iYWAhE
	lUm8NhgPVRlinwq166M5sPnrJnb2e8+9BtGYjhqzxTaAzOEehcoQtD3FRix+7PNogqUtQAYVoSNA4
	LOLpzeLJH+D9Qhi4sh5khbjN5DzChZd/fac7rK2MyfR0qyNRcyN0N5lIe6WsEXtxQ58huCjNw8Y1B
	XiEHt4ZB1KL8U5NRFtjMrsYE+7kbXl2MLjaoijkre7LLNkl9jx1XyerhUbMpL2UEZSG8Z5kWflcyV
	BmRnfHyC36OTu8K1ypPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxag-000XN8-1D;
	Thu, 11 Jan 2024 16:07:34 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxad-000XKv-16
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jan 2024 16:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704989248;
	bh=m+4+w8Nro/6qVnOqVGso2S9Ki0IT4qV76zZG6m3in1I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=3nva6pVd2F+MRO4cjPmb4mDixRdcTcUZkK6TH0Q34FxODVb7dMZX7PnRJ+gtwDpwP
	 LgiKF1wk8KRCgshFnHM7c/AQ71/c5t52Wl+D6U0xcCoxZ0faFm2PdHEYFW9N/zbzSn
	 bwFICd6pV0CAj6upCZm+IeNX6pdvZOhGBCMFt6zlaTqVh3b3fjtyIdSWBEVAa425Y4
	 csmBaVDNBwmdj3E2+7x03zbXwk4F616Se+C8i+MqjXW4Zn7lBGla7lCiXjyiRQeXH+
	 uVSuaIykM108lTLM+1IWVLSvdcizxjqZzra1VkH6LvvlbheUgiK5Ep5C4rDKDv8cEm
	 sqAWQiw1Nq55w==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 457683782013;
	Thu, 11 Jan 2024 16:07:28 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [RCF 2/2] media: verisilicon: Use V4L2_FMT_FLAG_ALL_FORMATS flag
Date: Thu, 11 Jan 2024 17:07:21 +0100
Message-Id: <20240111160721.50020-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240111160721.50020-1-benjamin.gaignard@collabora.com>
References: <20240111160721.50020-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_080731_504346_FCDEB4DF 
X-CRM114-Status: GOOD (  11.42  )
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

If V4L2_FMT_FLAG_ALL_FORMATS flag has been set when calling
VIDIOC_ENUM_FMT ignore depth match and returns all the
hardware supported pixels formats.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 941fa23c211a..6d840911c764 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -201,7 +201,13 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	const struct hantro_fmt *fmt, *formats;
 	unsigned int num_fmts, i, j = 0;
-	bool skip_mode_none;
+	bool skip_mode_none, ignore_depth_match;
+
+	/*
+	 * If V4L2_FMT_FLAG_ALL_FORMATS flag is set, we want to enumerate all
+	 * hardware supported pixels formats
+	 */
+	ignore_depth_match = !!(f->flags & V4L2_FMT_FLAG_ALL_FORMATS);
 
 	/*
 	 * When dealing with an encoder:
@@ -222,7 +228,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
 		if (skip_mode_none == mode_none)
 			continue;
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !ignore_depth_match)
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
@@ -242,7 +248,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	for (i = 0; i < num_fmts; i++) {
 		fmt = &formats[i];
 
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !ignore_depth_match)
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
