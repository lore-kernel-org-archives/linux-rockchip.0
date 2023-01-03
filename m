Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 899D2C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 18:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOP3sNRrFe4N74IftqOd6pjIhPpjILQd1WmFIpIK+Yo=; b=IDdwX2Ne+Nea6H
	Efg4MVwK2FGc10LD9UmkXTB89HQCdMBSwltrsILtVNC0xo6ZJIl92PKqw0a6tCI6M6IfOwBK1waZo
	8gzyPOdOJDs6irBF204B/fpM6i1JIADq83Y1vzKO0bZhRy/wkGTW5Rka7yXS+ktQyPCT3PN4kV3j4
	0Z1WzD+V2QpHAAPIQGdiIOC+NDWuoEoGDWiAcduhNI2M7IQqrCa2w9NdusG15G+FS9zozGtTzJs7h
	h+RyLp5Vyz99g9IoRX6hGuqmK/hpT4Ziui7cWaFCNB2MiUDsOSbXzurDa96qW9CpojPo4N/yQjr6q
	+ZXDDiGH1tdDtix9WpNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmJJ-0041yC-5G; Tue, 03 Jan 2023 18:46:53 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCkfB-003ByM-Tb; Tue, 03 Jan 2023 17:01:27 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:abfa:cf23:1e4e:2b14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B43AE6602D0C;
	Tue,  3 Jan 2023 17:01:12 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672765273;
	bh=hK5ho7sqz6YdWfEyVAdpQFOjW5xXjqXVPgQmWV4hD5E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Twcm4g/cthJVoXyWksbRiX7y8N/ltFrn0H2WTwgaY8wpg2XggffZHTU8Rz/VX/ywZ
	 cnabJ/peXL36mzZE72/YW6PO7ENGu5GW1TU5NEo1pMoRLRRceO7FPF8gZEcIZHv9SD
	 DgMeW79FUJp3sGOhrQhl9pTp0FK+VD40SwjjBHArfZb0Ka2AVCp3vbm57SIeQC8476
	 R70tH4aTi1OZfMqPBTvioseq830oZFGAQCnw0TCv70te/LXp5yUH5leeHZ4m6PhMzZ
	 w0ALoSgZ0VyIYf0lwaPuWDStazCO4F3oKGzlTvtm5Vfp130EdtCq2rp7BVwbuM2Jb2
	 dl8MLLvsJ6Aaw==
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
Subject: [PATCH v2 07/13] media: verisilicon: Check AV1 bitstreams bit depth
Date: Tue,  3 Jan 2023 18:00:52 +0100
Message-Id: <20230103170058.810597-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_090122_132749_7DC7CC55 
X-CRM114-Status: GOOD (  12.49  )
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
