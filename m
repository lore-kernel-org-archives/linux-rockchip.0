Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A85E4C636D6
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 09:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee6dQibLn+lljJXOMhZDwXWzzGzfkVJbH8QhfKT/BnE=; b=nd4PrlMJteOkqq
	Gr9UfqokFj/4rMQomrpSi1j8UQDN30eakVhpePSuR2T5+Dwitw4kvVqArGfpPoeKw6RFvDVRo49+e
	MC1hhcdUuU4qC/b01SbW0RbcU2g/VteW/uPKM3lnOEFMW4kdM63Ibbqhp6QTqQ2KpfMps+aKm7w6v
	I5M/qmv7Yb/JmfKtEi9KMrY8FbPhWdVe9Do3HW4Fub26EzxYzvdgDZbldOmF5+2k3wqnnsOC+jy8l
	bf0FVVNiXUltKdzMMtQ34bQhx8+iHw3E7N7nh4GbfPX9sVDg8CCrr+5IXdy31O+tpshzpkTOtJpMG
	crAb/KESa+glKfMe81MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsCx-0018Rs-S5; Fri, 03 Feb 2023 09:18:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBX-0017XA-LE; Fri, 03 Feb 2023 09:16:45 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d413:5f9c:fc3a:208d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B621D6602F16;
	Fri,  3 Feb 2023 09:16:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675415798;
	bh=/fZ2ALvuScrtz8aAPnoLovGKMZcYgk0hx4olwjLRTA8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W60lwyM/fIAqN4VdY6txRltfCyqurO225+2II7kNOsqVuiJRpkPUU54d5c7x3AR2j
	 heu3XjIwrYJvny5no8lXojB3AUyDOr8LmDCwwvG0ZTu8BnCABoecEvKLhSMQ/jAxZ1
	 2Zdl12sHiLUnakZx1r+WBMImQgfTGY90tElVnz9RxN+ZBVVzSMkw0urJe5ATaMCy9j
	 fASrdoiT9JSTV5DVOqcOL78w12l8Lvc/7L3RquN2bdMCyNXIAg2klr18481DepKNy1
	 2iw9i+vf27LIS6dt7xOGTFoE785HiD+VXsmoyn91R4ZZ9+pUJPX+K7CaLNu073VUSn
	 Tz+O9hbbczv7Q==
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
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 6/6] media: verisilicon: VP9: Only propose 10 bits compatible pixels formats
Date: Fri,  3 Feb 2023 10:16:22 +0100
Message-Id: <20230203091622.127279-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_011643_861265_D25F753D 
X-CRM114-Status: GOOD (  11.34  )
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

Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index fa31b200b097..1c4b90c905ea 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -308,8 +308,14 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
 
 	switch (ctrl->id) {
 	case V4L2_CID_STATELESS_VP9_FRAME:
-		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
-		break;
+	{
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
