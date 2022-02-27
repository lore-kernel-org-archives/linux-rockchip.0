Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C14C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wcANTCsxZs497kuDzcF87fmcW11WCxxLL8QRjZ57dU=; b=rCT3oFRNhWkxGJ
	GX8mV6bCkgcpZgbKWykfFEE0wqSMD1dZb9K3NjEokoiSkv860teb09FoFPBAjsmmPVuISHlLK5eN2
	XIsPihIEBskuW+amE9qkcoQCtRP/siPTSa0cnoYfWi20Q4/7CUsnoQPNo2FY5daLnukEuLga5uV+E
	SvIeoNus6clPtwEXh4Wt2UngqtoUSACwQoPs6+ALkxZ3gDU4Skzh0Ui2gi2FyIuaq/Sb4j6yXLdI9
	PjAzHrpHUqekr/offikLytW/DfGrqtEmsdKLCzmSnMPm5cwsD71w8gQ/tJIm3AYfC7XoKoJSXxY7S
	qEvy9MdAipu7OO0xHFbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKuD-009V94-Hy; Sun, 27 Feb 2022 14:52:13 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsf-009UIe-WE; Sun, 27 Feb 2022 14:50:40 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gb39so20094528ejc.1;
 Sun, 27 Feb 2022 06:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f4pmLOZiHwkHk74rBhVutCXZ7DM+WmiqJLeo0YFOJ70=;
 b=FXv4REFbBkfc0m5qyfEujO0JGMnojRG5hR4dsvRLsEJ75GA57elwyolO200jUPuS3X
 +495TTzbW3fGbTIOJzY3U5eB5rtPwRfeOQtDykJrzjgIDBUgB4Z6Yw6a4hXd7GthWnVa
 C9iH7oo9SoPsvNhSMNyNuZJe8cypIDbbNepqYxpRrKnDu5MfAZibZZprlc/H281eDHTa
 9v2DbSDvhJpZQrHnHWrw/r9PGJEDF0fq8+6IrTNNuJp7VYapzL5IiIgYGUGcpgyGops6
 3eSgUoMqzBSuna7WlR2TkDB5tFMfUOhazQ6AQPWEl/gp6D4xdSsqyUMjlAvLF+Nm/hPF
 0M2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f4pmLOZiHwkHk74rBhVutCXZ7DM+WmiqJLeo0YFOJ70=;
 b=adbvwuVSq965G1Ae/6nMwIYZnD2x4uIMYugJeL5P1Fqcm1VqOM8X8+wEGZnRye/vKm
 a0g3G6g+EoUDl4V7iYJeA4mtW4ovGAcz0KAr1lP8Nba4gqAK27xNQ8+B2PyT9mB+haIS
 L6dsRZ7/Jl28/+4BlGBFxtFk3N/frG/hdAsR0UVazdoIrrpETw38S+cJCDiGbyjpKJ5n
 ce9cLRn5o0kM8cv4fOaBKmED2MPlQykm8TlXw/xgpWt9u4p/RjaiUphEjVbQWzgjfLqB
 6SacB1pzrrfuZT4fwxxED1BfPsdfkif052QlDa3bxDxFm7UeD4RBu0SfHL9Gn4dKGzso
 Nn5g==
X-Gm-Message-State: AOAM530eAgykQGuHbWflRRMq+6ewwufmXSheVis352Dk19145/gtOx4U
 Ue+94e18QlIuwGaJfM24Og8=
X-Google-Smtp-Source: ABdhPJz7b0SKhTXBjs0rS08oJaEy68HRnT3gkOVNb9lfTI0Os0GoXnzvKwvmvEfx3CIQyLG6wudkcQ==
X-Received: by 2002:a17:906:fb8a:b0:6b5:d269:bb48 with SMTP id
 lr10-20020a170906fb8a00b006b5d269bb48mr12677338ejb.91.1645973436442; 
 Sun, 27 Feb 2022 06:50:36 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:36 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 6/8] media: hantro: Store VP9 bit depth in context
Date: Sun, 27 Feb 2022 15:49:24 +0100
Message-Id: <20220227144926.3006585-7-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065038_111324_782854C3 
X-CRM114-Status: GOOD (  11.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Now that we have proper infrastructure for postprocessing 10-bit
formats, store VP9 bit depth in context.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6a51f39dde56..305090365e74 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -320,6 +320,24 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct hantro_ctx *ctx;
+
+	ctx = container_of(ctrl->handler,
+			   struct hantro_ctx, ctrl_handler);
+
+	switch (ctrl->id) {
+	case V4L2_CID_STATELESS_VP9_FRAME:
+		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 	.try_ctrl = hantro_try_ctrl,
 };
@@ -332,6 +350,10 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
 	.s_ctrl = hantro_hevc_s_ctrl,
 };
 
+static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
+	.s_ctrl = hantro_vp9_s_ctrl,
+};
+
 static const struct hantro_ctrl controls[] = {
 	{
 		.codec = HANTRO_JPEG_ENCODER,
@@ -478,6 +500,7 @@ static const struct hantro_ctrl controls[] = {
 		.codec = HANTRO_VP9_DECODER,
 		.cfg = {
 			.id = V4L2_CID_STATELESS_VP9_FRAME,
+			.ops = &hantro_vp9_ctrl_ops,
 		},
 	}, {
 		.codec = HANTRO_VP9_DECODER,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
