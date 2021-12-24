Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0AACC43217
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qjm4FJVEu+l/hoOJqq2gbLPJWqrbVDyqxqh7jIyEUy8=; b=RoOgNSSJJZ5q9Z
	Rv0qfq6wOB+w4ePgBHnSGZmvtlOO1V6rPzhxSSdTG3VusC90wguh5ZwaDYpMFdbD5BWxlI18K6yGY
	PQb6KPPKXF/1lskafYkSFE3yQhV4BV5W3GxTi4PJlC5UiYfFvZAn1Z2nH7TFlmafacY2tkAPSNR6n
	1+5Vhu+/kyW/j2nMeu8b9XtMtin1bZlEeCgAYxrH5xWfrKe0ceuQxwLiUH+Vrj34IAocXPDcPOIDC
	gHLJjyJ4goMRFTM/bKge9irSZoWkJiHuUATVVBNdI1Ln5etxcq1qFAWgupZrj0FfsKSKOYIoCKkCP
	zfcHBqtRNPpPLqay2F1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAe-00DwZ4-Jh; Fri, 24 Dec 2021 08:43:24 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAa-00DwWh-SS
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:22 +0000
Received: by mail-pj1-x1032.google.com with SMTP id co15so7166783pjb.2
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mlbvlnlc5ECOuwY+fmdHWmlq/HvKa+/AWyi6jrBEyVk=;
 b=QUpeyU4ozzEExZYC53GPCIo345mlX3Up0uMIXU9ol7Y3xE97WX6Yps8UrzK/bu8zwf
 GDUjygz/zZAJ8SuoQ0g9WTSASjDii+9Pn+4W6GvfpVSQ3btRM/LEpIT1nR6RbX0X4cfL
 zD5wOCoJ5KNixvc+PVlf52w8CTdudb5xD648c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mlbvlnlc5ECOuwY+fmdHWmlq/HvKa+/AWyi6jrBEyVk=;
 b=oy9hwvNJCbe+U46/+6eItSuWfSFpPzCI7LpEle7Bx6hT51VNWSVBShJ3+667Srkk3X
 1S/YT/RaCqrPVCnB5RgCSBdesM+FW7zggsAVr2lT6rjAcfsJ+e+P4CRW5oQ0JKD4KTtU
 TUkMn2npBCj2TBHGbXuKlGQ5YII01xgB44JaS6aAvCCJ9p9JzDpng8OOEgJtBVbHUm5b
 xZF371tQSQbOgYgnadmRtIUFRUng+IuVNsvCtCcwvqcx4WaG+WtU84LB3hfXPIYjS4Lb
 ULzywrfssK1vww/Ale+VW5On2grbB5G+7bUi7ZzlsRX8rEv7ISFkmYPfqLzB39QcN388
 lemQ==
X-Gm-Message-State: AOAM531dixumoAuHH9YuYZjdc6RY44yuf6JAOVyUCy869hBNckGM7STU
 xOo5BzE3S94Zn/a7T6LH3lwWC7vpniufgg==
X-Google-Smtp-Source: ABdhPJz+m1CkCeHpGL1ORDi92M2Qxm8IPKb08iVIJbZZGhbQv7LRalwXM/qB2WNnXDeTOo0535Idqg==
X-Received: by 2002:a17:902:8346:b0:148:b843:751a with SMTP id
 z6-20020a170902834600b00148b843751amr5940338pln.141.1640335399358; 
 Fri, 24 Dec 2021 00:43:19 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:19 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 1/7] media: hantro: jpeg: Relax register writes before
 write starting hardware
Date: Fri, 24 Dec 2021 16:42:42 +0800
Message-Id: <20211224084248.3070568-2-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004320_941508_186A81F2 
X-CRM114-Status: GOOD (  12.72  )
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

In the earlier submissions of the Hantro/Rockchip JPEG encoder driver, a
wmb() was inserted before the final register write that starts the
encoder. In v11, it was removed and the second-to-last register write
was changed to a non-relaxed write, which has an implicit wmb() [1].
The rockchip_vpu2 (then rk3399_vpu) variant is even weirder as there
is another writel_relaxed() following the non-relaxed one.

Turns out only the last writel() needs to be non-relaxed. Device I/O
mappings already guarantee strict ordering to the same endpoint, and
the writel() triggering the hardware would force all writes to memory
to be observed before the writel() to the hardware is observed.

[1] https://lore.kernel.org/linux-media/CAAFQd5ArFG0hU6MgcyLd+_UOP3+T_U-aw2FXv6sE7fGqVCVGqw@mail.gmail.com/

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c        | 3 +--
 drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 1450013d3685..03db1c3444f8 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -123,8 +123,7 @@ int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 		| H1_REG_AXI_CTRL_INPUT_SWAP32
 		| H1_REG_AXI_CTRL_OUTPUT_SWAP8
 		| H1_REG_AXI_CTRL_INPUT_SWAP8;
-	/* Make sure that all registers are written at this point. */
-	vepu_write(vpu, reg, H1_REG_AXI_CTRL);
+	vepu_write_relaxed(vpu, reg, H1_REG_AXI_CTRL);
 
 	reg = H1_REG_ENC_CTRL_WIDTH(MB_WIDTH(ctx->src_fmt.width))
 		| H1_REG_ENC_CTRL_HEIGHT(MB_HEIGHT(ctx->src_fmt.height))
diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
index 4df16f59fb97..b931fc5fa1a9 100644
--- a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
@@ -152,8 +152,7 @@ int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx)
 		| VEPU_REG_INPUT_SWAP8
 		| VEPU_REG_INPUT_SWAP16
 		| VEPU_REG_INPUT_SWAP32;
-	/* Make sure that all registers are written at this point. */
-	vepu_write(vpu, reg, VEPU_REG_DATA_ENDIAN);
+	vepu_write_relaxed(vpu, reg, VEPU_REG_DATA_ENDIAN);
 
 	reg = VEPU_REG_AXI_CTRL_BURST_LEN(16);
 	vepu_write_relaxed(vpu, reg, VEPU_REG_AXI_CTRL);
-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
