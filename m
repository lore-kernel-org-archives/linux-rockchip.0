Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AD6C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD2OqfPFh/8e2lU+6oaGwUfZyr/dRs+PRK+3ejpCWGI=; b=0hcnHLqS/XN2PH
	nx5+lQeC8eZUKCbSsig76M13jFSDLF9/Xn+W2qHOPb2bx2UussOOdfLOjRS7Oeg9I/hcIMGUsoCHv
	haraAeEU0IXYjn3w/NuensFbqTh8R52XF2Qh3Fl6Gjzidy0HkwHfeaGz/+ARjVuk7ojjpmAUoL1tN
	ZOQXlr0tLCeL2q+GPtpsqXG/vLluE21V9pFFN8PYKc6VJVhPjz2frp0zvxMZjSidQDJ2fazlLkvFT
	3u4BXvx+rxvg1tcgvFsWwuN6hVgJDiOldCqgqnfJmn5OshWfAxJBT/0PIfZ7RicPnnRptUBMW4YKu
	I6Gf6SLzLs8cZJgt8ePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5leS-0035Cc-40; Fri, 07 Jan 2022 09:35:12 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5leO-0035AK-T6
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:10 +0000
Received: by mail-pl1-x62f.google.com with SMTP id l15so4475664pls.7
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rdOIoZ+TgGuU5AsegB3fHTze1qyXqLuPOXXXHf1uigo=;
 b=N/iRPyGDvOpeNg78lIyT9dxhuh54SZrC9Wq054ryPDJeYxTiaD/9ob0UvN0CKHuB5/
 VEWXt30685YBAH/gbvqXGQQlacbvGPse47ag/5OQtn126Yuo8qqqjdl/QpBVtQ3I6yxt
 YAmHBVVZepadD41/3AdToNEZP/ml4Xe0uQ34A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rdOIoZ+TgGuU5AsegB3fHTze1qyXqLuPOXXXHf1uigo=;
 b=JiFyzvUlzEXOOv/JePYtaIbN2baRt2H3hSLpQLpoisEvMud39XdhAKvcAQ0V2Wa1ve
 usu0Wnvl580i9HqJxzA7d+EsYMRUIF+aPT1v1abO0hEuqFBYD1p27NMYD2hCxzeg+6xT
 awpqyxeZhfRezXPzXydoDiKgBkBTrP6Y0jM+U55ET9jHwbJi2SRTbQJYmNmCQMADk2fO
 nWJpuumzT3HKGOpO0Gu2TJ/7V/58SvTb2jrIbZVC4RkYRZxWZ9P1CQW2bvvv5qsF/jFt
 7rSdcipiBvcjDQ7+yZ1R+pj84hA92RQVi25n0fMuei7Q1oFYwm1yINzGM8D09juxqVnf
 pnoQ==
X-Gm-Message-State: AOAM5336PInr+H/xIpi/NG90AeKdtF/OZIuY7bWimIiP6yr7Oj5nZXm8
 jkvRYEIGoH55ad9ImFOEG76JDQ==
X-Google-Smtp-Source: ABdhPJzWLTwfR71eotanrG4gal1FGzLpvAEjuqNZ8B7j935+/nKhzmavNQfJtAdv/Ldrgr775DlDYg==
X-Received: by 2002:a17:902:dac7:b0:148:ea85:af4d with SMTP id
 q7-20020a170902dac700b00148ea85af4dmr62032775plx.131.1641548108204; 
 Fri, 07 Jan 2022 01:35:08 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:07 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 1/8] media: hantro: jpeg: Relax register writes before
 write starting hardware
Date: Fri,  7 Jan 2022 17:34:48 +0800
Message-Id: <20220107093455.73766-2-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013508_964604_2907CEC4 
X-CRM114-Status: GOOD (  13.10  )
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
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
