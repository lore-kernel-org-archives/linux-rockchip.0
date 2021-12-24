Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6904EC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2QuARaTC3o+5W65BfokYBk63hSmp/K+AQFt9RLPsEc=; b=rPeYlpRK+13Wi2
	jOqW6VQGIgO0Q4+R0u0SlbfYbZkKqMdDwotJYqMA7rW77uFuclTtZN3q3FgP8poS7l8ftbqK4CfV6
	Ry1zJU8yidShQYCkRVKmFpxM2OYYb8FW09DxY/iGYSC59OgxAPqEBBPaW8CYVNCEm8DLR3ryUqx0O
	UWf8c3qUV0Vg8ofHBfdd0HtzR/RYab8iXnlT94LwBAIxCOiprL5D/QoLoTxlGo5DnQk6doKSUhv9J
	al4j7XdPdfSwjErZhNvGlLAHJg+us8qSZOUQoldWB6oskjR6F1qIyNMtxLIkOwJZcvjWtGiHGG5hj
	rc0xmc0nGPURB5yTVbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAg-00Dwae-Bj; Fri, 24 Dec 2021 08:43:26 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAc-00DwXR-CG
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:24 +0000
Received: by mail-pg1-x52e.google.com with SMTP id r5so7114588pgi.6
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sV79zWvBxTOqiRZPPrLUHjZwFpDP1ZUgCFSQrPsf5D0=;
 b=BLVFhC+h53krTnpc+WG9bIg2JTuQleaJrdnZ5YXjAD3Ln3kK/uLw9Pt4feMO/A4CCQ
 g+9vSojwHSMRX29Sxqozsxs5oTBoXmGz0fDPBDyuNyhSxLKEvK7/Z14FTqYhgiwCZSr7
 RXx4T/BqM3kwo8PWegvZox7nbr48TjLAFPpfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sV79zWvBxTOqiRZPPrLUHjZwFpDP1ZUgCFSQrPsf5D0=;
 b=u+AQnbtVOQ2zMmy24qA+3osnSyeScndmQhBCp94pScEIorbInqJnzv6GB3krp8J7RG
 xMsW2zSp5xL9tI4ti6H/gHH3AdSHxrFEqsFUslO4i/dnjeYiEmhrQS8tjw2wSCKy1WjY
 1j0BVWkiiR1q89MooKRuNO79zfnbfnOERA1aNewrOoJGXvr86nG+XFVv5U5hrB9Y6FcO
 qJmDbv8LtsIy+NoWzdTuPkqSzsHJiYzshnrHVYTUUANgyMmvaQwQKdxqMnJO75FFcMff
 qGjw1LOJ/q10A+A5Z1rL+Df3fJ1Tgkb16jnSoQoVaoRgyIPo5lOuquOig3EEUNlWxxic
 sm3w==
X-Gm-Message-State: AOAM531ux7DEm6GX0kJ5xq8xrldV96AnFICvEBT5RErMoQXJAoMYo1oL
 kSo4TysPrUpo1+wfytCl8S9qvg==
X-Google-Smtp-Source: ABdhPJy3lka870xa8XlfbNt22sIwH0/xXExdqyGdWA4JxBQGedOAgCWjbfJVSbfkPnLbjyVrgC8Plg==
X-Received: by 2002:a05:6a00:21c8:b0:4a8:125:de32 with SMTP id
 t8-20020a056a0021c800b004a80125de32mr5969607pfj.49.1640335401680; 
 Fri, 24 Dec 2021 00:43:21 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:21 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 2/7] media: hantro: Fix overfill bottom register field name
Date: Fri, 24 Dec 2021 16:42:43 +0800
Message-Id: <20211224084248.3070568-3-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004322_511968_C33D577E 
X-CRM114-Status: GOOD (  12.42  )
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
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
