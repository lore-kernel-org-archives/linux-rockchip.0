Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8CA9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5MEr8gZe6+1MTL6+QeMEb6T3ThguNEKSHdM0MQWQxo=; b=ho4eo0gXfF8MUE
	TfVq14Q17xq2IN47HtDg6OBbd8aLe/+k7KGqxMENM1kZRyN46k1hruxto7bBoXRxnCu5O+nrx5I6k
	vFoUSBd8gft86ehFRQW9rGdzbXQ/S5UTU5OG0ciV0qzWm+2M12P6oVeehXYBBcLXOin7YYq6a0Dyp
	5TocWaaCmbT/co5BmZ77mezcGOIMVCzqp2xxcjxz18mvkSGC/HNGxodC1R6YjsC4t7JP3AFubmlTx
	KxQgZ0arahO9hHuIGJ/X1aXW31o4Q96h0SpyNtajuWQ5AfgaOhV+9Ff4N1CK6/vl5UL5H6qb/iqnH
	plhD5PipV0oGeQydwyXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5leb-0035Ln-HC; Fri, 07 Jan 2022 09:35:21 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5leX-0035Hx-Sx
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:19 +0000
Received: by mail-pf1-x429.google.com with SMTP id v11so4759985pfu.2
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fjiy0XooAZ6+kW7wDLSv0ZRGyBQbrxYjLs1RiRmdLbE=;
 b=QvJo4nFH0gD8APv38byE5spLLGm2EstyxyTk2J3FFBpW7w7wx3d58C4oK9BSis/uWT
 V1neR7ko1JCTXSYbOsosrDSHBLVmVjSezPdgElFoRM5iWaBNNSSD5HqnNWw1baqQnlWR
 Dfu9ZPxAq50562bbUX1Ev9gRjkuCgBJ5lrK+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fjiy0XooAZ6+kW7wDLSv0ZRGyBQbrxYjLs1RiRmdLbE=;
 b=kQxIxLfppElrZc3Nt5pbOIxiwAVkLScN2aKAgxQXuHKI+Ngwoee3cVVoOz3q5fGwKU
 sC6VVCgdpvMrACrlmKkY8gzr6Za+byRree2TzOKQ5zMwNim0GlSc6vEQE6ZsmIu9wDSv
 owqdB9o3HBbb3CQdW8FYLsEVRNdteaa9hwQxjsXU1d4brJuSs41Yw2ze05s55GEYUWyd
 sxUHvZw4zPy4EQ4rk5QhPz3h6pbxNiOSj/PJwImG+XOMPVyo+h0XcJHWhKMbc6XWJpvg
 cPz9PHcg9yD1no4vJkx4rdUWOaLO8XZ3FsHY/viriz3XMzu1JzU2EYEF3oIY/U7bLF20
 E1kg==
X-Gm-Message-State: AOAM5336SIPMA8TNrtGFlvRBjMvMGoDwqKauYugR3WEp+TmJvsAhNdAk
 6lFj3KlatfWdURews75v4XMzyg==
X-Google-Smtp-Source: ABdhPJwXKfTmxMvstQkseMraIWF9HRswARtFjx8amtQ1SIu1hk1yMo3q40/yRoCkMDPgQvU/zWmg0Q==
X-Received: by 2002:a05:6a00:1a4f:b0:4bb:113a:677c with SMTP id
 h15-20020a056a001a4f00b004bb113a677cmr63742556pfv.63.1641548117149; 
 Fri, 07 Jan 2022 01:35:17 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:16 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 5/8] media: hantro: jpeg: Add COM segment to JPEG
 header to align image scan
Date: Fri,  7 Jan 2022 17:34:52 +0800
Message-Id: <20220107093455.73766-6-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013517_972268_F5DA85D1 
X-CRM114-Status: GOOD (  15.64  )
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

The JPEG header size is not 64-bit aligned. This makes the driver
require a bounce buffer for the encoded JPEG image scan output.

Add a COM (comment) segment to the JPEG header so that the header size
is a multiple of 64 bits. This will then allow dropping the use of the
bounce buffer, and instead have the hardware write out to the capture
buffer directly.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_jpeg.c | 23 +++++++++++++++++++++-
 drivers/staging/media/hantro/hantro_jpeg.h |  2 +-
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index 7d4018bd6876..e63eeef3952d 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -6,6 +6,9 @@
  * Copyright (C) Jean-Francois Moine (http://moinejf.free.fr)
  * Copyright (C) 2014 Philipp Zabel, Pengutronix
  */
+
+#include <linux/align.h>
+#include <linux/build_bug.h>
 #include <linux/dma-mapping.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
@@ -140,7 +143,7 @@ static const unsigned char chroma_ac_table[] = {
  * and we'll use fixed offsets to change the width, height
  * quantization tables, etc.
  */
-static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
+static const unsigned char hantro_jpeg_header[] = {
 	/* SOI */
 	0xff, 0xd8,
 
@@ -247,11 +250,29 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 
+	/* COM */
+	0xff, 0xfe, 0x00, 0x03, 0x00,
+
 	/* SOS */
 	0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02,
 	0x11, 0x03, 0x11, 0x00, 0x3f, 0x00,
 };
 
+/*
+ * JPEG_HEADER_SIZE is used in other parts of the driver in lieu of
+ * "sizeof(hantro_jpeg_header)". The two must be equal.
+ */
+static_assert(sizeof(hantro_jpeg_header) == JPEG_HEADER_SIZE);
+
+/*
+ * hantro_jpeg_header is padded with a COM segment, so that the payload
+ * of the SOS segment (the entropy-encoded image scan), which should
+ * trail the whole header, is 8-byte aligned for the hardware to write
+ * to directly.
+ */
+static_assert(IS_ALIGNED(sizeof(hantro_jpeg_header), 8),
+	      "Hantro JPEG header size needs to be 8-byte aligned.");
+
 static unsigned char jpeg_scale_qp(const unsigned char qp, int scale)
 {
 	unsigned int temp;
diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
index f33c492134e4..0b49d0b82caa 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.h
+++ b/drivers/staging/media/hantro/hantro_jpeg.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 
-#define JPEG_HEADER_SIZE	619
+#define JPEG_HEADER_SIZE	624
 #define JPEG_QUANT_SIZE		64
 
 struct hantro_jpeg_ctx {
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
