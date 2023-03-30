Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71E5C761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6BXKbOAjEkMiwDNRiUdE03QDaLFGBMhFw34MLo/8e4=; b=c5uoOhcuLlHQsU
	RCG3jbfX7fxGL/SuZo59qxTje6FlJ+U1K4pPNnwhQQVF4Rq9C0w51bVJ8yYj6UYqYlCaXMZ6FYuOX
	b/Fooho8Pi7DabcDlt837Hhmg3XDhgXmAtfCYaHocp8eV2zOQRYCUljsnp5L2da4zwBTFyNvCf4en
	A4c3XvmqssP1Qo00pRPhhRX6yCTm78oLtvpZgZFUPGcgfC+OiONt0p39HyCaSrW8l/8s14zY1/dUL
	ggd8jyt98IkLxkHHw8ZvHHoI8oBeqgM1J2oTSid3yWrzasaI3EYs3QJf5GMnNStMrqM+d+LmIgw2c
	McHcXrS7QI6qYSdr/VBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuPW-004KjO-0K;
	Thu, 30 Mar 2023 15:41:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuOZ-004K7J-0r;
	Thu, 30 Mar 2023 15:41:06 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:792c:96d5:14:366a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A5303660318B;
	Thu, 30 Mar 2023 16:40:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680190854;
	bh=efIIMyuWo/5TTgMlaw7lz63p4NVD+adWtS/yB46zFOY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OfdxxC+PZyphPhkUv8UEJwGHpSxjKIPN5vAOxujOJHCbcSsAfbtek04Vl7EfqDbvZ
	 zuyrFok6ET642Av6lLoEKNatP4WMC25RXAmCYedIJd6YO9+jOAb1ymvbeVzAVeXPAl
	 7Ub0lv/GJNsxGYp40qBCsEiTPVnnQm+4FVZ3+oAkIyNzPtZp8ASanGmE+1mwfbAZcR
	 PtPSl80khfwpq9FqSIxrA64D0xHDTKe0ElY0JAtexJkQhqdCGwAxMHkBp9LALI7ir7
	 XGvNejSFY5iAltychEIKI75ZPOck5UbtKm4SaJ+xNtg1Hb+aAWV3drQYx3VOxRqYrN
	 9sUoBgJFXak/A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 05/13] media: verisilicon: Add AV1 decoder mode and controls
Date: Thu, 30 Mar 2023 17:40:35 +0200
Message-Id: <20230330154043.1250736-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_084059_462835_0AC9BBB7 
X-CRM114-Status: GOOD (  10.37  )
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

Add AV1 decoder as new decoder mode to Hantro driver.
Register needed AV1 controls for the decoder.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/media/platform/verisilicon/hantro.h   |  3 +++
 .../media/platform/verisilicon/hantro_drv.c   | 21 +++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 2989ebc631cc..61480825b856 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -38,6 +38,7 @@ struct hantro_postproc_ops;
 #define HANTRO_H264_DECODER	BIT(18)
 #define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_VP9_DECODER	BIT(20)
+#define HANTRO_AV1_DECODER	BIT(21)
 #define HANTRO_DECODERS		0xffff0000
 
 /**
@@ -111,6 +112,7 @@ struct hantro_variant {
  * @HANTRO_MODE_VP8_DEC: VP8 decoder.
  * @HANTRO_MODE_HEVC_DEC: HEVC decoder.
  * @HANTRO_MODE_VP9_DEC: VP9 decoder.
+ * @HANTRO_MODE_AV1_DEC: AV1 decoder
  */
 enum hantro_codec_mode {
 	HANTRO_MODE_NONE = -1,
@@ -120,6 +122,7 @@ enum hantro_codec_mode {
 	HANTRO_MODE_VP8_DEC,
 	HANTRO_MODE_HEVC_DEC,
 	HANTRO_MODE_VP9_DEC,
+	HANTRO_MODE_AV1_DEC,
 };
 
 /*
diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index d20e62c025ae..74641c972f1e 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -525,6 +525,27 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_STATELESS_VP9_COMPRESSED_HDR,
 		},
+	}, {
+		.codec = HANTRO_AV1_DECODER,
+		.cfg = {
+			.id = V4L2_CID_STATELESS_AV1_FRAME,
+		},
+	}, {
+		.codec = HANTRO_AV1_DECODER,
+		.cfg = {
+			.id = V4L2_CID_STATELESS_AV1_TILE_GROUP_ENTRY,
+			.dims = { V4L2_AV1_MAX_TILE_COUNT },
+		},
+	}, {
+		.codec = HANTRO_AV1_DECODER,
+		.cfg = {
+			.id = V4L2_CID_STATELESS_AV1_SEQUENCE,
+		},
+	}, {
+		.codec = HANTRO_AV1_DECODER,
+		.cfg = {
+			.id = V4L2_CID_STATELESS_AV1_FILM_GRAIN,
+		},
 	},
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
