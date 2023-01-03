Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A25C53210
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 18:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9n2QY2mFTI1Wxg4efpGsoAlZELht3sHvKXeCM/+Q1o=; b=UJgglqj8+vlUEp
	rFmSSJN9+nCkZmfc5gAhkfqsxXoM0jrLqUym0bgXFR2k8xGSF6d3Q3ct0y+cFu0WbKiFzER7z7APm
	DldhzgauwGv3Z/nD+9EcXMLw2gtkI7HQHR18LAcF9Gb6KetGSB4shKpDaifG9vDlS2zhCl2lmb/z5
	bGtTZOW4pCFnZeG6267nTXTt9YhdOOD3N77+zHTK1P7yoOhWdzm/26QpEuZMYoOXbuwGQtC7he4+h
	ESwJkPZEuQLx9zmcxdXPBi6ILkxz0V7FwuPUz1Do6iRbdjNMXPqC2XBiHierBvbviji32l+SwDHAR
	UQcqDlXF/2sFepY+pR5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmJk-0042G7-2c; Tue, 03 Jan 2023 18:47:20 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCkfB-003ByA-VQ; Tue, 03 Jan 2023 17:01:28 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:abfa:cf23:1e4e:2b14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE66C6602CF9;
	Tue,  3 Jan 2023 17:01:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672765272;
	bh=1ktFrG0nzxksnbvkGv6J+tRj37JgRFIsxn3noRzsP2s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JBJvQ7xLkim/PUnRbZJmxq6xt5xj0uzkz4vI2eLs9kN2ZFnii9fcPaCYsxj37f9z3
	 PpjovAX+CHStNWAT166oZTUezPJGjJ5cSyZW5oj4Zzsn5Q3Yi7+WgZvRXAoqu5J4C5
	 /fBkECyl/v5F+XV4Y2DFclZu4SK9d+KtOY1WKiCgTGSSXw0bYlq0Yf+f95Cfi3jN4T
	 zzdDRixRDGTCyt6I3JrXnbplEbS2m5J2OVUVNcZFkDxiDg624A7Qq+/QMQYBYLauZ2
	 AhS00u/sZ7cBh9GRNNsKwsTNDK+ehrTq1Gz4vIY1LaK/41eoJi4NZ/OWgLDnNaOEXy
	 H9Owzmc0tinrw==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: [PATCH v2 05/13] media: verisilicon: Add AV1 decoder mode and controls
Date: Tue,  3 Jan 2023 18:00:50 +0100
Message-Id: <20230103170058.810597-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_090122_221262_1B52E76F 
X-CRM114-Status: GOOD (  10.98  )
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
index 8cb4a68c9119..4500e1fc0f2c 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -498,6 +498,27 @@ static const struct hantro_ctrl controls[] = {
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
