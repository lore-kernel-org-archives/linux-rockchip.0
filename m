Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D4D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nh09MF06ysl/A7c0LB0bMWU29Lx4quiiQwSTGFkqmY0=; b=rrU+0mz0jq2tpm
	KeO1TWOeEOMyC7VZDJbXJzX25kDOl8S63mJBO2iEfnhp574+VGwm6Mpy3FsNVmyQ7nMDbe1VnAEZC
	puTPeJkzlqR3B+UOJFoesiLxq5D5enq7hPuAThLD8D/Cp2IQCuLZsfZ301HyQdY12UdbE6GblSotL
	rnVu4V82a3D8Nx+EWZJowYAq5Jot6ZofoEtPds2CU7YPatKLC0KumCaeCGxJorBqvwwtxbYf7ubXC
	4Spig536+wiathpmU0yHvnT1eBKIZ/Q286v5cNqWnhGu4/5SKcpJjZqFcazUvHi2vA0KyZd1017fp
	VRnQ5PToo/YzYHKNUKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5leT-0035EO-RW; Fri, 07 Jan 2022 09:35:13 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5leR-0035BP-2z
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:12 +0000
Received: by mail-pf1-x431.google.com with SMTP id p37so4743791pfh.4
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rg+vml9furlkXJn9nzwnCZyHvxIzGVGXMZHiKIV3zrA=;
 b=gIHpJVWIYGmKyGDXh5VK9e0Vq4ULCUiZk1n4L4UoWVrDekkq2WuqDnOlSJEDZj4Zwb
 i1R289dpMRNaIgOZKQ5349jhd9cjfoieMAsCn6AAqgYwbAqHzr3T/STKr8YGfmkBREon
 ZenwdjkECmvKvBXCOKCzvl9h3HVw9ue5OXDmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rg+vml9furlkXJn9nzwnCZyHvxIzGVGXMZHiKIV3zrA=;
 b=askI1hE+d2b+u07ZoG4gAoATQrIlP8ZYeCNKPuWAY6mueGi2nNmXRk4bhabrMpaeRU
 OJyG6W2NGBv2Ik0MwSt+m7dU1MC1PSR9NXApo5bPu0qL6dc3+HSHbvn6+jI9yMe9AMc5
 u9KMlOL5eTMNwOqjfwzJwx/+Fq1ndw8+9kMEHNVVJArvBJjMGSfSsvZxdxtEaE/HmOOl
 2+6/ETSmVj8aCAueQk8LRWvRDEkzqMstJ+RIAvtoZNE+dA2L8WswfeoQxSVsJt9n4oq/
 pAcxIhwKgPY3OjRVgV/XzMC/Gv0TcETaRxeQgQYSOu3fXBSznR7uyPdANLe16L4vwooQ
 miKg==
X-Gm-Message-State: AOAM530PuQhRs1uIMQgHYt+nPUN4idSX2axmgOU8twKNPg5hMt2gk48I
 FYCfpfYecwyuBxvWxMUX5duEgnQKXb+nwQ==
X-Google-Smtp-Source: ABdhPJwWDLmKP2VQgg8DY2GJ93P333YGjVBT+xPWhT9aiC6o1eGQW+NKlQmtf4xHjMCjS3MgPD+oog==
X-Received: by 2002:a05:6a00:1944:b0:438:d002:6e35 with SMTP id
 s4-20020a056a00194400b00438d0026e35mr63427432pfk.20.1641548110398; 
 Fri, 07 Jan 2022 01:35:10 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:10 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 2/8] media: hantro: Fix overfill bottom register field
 name
Date: Fri,  7 Jan 2022 17:34:49 +0800
Message-Id: <20220107093455.73766-3-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013511_154749_16DB4991 
X-CRM114-Status: GOOD (  12.80  )
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

The Hantro H1 hardware can crop off pixels from the right and bottom of
the source frame. These are controlled with the H1_REG_IN_IMG_CTRL_OVRFLB
and H1_REG_IN_IMG_CTRL_OVRFLR in the H1_REG_IN_IMG_CTRL register.

The ChromeOS kernel driver that this was based on incorrectly added the
_D4 suffix H1_REG_IN_IMG_CTRL_OVRFLB. This field crops the bottom of the
input frame, and the number is _not_ divided by 4. [1]

Correct the name to avoid confusion when crop support with the selection
API is added.

[1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/ \
	heads/chromeos-4.19/drivers/staging/media/hantro/hantro_h1_vp8_enc.c#377

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Fixes: a29add8c9bb2 ("media: rockchip/vpu: rename from rockchip to hantro")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c | 2 +-
 drivers/staging/media/hantro/hantro_h1_regs.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 03db1c3444f8..96153c755fb8 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -23,7 +23,7 @@ static void hantro_h1_set_src_img_ctrl(struct hantro_dev *vpu,
 
 	reg = H1_REG_IN_IMG_CTRL_ROW_LEN(pix_fmt->width)
 		| H1_REG_IN_IMG_CTRL_OVRFLR_D4(0)
-		| H1_REG_IN_IMG_CTRL_OVRFLB_D4(0)
+		| H1_REG_IN_IMG_CTRL_OVRFLB(0)
 		| H1_REG_IN_IMG_CTRL_FMT(ctx->vpu_src_fmt->enc_fmt);
 	vepu_write_relaxed(vpu, reg, H1_REG_IN_IMG_CTRL);
 }
diff --git a/drivers/staging/media/hantro/hantro_h1_regs.h b/drivers/staging/media/hantro/hantro_h1_regs.h
index d6e9825bb5c7..30e7e7b920b5 100644
--- a/drivers/staging/media/hantro/hantro_h1_regs.h
+++ b/drivers/staging/media/hantro/hantro_h1_regs.h
@@ -47,7 +47,7 @@
 #define H1_REG_IN_IMG_CTRL				0x03c
 #define     H1_REG_IN_IMG_CTRL_ROW_LEN(x)		((x) << 12)
 #define     H1_REG_IN_IMG_CTRL_OVRFLR_D4(x)		((x) << 10)
-#define     H1_REG_IN_IMG_CTRL_OVRFLB_D4(x)		((x) << 6)
+#define     H1_REG_IN_IMG_CTRL_OVRFLB(x)		((x) << 6)
 #define     H1_REG_IN_IMG_CTRL_FMT(x)			((x) << 2)
 #define H1_REG_ENC_CTRL0				0x040
 #define    H1_REG_ENC_CTRL0_INIT_QP(x)			((x) << 26)
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
