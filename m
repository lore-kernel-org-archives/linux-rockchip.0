Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D7F3C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC89560F5A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC89560F5A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPgULiToa+SHuNPMCKst6yVuTp7FWfT0qT4KJUYkK8o=; b=hNJcZ//RmN42m+
	eGZm5yL2U6hHIUzXXCEoCL7oReLS7E3VYxGiSMlhXZwl8Lu++bAictknSP+35Q5bqDO8giD+qykUi
	cTc/+lP/87MlzjY9gGAdaIf5bMs2LWT5Q4PLLtOSKLHXUz10aUo4Dl97LTEwO1ZdyB4hsxID7WX8n
	Q2aoSMCFxnGgqIW1YFvO5xeKlOm3rVE+AcIYE3+9efESJz9evAx/TI4ZiMHoWoCyIZ1Tki3+p6L5g
	kpdYFdfFGyChj+RDuNcm5pUPg74c9rvgQIMQW0UJylOASsvs7V4OOjw4k/myOBwIHZAziSFbfF2Zk
	d30kZ+oNTrkFD3OS+bLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmlY-002KST-Nb; Fri, 08 Oct 2021 10:06:12 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmlW-002KQA-1v
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 10:06:11 +0000
Received: by mail-pl1-x62a.google.com with SMTP id x4so5865479pln.5
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 03:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KUHB0swnVu/KYbAl644YyqO7PSS/qaz1tm73DfYZaVs=;
 b=KjcoqE6YX7cIYNyMM5PYyjs3wF5Gr2V320ljZVdIb+8BUaW/8M5CCYKaLtzNoZGRUe
 uX7RLS8mMIbBVIyHfU4+FZU7qGeetDJtcCyahAW9TugFrTxmLr2rwzbIgcHNJDICBion
 2QHzwmrXqPVSsePpTXgSsGzmNzcRd3RM8c36k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KUHB0swnVu/KYbAl644YyqO7PSS/qaz1tm73DfYZaVs=;
 b=jHufx3R8ZIRIDgXMdkfF8tAQM86X8u2g3Ytiqok4pV8pr3StM5tcuZTqQ7q4Nk1fXL
 ogCw1CqtbUa2oGYTIHPGvuA3TWr/4ZZnW+CuatmPGEIzNBRp05IIMI0SpsDrUpJnyYEQ
 vdh3hXwRlkOAIPBOJfSLL0yG/cdGi92R0UcOrk18+cXC0PSQaKaJRs6D5sTMADNrwL5w
 pawrdZE7BQpMNP3IVWPasgX2yzZ8fWTzoJaXSim+g2lc1cgDH5da3aL1h8oH3n+6Lpkt
 kQsI/O1WVdBztbtbHmRmhVS0in3Z8mhyyPfpsq6r1hFJqe31RBKmJ+pSXKJ2qsLN7MAm
 kPAQ==
X-Gm-Message-State: AOAM5335/kcUJoK0HZ4WJ68DCsRxoeT9TZG+AQ8wX7O6+BYnQLNWZy48
 fdXpb4P5M+HBIj3aiKoRqDDkVQ==
X-Google-Smtp-Source: ABdhPJxkBdREzfd4W+kfYcgYxTKjv3LHKdMoe+zGfcZMc2uCzCDqxRU5AMNwaiX+5Rzy51jDyTfhwQ==
X-Received: by 2002:a17:90a:b706:: with SMTP id
 l6mr11379699pjr.200.1633687569261; 
 Fri, 08 Oct 2021 03:06:09 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:ad8d:f936:2048:d735])
 by smtp.gmail.com with ESMTPSA id a7sm2082255pfn.150.2021.10.08.03.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 03:06:08 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org
Subject: [PATCH 1/2] media: rkvdec: Do not override sizeimage for output format
Date: Fri,  8 Oct 2021 18:04:22 +0800
Message-Id: <20211008100423.739462-2-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
In-Reply-To: <20211008100423.739462-1-wenst@chromium.org>
References: <20211008100423.739462-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_030610_118335_CA126F41 
X-CRM114-Status: GOOD (  13.56  )
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

The rkvdec H.264 decoder currently overrides sizeimage for the output
format. This causes issues when userspace requires and requests a larger
buffer, but ends up with one of insufficient size.

Instead, only provide a default size if none was requested. This fixes
the video_decode_accelerator_tests from Chromium failing on the first
frame due to insufficient buffer space. It also aligns the behavior
of the rkvdec driver with the Hantro and Cedrus drivers.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 76e97cbe2512..951e19231da2 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1015,8 +1015,9 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
 	struct v4l2_pix_format_mplane *fmt = &f->fmt.pix_mp;
 
 	fmt->num_planes = 1;
-	fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
-				      RKVDEC_H264_MAX_DEPTH_IN_BYTES;
+	if (!fmt->plane_fmt[0].sizeimage)
+		fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
+					      RKVDEC_H264_MAX_DEPTH_IN_BYTES;
 	return 0;
 }
 
-- 
2.33.0.882.g93a45727a2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
