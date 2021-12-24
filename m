Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2813C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66OF7PR/pjnvdOx7UyEEB/c9vZZh8qzZisIbl4GbusQ=; b=Sr4jHUC+dtdHIH
	qT870b7teyfoLi858bkM0Cm/QAuLfX7ylIQ/u35AhlkPaJXq+uM8iyYNoipHCSCf+Xj3Un0hTdIuT
	Rm3CQcYptk1fZraixreqCxVo/+ZWA319FND4BDlRei09z0tUkZmHDYzJJ/NY7E+QWdjbw47zR75GL
	8qC4zo57fnxU1uMXbgVNreQoUYov4X/rJ1lDYSIL6sC5epzGeaQegAM5yf0tZhhvpd1bbL4PNp3Q/
	+BHlTDn9XJQEqo+ShsMZXlFeIg8PtXQi5m6XL6HWIIyf0oNEmL/2yL1KAWXBnO3juzIeW2V/cHANC
	QsfD2b5nzkBhrZYcegFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAk-00Dwf4-OD; Fri, 24 Dec 2021 08:43:30 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAh-00Dwav-45
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:28 +0000
Received: by mail-pg1-x52a.google.com with SMTP id r5so7114740pgi.6
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V96MCrbuR3Cmo1QVQzxpqsi+EQJPA/QIWspHhrAknFM=;
 b=ReCdFld7cLRApbe6SnnREZYfmIU0RcbRDBmmnqe94U4ghsTmrWoWtRGyuVcdLv0Cvh
 koAodEaY+50Vg+QPhpVBofstR7JJJCw53QBki/gDLSV6kp56h4qKqd+HPN+9B5mLWbP8
 sda5TpVrDtXTGEzwCEUWPd15aRIhv+frOnbD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V96MCrbuR3Cmo1QVQzxpqsi+EQJPA/QIWspHhrAknFM=;
 b=rRXovvScJlkhxBr1s3k+9WjyHDhKdaYWFgo12AzoTms6LUpraxpPS8kPo9UxckZAdU
 SuYcnowEXumV8DlUBIukUuF8ZIhBsL3tn3jmiUNuhjz2GR759KCdd22XLuZhadXRV+sh
 KkEDHVH9K7YpEzNJuOsaR4JvCAY3m8AtbUIu/lQfu8O666jmBoldgll2ihg+th/tNONN
 Dv4nnIA6+JNzSKRHPLddfMM7XukKZcWxGr7mokaEaNDhkt2gTrUeEw6VyhEaAGgqsdVK
 hRges8KqKmCUg0QIRRthbtaTRFYZ1jlr+u4RjM9zs84Ti+rtDJsVECK1G63wdyVYBH/l
 2ePw==
X-Gm-Message-State: AOAM531DfHUsqj6+bhcCQlPp5n6N/6NoWAge1XHth7kKTnrrRmCefJdG
 w8WIfbVvGUBYMXz0CTG99AKKJw==
X-Google-Smtp-Source: ABdhPJycSb22GWmoTlWD+t4pDQjqs8Efzd6cRWdANOKAxMm8MlvU3BBpMjxjkO9FubRD/Q7BSmpdaA==
X-Received: by 2002:a63:6ac9:: with SMTP id f192mr5281162pgc.79.1640335406365; 
 Fri, 24 Dec 2021 00:43:26 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:26 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 4/7] media: hantro: jpeg: Add JFIF APP0 segment to JPEG
 encoder output
Date: Fri, 24 Dec 2021 16:42:45 +0800
Message-Id: <20211224084248.3070568-5-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004327_249178_D4CBCDA8 
X-CRM114-Status: GOOD (  12.56  )
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

While the V4L2_PIX_FMT_JPEG format doesn't specify any requirements for
the APP0 or APP1 segments, it would be nice if the output is JFIF
compliant. While some programs can read JPEG streams that aren't, some
guess work is involved.

Add the standard JFIF APP0 segment to the JPEG header, so that the JPEG
encoder output is JFIF compliant.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_jpeg.c | 21 +++++++++++++--------
 drivers/staging/media/hantro/hantro_jpeg.h |  2 +-
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index df62fbdff7c9..7d4018bd6876 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -12,15 +12,15 @@
 #include "hantro_jpeg.h"
 #include "hantro.h"
 
-#define LUMA_QUANT_OFF		7
-#define CHROMA_QUANT_OFF	72
-#define HEIGHT_OFF		141
-#define WIDTH_OFF		143
+#define LUMA_QUANT_OFF		25
+#define CHROMA_QUANT_OFF	90
+#define HEIGHT_OFF		159
+#define WIDTH_OFF		161
 
-#define HUFF_LUMA_DC_OFF	160
-#define HUFF_LUMA_AC_OFF	193
-#define HUFF_CHROMA_DC_OFF	376
-#define HUFF_CHROMA_AC_OFF	409
+#define HUFF_LUMA_DC_OFF	178
+#define HUFF_LUMA_AC_OFF	211
+#define HUFF_CHROMA_DC_OFF	394
+#define HUFF_CHROMA_AC_OFF	427
 
 /* Default tables from JPEG ITU-T.81
  * (ISO/IEC 10918-1) Annex K, tables K.1 and K.2
@@ -144,6 +144,11 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
 	/* SOI */
 	0xff, 0xd8,
 
+	/* JFIF-APP0 */
+	0xff, 0xe0, 0x00, 0x10, 0x4a, 0x46, 0x49, 0x46,
+	0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x01,
+	0x00, 0x00,
+
 	/* DQT */
 	0xff, 0xdb, 0x00, 0x84,
 
diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
index 035ab25b803f..f33c492134e4 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.h
+++ b/drivers/staging/media/hantro/hantro_jpeg.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 
-#define JPEG_HEADER_SIZE	601
+#define JPEG_HEADER_SIZE	619
 #define JPEG_QUANT_SIZE		64
 
 struct hantro_jpeg_ctx {
-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
