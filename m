Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4894BC54FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjQ16lSRfW9LZ6/05Rc3xnDn+BWMRO5FJ7mPYrV74/8=; b=kIcJwz89yY7bwC
	flnWeChODGEbWtXqO7HL7rXl3IW8YOID2fIWabaLRKGTQEHNyh8MEjQNo6yV7L+TUnlg8Jb4C591n
	uxh2I96VBQi6YlsjQ8CpepQID4ViJAZuXCXTEiwEklUz75Su0ZZEaT72rnGf3QB1pxJSXZbp7tjWV
	3nrZM/98hbm6b3qcRYLG2xwvK5vEKpoDcdZag03ngDqeAo+dqf2pE4s6QDlSlCoEmE1E4ll9mspQC
	0+l2tFiREwGgNnrDBtSXznKvETEQ1en22ecjfKNyUzVUsCuwIhDXY0q4BuGdzy8iED0cjpEJhGjiT
	3tqdjMwnxPSX5+TSRTWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebf-003rFg-1X;
	Thu, 16 Nov 2023 15:48:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebX-003r93-0z;
	Thu, 16 Nov 2023 15:48:32 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3C4316607359;
	Thu, 16 Nov 2023 15:48:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700149710;
	bh=FWoRq71D+3CZWvgfQamGU6bN0kUnW+MQUhCIbwvri58=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dmvWKIACvVm8j1f0ShhDkQUcTBQpus3oQZsJORrCeE0Zs22+DDxZtF123CnE5cdlo
	 LNAbDrYcaX3lN76LF2kTVRecK7MfohVzK29uMcu/sGkh1cjm3beTb+QhQ65gRpyRoU
	 vpGjAg1yyqacC6K4acERKOE9Z/K2PlMwNVjWxT7qD1ucqibzuZ/2YkNgus43Bw3VTf
	 Y3rNiyomHPbD8jBLEJbe99QkHFerTrbozpkaMu8yzaK/9AKlqLcFllDflm8IzGjayn
	 qOuP3b00Zp8E5sZm/im6xXR3kU6sDok8wz1JYCzBZNWT7vsUt8ZebTUtpVBIC5Iq1b
	 2q6bAj/bppDVA==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	kernel@collabora.com
Subject: [RFC 3/6] media: verisilicon: Improve constant's name
Date: Thu, 16 Nov 2023 16:48:13 +0100
Message-Id: <20231116154816.70959-4-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116154816.70959-1-andrzej.p@collabora.com>
References: <20231116154816.70959-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_074831_476903_A5ABB3B7 
X-CRM114-Status: GOOD (  12.17  )
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

For VP8 BIT(18) of this register is for enabling the boolean encoder.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_h1_regs.h    | 2 +-
 drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h1_regs.h b/drivers/media/platform/verisilicon/hantro_h1_regs.h
index 7752d1291c0e..c1c66c934a24 100644
--- a/drivers/media/platform/verisilicon/hantro_h1_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_h1_regs.h
@@ -70,7 +70,7 @@
 #define    H1_REG_ENC_CTRL2_DISABLE_QUARTER_PIXMV	BIT(22)
 #define    H1_REG_ENC_CTRL2_TRANS8X8_MODE_EN		BIT(21)
 #define    H1_REG_ENC_CTRL2_CABAC_INIT_IDC(x)		((x) << 19)
-#define    H1_REG_ENC_CTRL2_ENTROPY_CODING_MODE		BIT(18)
+#define    H1_REG_ENC_CTRL2_VP8_BOOLENC_ENABLE		BIT(18)
 #define    H1_REG_ENC_CTRL2_H264_INTER4X4_MODE		BIT(17)
 #define    H1_REG_ENC_CTRL2_H264_STREAM_MODE		BIT(16)
 #define    H1_REG_ENC_CTRL2_INTRA16X16_MODE(x)		((x))
diff --git a/drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c b/drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
index 05aa0dd9c09c..08c5079fbfd0 100644
--- a/drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
+++ b/drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
@@ -1226,7 +1226,7 @@ static void hantro_h1_vp8_enc_set_params(struct hantro_dev *vpu, struct hantro_c
 	reg = 0;
 	if (mb_width * mb_height > MAX_MB_COUNT_TO_DISABLE_QUARTER_PIXEL_MV)
 		reg = H1_REG_ENC_CTRL2_DISABLE_QUARTER_PIXMV;
-	reg |= H1_REG_ENC_CTRL2_ENTROPY_CODING_MODE;
+	reg |= H1_REG_ENC_CTRL2_VP8_BOOLENC_ENABLE;
 
 	inter_favor = 128 - ctx->vp8_enc.prob_intra;
 	if (inter_favor >= 0)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
