Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BF63E7B5E5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 10:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTdwReRy8RKJSipjyvZ47wqgoXdVLufLrQItvTUjjoI=; b=08lmp7bIZ5ZuT1
	Mb/WOqATvbY8+jYJRzKGbo8bEi4HOtlYo7uxBmbmihoH1PLf0KWacG61ABG2luGC6ZeemGrLKqPFf
	FnA2+9P9pNUKpDei+7mhxbj2EfxzcR9UNpe/RaU6dqHlO73VmgYIbMIXfBEQVV09DcF5P+ooWNWdF
	NG2qrn3QWbQPUQ31B3570ta/09D6yKGGeePZWKELPQgGfLPHKfZmNGk/OPlX21NgCjB7V17t/T0dE
	46y2ldfYnGP5jEd7Se9P5qkw6Yng4vbdoTbKDdvCP15v2tEnNRWhxx7wi267J0P5FOiYeBHd3PR7Q
	cMOGgmzG902Ww4q+0lbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnzGG-00HNUQ-33;
	Wed, 04 Oct 2023 10:37:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnzGC-00HNR8-1v;
	Wed, 04 Oct 2023 10:37:47 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 394A3871022388;
	Wed, 4 Oct 2023 12:37:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=bgESotg1ucUNSxBe+XGbEGaW9PYWluU0WM6A0IsNEdg=; b=Dh
	TkSwk68XxCzi7PobhB0rUzKN57p+5wFuuVF0eGrzAl9O2MONGD6dZYCoYDs5wHg0
	g02IODDZYqmmzIMwzdD/LUdYcd1Rx5S00w/1i2kUXnSbYpCNAXOc2GlBmbdZ3HLm
	ctRH8+ZVrSTB9jIY7eqtNFAbxmK524hwCTSXg5mjjrUWlVTMjqVg/wFqOZqLnN4C
	W29G6ar14K9YQ36dHyE+pxSWg6/WUXDg5R7NXWmKqDv24dC84CKjjLo/b5C7W0zZ
	Q3WHXdFqo9vnDxAVSYVOLryRCZJp69/bno1rSMpu9UHRGq95BeUmGOLBuHm6NaXR
	Y29qCeTOVd8y6uLy5+wg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3texmj69fk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 12:37:32 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AC88B10005C;
	Wed,  4 Oct 2023 12:37:31 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A12E2231510;
	Wed,  4 Oct 2023 12:37:31 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 4 Oct
 2023 12:37:31 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Marco Felsch
	<m.felsch@pengutronix.de>,
        Adam Ford <aford173@gmail.com>
Subject: [RFC 4/6] media: hantro: add VP8 encode support for STM32MP25 VENC
Date: Wed, 4 Oct 2023 12:37:18 +0200
Message-ID: <20231004103720.3540436-5-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
References: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_02,2023-10-02_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_033744_911343_FDFB391C 
X-CRM114-Status: GOOD (  13.50  )
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

Add VP8 stateless support for STM32MP25 VENC video hardware encoder.

Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 .../platform/verisilicon/stm32mp25_venc_hw.c  | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c b/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
index 0aac33afcadc..2176eccd1f79 100644
--- a/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
+++ b/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
@@ -87,6 +87,19 @@ static const struct hantro_fmt stm32mp25_venc_fmts[] = {
 			.step_height = MB_DIM,
 		},
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
+		.codec_mode = HANTRO_MODE_VP8_ENC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 96,
+			.max_width = 4080,
+			.step_width = MB_DIM,
+			.min_height = 96,
+			.max_height = 4080,
+			.step_height = MB_DIM,
+		},
+	},
 };
 
 static irqreturn_t stm32mp25_venc_irq(int irq, void *dev_id)
@@ -120,6 +133,13 @@ static const struct hantro_codec_ops stm32mp25_venc_codec_ops[] = {
 		.reset = stm32mp25_venc_reset,
 		.done = hantro_h1_jpeg_enc_done,
 	},
+	[HANTRO_MODE_VP8_ENC] = {
+		.run = hantro_h1_vp8_enc_run,
+		.reset = stm32mp25_venc_reset,
+		.init = hantro_vp8_enc_init,
+		.done = hantro_h1_vp8_enc_done,
+		.exit = hantro_vp8_enc_exit,
+	},
 };
 
 /*
@@ -137,7 +157,7 @@ static const char * const stm32mp25_venc_clk_names[] = {
 const struct hantro_variant stm32mp25_venc_variant = {
 	.enc_fmts = stm32mp25_venc_fmts,
 	.num_enc_fmts = ARRAY_SIZE(stm32mp25_venc_fmts),
-	.codec = HANTRO_JPEG_ENCODER,
+	.codec = HANTRO_JPEG_ENCODER | HANTRO_VP8_ENCODER,
 	.codec_ops = stm32mp25_venc_codec_ops,
 	.irqs = stm32mp25_venc_irqs,
 	.num_irqs = ARRAY_SIZE(stm32mp25_venc_irqs),
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
