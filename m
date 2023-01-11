Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 142C2C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOP3sNRrFe4N74IftqOd6pjIhPpjILQd1WmFIpIK+Yo=; b=J7mUreo/Vy+C2S
	Nqn1rM0zULf2EmPUGhypp4t5BVe96fFpPVN23FxG4t2pZHDU4NfExvI1fjS000P1v4LJrbTmy4QVU
	AmDfCC2plUVblxrCJtW06KD9waaxSGnVkYsYDe6E6TwDcMrjhPqSM5PY43OYye6HaUeItbf4+KtBr
	5C/AjSFYUucxurvM44hbICCqcWXDllgnwUpM9R6nog398Z+fgnByhrvzMASRVxJjtxG+01qh6vqJN
	nJc1icqle5bW4i2fS9rHB+4EW+zbvN46xlmxjruHNQ1hwXidy9j4pURJL52cW+iL1WU0tvITVTyhF
	mxEol9KetSRYpiSL9zTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeTv-00CFzR-7K; Wed, 11 Jan 2023 17:01:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeS1-00CEoe-Pz; Wed, 11 Jan 2023 16:59:48 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:1ee3:efce:e4f6:17a3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C1CE26602DB0;
	Wed, 11 Jan 2023 16:59:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673456383;
	bh=hK5ho7sqz6YdWfEyVAdpQFOjW5xXjqXVPgQmWV4hD5E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WUupMmD0USWPH8l4dwOOX27F/rCX3XPLArZxjvDlfPRP1OI7ybEfsoYIG3C7EVHPY
	 DT/K2DMFq7X7rTaBGtXWSK8iuYNliiIlHpFYJAEaulYUvbvMtV1a7m0FvXHkv0BSBr
	 zDXyCz15qYIKx7Jj9tBb/+wihcn2JPCDiFK9pmVJfuwB2X7fkrn8BP5QdiM/xi0vbj
	 tKbu3LJU12GMxjBD1UfbQ4ivmfjP6meb1wX6citVIKeTY5CE5fQSUnLFv/aq2V6mHv
	 mJxBb9/9ItympTVX0Ir8BnIzwiPo70liB61ZWyeUkyBQ7mhzpXzRoEsC18NXJsVazV
	 wIbGnUXwNEtBQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	daniel.almeida@collabora.com,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 07/13] media: verisilicon: Check AV1 bitstreams bit depth
Date: Wed, 11 Jan 2023 17:59:25 +0100
Message-Id: <20230111165931.753763-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
References: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_085946_000333_F0ED353A 
X-CRM114-Status: GOOD (  12.60  )
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

The driver supports 8 and 10 bits bitstreams, make sure to discard
other cases.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8e93710dcfed..16539e89935c 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -282,7 +282,13 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		/* We only support profile 0 */
 		if (dec_params->profile != 0)
 			return -EINVAL;
+	} else if (ctrl->id == V4L2_CID_STATELESS_AV1_SEQUENCE) {
+		const struct v4l2_ctrl_av1_sequence *sequence = ctrl->p_new.p_av1_sequence;
+
+		if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
+			return -EINVAL;
 	}
+
 	return 0;
 }
 
@@ -333,7 +339,13 @@ static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
 
 	switch (ctrl->id) {
 	case V4L2_CID_STATELESS_AV1_SEQUENCE:
-		ctx->bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
+		int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
+
+		if (vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)))
+			if (ctx->bit_depth != bit_depth)
+				return -EINVAL;
+
+		ctx->bit_depth = bit_depth;
 		break;
 	default:
 		return -EINVAL;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
