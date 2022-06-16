Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A89F2C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6XCzTQTQ2XYzrNXQRZ+JPcTSSdQebPBQ/HOt+tjb00=; b=ky2dhJngleHypH
	8dVArfRF1xPQ0th7TpojFGKYqdcArLSwq7EJ/0NLRw4N2pC0Ub0Lp/9pz7gJiFknSsBWsWBqu4/yZ
	XPgpD0xYlr68SlApdOcBKYyZ2xzqbmH68yQO2xXY89fI6ZrV9J4lNpIVXEHbcNZjL0Jhyavfi8gXU
	DheXD39o9BbAE7ezLQHih7scfK1RiqM00sEegelbEi2ezmZ22bmWGPWrPf7pJzsAIl22s6FuEToLD
	GtN7TE503XjhLdMU3eW0UWHxztBlEDRnjuOBNAIfBhyhRRyLnnHvCNKNt/PP5JGQLTZtSy6itzOLV
	oMW1fucFZfBJO8MP1maQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w5D-0046vl-Dp; Thu, 16 Jun 2022 20:27:15 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3V-0045wd-Ac; Thu, 16 Jun 2022 20:25:32 +0000
Received: by mail-ed1-x531.google.com with SMTP id b8so3657426edj.11;
        Thu, 16 Jun 2022 13:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HUtwgF4GgsHpYDtVHC8Pb/yKV/u5JGnJVytpp+Tyji0=;
        b=VIBDDCUA7EDMjVpT7zkHkhn7oucpO9dZAr5RdMH8gLUJQNdX3s4Brv/8/b4gDkHChp
         trvTGuGn0WbWO5iyJ3yO2ZcLMyvit3ym4DojDUX4g+U05h36fR1Q3lv0bgzcMKZ0rE4g
         muKKz08J638DasHXxeksMC4PJNMCGDq+c1J420zvrZ3SZ2/6icHBpNB++uCf1/uGeiIv
         uaYDK9NrM5YldDGbYZR1mKiqexWykA/Jjo+lC8qK/wKX36/HlMmkduUXDE07ZgLQLXVP
         h/bd7fOU1a7kcJS5M8XiEk0FbE9I1n1kehh2GS2o/fj28Z3wZz31hY0oUuzd2Ht67ps+
         8L2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HUtwgF4GgsHpYDtVHC8Pb/yKV/u5JGnJVytpp+Tyji0=;
        b=trxvyQkZKJ5d7bNLnJlaZCNaHmQlXpWuXYlnLFxEqVIsHiuXCQMhOLC+O7kXru71IC
         2sMjDgW6Mn0cUfLw30RMkMSifiKp1FRtCYzNsD50c6vrfp0QB9cOq4eFtaF6rBffyJEq
         S4ZCaRk2cFyhgzA7Emj3e/GWrcz+seWusmvbbGSG1JshaMXnF4hr1CF5uSYyYvG+Vznm
         a5FZhbW5MREec83dq7/HitcLCZAh0vZIBS2eC6K0OrDY5w9qfMxAcux9Xi7xQaV/ywCh
         qmtREKxa2XdMBcrf5VbiUshooVmHb69yHyVWNG4UxEpBPLRFWu1MhjXBsvzD8XiTZ1ik
         rfCw==
X-Gm-Message-State: AJIora+DbVuyDfkQeFPCcBMnlbaHmEidNyzKi6nlg/3haWvM5Lcrpcci
	ovCEajtWIaonk2SGNdkK0Pw=
X-Google-Smtp-Source: AGRyM1s+LCS6ApVWlV0wlYNA8FpbdeKqTi9OLHoLWn7sfH9jMC4sAuP2R7t34r/FaNjWdPfi107VfQ==
X-Received: by 2002:a05:6402:5114:b0:42f:b5f3:1f96 with SMTP id m20-20020a056402511400b0042fb5f31f96mr8758001edd.260.1655411125683;
        Thu, 16 Jun 2022 13:25:25 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:25 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v2 6/7] media: hantro: Store VP9 bit depth in context
Date: Thu, 16 Jun 2022 22:25:12 +0200
Message-Id: <20220616202513.351039-7-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132529_398152_7A2D325D 
X-CRM114-Status: GOOD (  11.64  )
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

Now that we have proper infrastructure for postprocessing 10-bit
formats, store VP9 bit depth in context.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 01d33dcb0467..afddf7ac0731 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -324,6 +324,24 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
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
@@ -336,6 +354,10 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
 	.s_ctrl = hantro_hevc_s_ctrl,
 };
 
+static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
+	.s_ctrl = hantro_vp9_s_ctrl,
+};
+
 #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
 					 V4L2_JPEG_ACTIVE_MARKER_COM | \
 					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
@@ -503,6 +525,7 @@ static const struct hantro_ctrl controls[] = {
 		.codec = HANTRO_VP9_DECODER,
 		.cfg = {
 			.id = V4L2_CID_STATELESS_VP9_FRAME,
+			.ops = &hantro_vp9_ctrl_ops,
 		},
 	}, {
 		.codec = HANTRO_VP9_DECODER,
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
