Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B71C05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Feb 2023 10:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bkpud55C4eHgq1cHbaEjVY/k9fI7xvkS2uZ8amsV7vo=; b=cbrKIOdhZRXoZG
	7oyE4CTg2xSZQAehuTaAo5Q10oin3zaBQ5QwfV5oLqnuUalVh5EREvLHdxqBz6hXWIs6cfwZlht2K
	IvKl0BtwyfoZmmgFCCU0jbf8Qx3v6JP4kGe9jZ143HjmtRBRC6Vox73di3/hGb7lCFEQvBKYnZhr2
	IlfTUlNbpUstH9YG69MkRpWv2oFrb1BDYd64uN1woLjCjydTcO2VarJuNS0v92TzDpuuTctGj54A5
	PzlRp+2+RsB6UwnhP+uVLlzroyubEBK0/J5pRhnjmhdiKIqSkHJHEmVfxneYC6/5qc8apgeMa7cHd
	79Fel2q4y9mmfX86mt8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3la-003jCW-Se; Mon, 20 Feb 2023 10:51:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3jD-003i2A-Py; Mon, 20 Feb 2023 10:49:05 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d30c:b155:96fb:dcc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 465BF6602173;
	Mon, 20 Feb 2023 10:49:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676890140;
	bh=tiJU1XPfasKdiChhkAX5L0vI56X8ZEAvctUJUjANgAA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WsfFgn/LAzRHgba5r4let4PikDJEKi3nz7x+JN032GIebw38U8b7q4/jfMgEUcc7E
	 9pEIGIASB0M7KVFEIhKtCEJGOrTBmNzE3jBC+D4eAv2if/fA3fu3s3pPGJN0HjUqqN
	 9qeKO3HLaWIKZw9ZnsKztmlrgYTqiYVCckpDNgKuuQmxQZtCp1IlMyVMP/HTCAKOYE
	 7+bWt8KZjpOSxJWK2DcIWE3KbWCg4wPPMOfbVpi0MVHZXHKSdJHLxJg72AekvkLkWF
	 Bm8o+RgflIzQxHd7NjTg3gMoBco76PBfzJhGfUEsPlO/a82027p/MJZ7Dio+14xo8b
	 rsf7MsWy4/GXA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 6/6] media: verisilicon: VP9: Only propose 10 bits compatible pixels formats
Date: Mon, 20 Feb 2023 11:48:49 +0100
Message-Id: <20230220104849.398203-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_024904_035520_458F732C 
X-CRM114-Status: GOOD (  10.38  )
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

When decoding a 10bits bitstreams VP9 driver should only expose
10bits pixel formats.
To fulfill this requirement it is needed to call hantro_reset_raw_fmt()
when bit depth change and to correctly set match_depth in pixel formats
enumeration.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 9:
- Fix brackets

 drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 7d452f1afaae..d20e62c025ae 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -307,9 +307,14 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
 			   struct hantro_ctx, ctrl_handler);
 
 	switch (ctrl->id) {
-	case V4L2_CID_STATELESS_VP9_FRAME:
-		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
-		break;
+	case V4L2_CID_STATELESS_VP9_FRAME: {
+		int bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
+
+		if (ctx->bit_depth == bit_depth)
+			return 0;
+
+		return hantro_reset_raw_fmt(ctx, bit_depth);
+	}
 	default:
 		return -EINVAL;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
