Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D13E7C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUrOWyV+sXL5XP8CxrWbupeSIzLdgP7u5OqSpf/5/sw=; b=Guxdb+JiRiqQss
	x1M1tDEw6hTxd6f4mTRvXouLX6RRFf0q7RQB2p2MYB8kzYGtP38IJtodCNIcdqGuU5YQwD0Ex5MAi
	Wu164n/WRGpKU0mhIEuMpvUxvYnAZZBqJ2j1cTn5OBjlEQ4UHti9f9KJCMcKcvaXKh6tLFkBuyzYh
	pd3LsaSrn1QzDlXY9WCXxHFtzxYqq3fqASgaoaUyRJ6dfMP/PbXA+JRt+EJGXzIYmS6EYygZ7/GqF
	EscIvV+QQP21w68+4WqNjV4v4vbaSDn42PzzqHzmjXIw9hZUy9JF0WmjwJvBIgDzqU9AREUHAlxUt
	Ui/12usntvXcn5sb1HLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5leZ-0035Jh-D6; Fri, 07 Jan 2022 09:35:19 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5leV-0035Fv-MW
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:17 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 r16-20020a17090a0ad000b001b276aa3aabso11456718pje.0
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GMnNxOVPdXzMfPknulPEnJPfMLKNc3bQyvDsss2ILoA=;
 b=SQOfsqu/dTsrW4Rh30S050hhBuAno4qMY8keBxE7AeP2blOAkVtr8166QXlMCquZbL
 EXE7PCbtLHdRGuJlnaekl8QvBtSA+T2fhNfa3f7AIgIiaUnRst4YARLjvaLh3XXln5dz
 FXS+1C8FFj6VMVZlufqphj5b4ErQeSQ/QrmiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GMnNxOVPdXzMfPknulPEnJPfMLKNc3bQyvDsss2ILoA=;
 b=R0HjGO6OGkOfGAtav3Xr0hhp2PcD8QOBbBJxzyQpiKwgOuXUkHOVIE5b/B1KS/u2Gm
 nqQkLhTlldYWp7OG/8K+yrh0J65ELjBtBaeYwi1fWjef9EQ/OF+uLVUFBqYbn0KmsNT1
 CRyFeEQYIL8qrp3/uZDsLDPTg2df3IZuFgIHJHH5Kljxr1M+XBpjeOyuTFs3WF5gZQdi
 Chl7dn9tg9MVrxzHESMifEg43mfEaX7LJsRa90fMeBjoInuPZuenzN+JbNrYj8DSr9Y1
 29KFYU42rYMKUsPV/IvYszxa1Hhhq7qwU4StHwdF790GeNWyt4l6ggTnk5+b54keN5dK
 0tQg==
X-Gm-Message-State: AOAM532SY1kY4kQxse++pzCrGO++SJHZ2boHlZ1JNyvSXzYVjWY1KUnC
 /PsAki7UuKzGLCDteySiwsqeCg==
X-Google-Smtp-Source: ABdhPJz2DHgRtXL8o0aUKFZg+E1A4xv2/O6qvFArtKHRvQeL73J/2Bshk583jXCoFWRB9NYatEWTcw==
X-Received: by 2002:a17:902:9a8b:b0:149:be04:40ab with SMTP id
 w11-20020a1709029a8b00b00149be0440abmr21318112plp.159.1641548114894; 
 Fri, 07 Jan 2022 01:35:14 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:14 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 4/8] media: hantro: jpeg: Add JFIF APP0 segment to JPEG
 encoder output
Date: Fri,  7 Jan 2022 17:34:51 +0800
Message-Id: <20220107093455.73766-5-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013515_867173_7A8F40C8 
X-CRM114-Status: GOOD (  12.74  )
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
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
