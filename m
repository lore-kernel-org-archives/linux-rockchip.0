Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36EA8C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 07:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Yd6m/XH03RcHGIt4DnDIcQoY1+JkohAzRdxac7bmtM=; b=eGn/jZZaVY5Bfh
	gkD9Sv7+aE6+hXWc25BMpNRJLPEpPtTL2HL4bWVo9jEIMYSOE9vRbgvDMPfKXZne22AGzBx8dVJZR
	EoJq0+RC/xvN9df4SYdkfuF7z/OWciYbqFtvxHP48m0r7F0B1b0pQ9+vEtcAcWjSrua63oKt6Qa84
	ie98Jm898NQJP+9zMEKa6OSXK3e4/wMys828R7lmFnGNCziKZ+oNvBfZmkXY3gA3Ct3qZPo64ntv6
	tcHshlRzhVQDgIOA7zPuK+HAnckB/A8LLP031MZjk/5QOzX6BhQFV3Tq4yde1zVr6cCyc6XwjhhwV
	wGQ2RWWb/oVi/tthO1ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiobI-00000007DyN-0nlr;
	Sun, 12 Jul 2026 07:27:44 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiobG-00000007Dxe-1Mkm
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 07:27:43 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-845b6d9bf39so1977230b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jul 2026 00:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783841261; x=1784446061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xhgW2AIxRAsyir1bZV0tkAOlDMwlxqZpeTuaF9TQERo=;
        b=FtC3Srj6Di0TnT6v4YQPEF3g3udiBdk2qA74S1W+eKFaaON85F6errj9BeUPufWlue
         BCAAIXvabbfhhnE0usKZEkI5F0ARcBhCR1br9pKZi9CI20d14wboFxCIVUCxuYT7+7Nh
         2IO6Q9Ev4r6uZ9VQ4ZwNVP1faPkFlCDGUf/x2+zivQftx2yREL17R70adHBijqk2dB6a
         Y2ho0Q1jSgtAqHMtoip5IVPDIh5IHGPG7kEL41lJ/O239fMwYTj3/gP1PXN+mu1puiJ6
         lwO1oGZrP35fpyebcL8bJsaKXfL+wMm0fA9S7kPBJklR0WiFxESeqIvS6Y0sb14jAPJ5
         ejwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783841261; x=1784446061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xhgW2AIxRAsyir1bZV0tkAOlDMwlxqZpeTuaF9TQERo=;
        b=kFLVIFt7lvflYPOkfvlAR/9+baNZeIAVLhtTNe0K9hW01AnguklzYLGiUUialgB3lF
         pvDbtjVsbG8tDLuMAGmw6KmKkH2knkn9ifGXchDZbrWMdCXqgSqJ9l9po/z12PmhjA1J
         320z61a5MaGkiMYsnbd6Yf9ZoNteDrOeGyj3xdBccKCuPUJ44th+joWMPi73tR+nELLx
         IBfZA79XNsUoqUGoranXn0YBriUoSb5e5h3awu2zxDYRDY5D8SFEtWesw2LAUoB1UsCZ
         6TonRjTc+N1fqasm1DB5Scxc96ZGUC4/DYXbJ1sJ/xJBisH2gi8FrKhdaJX4NDz9OR0A
         1X8A==
X-Forwarded-Encrypted: i=1; AHgh+Rp5maNVoYywNEqlFp/3TZ8EZq9fMcane0hfW8FKuYzWtByK04dFfH1UrGHsyFBCfCuwhDKC1Y45aDlQIK7uhA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHJnGq++GsVz3mjLC8IXgBiAi5aGb7o22mPatqcoCZW6Fk/C3g
	LQ9q9tmz6QiF4QTM9WZRNk+4RqLECWtH9M7zXE7FNYcLL7RNFGTGUNDj
X-Gm-Gg: AfdE7cnyWyoM2LhHmnqRj/mx8Ztkxo3MeTdPH6mffFs0eaZ4rUfkWNsxzIzmTv+sO/b
	VDA3g7RBDnq2h6JurGjzJINkUDITr+lulpMNtJe11pNKuP3Mv/gBJZwrvpEHHaHNDJWSbq2pLnQ
	deEcKpxlghaglIEYQanqGOpyQBPPaad1xtJp9imTqoIz+diBs7nO6YDt+RgvsIweWXVakt9Cb8P
	eFfFIVcL1UcgrD0oeu+Z7k3yyX4qyCViFjL7yREkvO0GGRH5EzudEPJF0toTspHbjO8CXhhrZ6U
	yEjHOAgCAiEvZGPWazvdvKXcIxT+u5ZvMPvVOrbnGm89uISK9x1K3r/62y10mr6EwIHwqTl5k4S
	OIW4WsHX1ud0Fq0YL3AJ9LftXhQ92xirTWH2AC6BPRXd4vE1h78slIl/Wb/fj7F7yxp1VBr/GWe
	9xcgHoSKeHsYmDsvLp0LrFnm3IdhhvRNw9SOI0MA==
X-Received: by 2002:a05:6a00:1d09:b0:848:2f58:e1ec with SMTP id d2e1a72fcca58-84870798902mr7166904b3a.39.1783841260602;
        Sun, 12 Jul 2026 00:27:40 -0700 (PDT)
Received: from kurosuda.i.sslab.ics.keio.ac.jp ([131.113.100.7])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5b3162d3csm6904706a12.18.2026.07.12.00.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 00:27:39 -0700 (PDT)
From: Hiroki Nakajima <3na7nanana@gmail.com>
To: detlev.casanova@collabora.com,
	ezequiel@vanguardiasur.com.ar
Cc: mchehab@kernel.org,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hiroki Nakajima <3na7nanana@gmail.com>
Subject: [PATCH] media: rkvdec: use DIV_ROUND_UP() for CTB counts
Date: Sun, 12 Jul 2026 16:26:52 +0900
Message-Id: <20260712072652.2881919-1-3na7nanana@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_002742_362796_BFECD303 
X-CRM114-Status: GOOD (  11.61  )
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

Use DIV_ROUND_UP() when computing HEVC coding tree block counts
instead of open-coding the same rounding expression. This keeps the
rounding intent explicit without changing behavior.

Found using a Coccinelle rule generated from the DIV_ROUND_UP() macro
definition.

Signed-off-by: Hiroki Nakajima <3na7nanana@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c      | 4 ++--
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c  | 8 ++++----
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c  | 8 ++++----
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
index 87abf93dfd5e..ff3942f91c5d 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
@@ -258,9 +258,9 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 		for (i = 0; i <= pps->num_tile_rows_minus1; i++)
 			WRITE_PPS(pps->row_height_minus1[i], ROW_HEIGHT(i));
 	} else {
-		WRITE_PPS(((sps->pic_width_in_luma_samples + ctb_size_y - 1) / ctb_size_y) - 1,
+		WRITE_PPS(DIV_ROUND_UP(sps->pic_width_in_luma_samples, ctb_size_y) - 1,
 			  COLUMN_WIDTH(0));
-		WRITE_PPS(((sps->pic_height_in_luma_samples + ctb_size_y - 1) / ctb_size_y) - 1,
+		WRITE_PPS(DIV_ROUND_UP(sps->pic_height_in_luma_samples, ctb_size_y) - 1,
 			  ROW_HEIGHT(0));
 	}
 
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
index fe6414a17551..d07c74679552 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
@@ -261,8 +261,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	memset(row_height, 0, sizeof(row_height));
 
 	max_cu_width = 1 << (sps->log2_diff_max_min_luma_coding_block_size + log2_min_cb_size);
-	pic_in_cts_width = (width + max_cu_width - 1) / max_cu_width;
-	pic_in_cts_height = (height + max_cu_width - 1) / max_cu_width;
+	pic_in_cts_width = DIV_ROUND_UP(width, max_cu_width);
+	pic_in_cts_height = DIV_ROUND_UP(height, max_cu_width);
 
 	if (pps->flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED) {
 		if (pps->flags & V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING) {
@@ -275,8 +275,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 						  column_width, row_height);
 		}
 	} else {
-		column_width[0] = (width + max_cu_width - 1) / max_cu_width;
-		row_height[0] = (height + max_cu_width - 1) / max_cu_width;
+		column_width[0] = DIV_ROUND_UP(width, max_cu_width);
+		row_height[0] = DIV_ROUND_UP(height, max_cu_width);
 	}
 
 	for (i = 0; i < 20; i++) {
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
index 3575338a531a..3462d995d4cf 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
@@ -287,8 +287,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	memset(row_height, 0, sizeof(row_height));
 
 	max_cu_width = 1 << (sps->log2_diff_max_min_luma_coding_block_size + log2_min_cb_size);
-	pic_in_cts_width = (width + max_cu_width - 1) / max_cu_width;
-	pic_in_cts_height = (height + max_cu_width - 1) / max_cu_width;
+	pic_in_cts_width = DIV_ROUND_UP(width, max_cu_width);
+	pic_in_cts_height = DIV_ROUND_UP(height, max_cu_width);
 
 	if (tiles_enabled) {
 		if (pps->flags & V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING) {
@@ -301,8 +301,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 						  column_width, row_height);
 		}
 	} else {
-		column_width[0] = (width + max_cu_width - 1) / max_cu_width;
-		row_height[0] = (height + max_cu_width - 1) / max_cu_width;
+		column_width[0] = DIV_ROUND_UP(width, max_cu_width);
+		row_height[0] = DIV_ROUND_UP(height, max_cu_width);
 	}
 
 	for (i = 0; i < 20; i++)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
