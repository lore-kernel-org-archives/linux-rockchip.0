Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93589C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rAv2Jc+c8DCD3IHztchM+bdJjo+pO0IsTUuVAn91IM=; b=2IWQfjXVgOOnr8
	SZ1TW+sVE4Br++tT2Pczlt6bDJGmcYqXlqTd1WcAw1y73MTeEaDSqoHdVNbbC1uFrJgNKxktnOJmf
	PsMHYFQFXNqqPYqSJ1SW8mkOV+ndiLfRooXTzU83YxkSIHrYcyybWjGgRegVeFNSX500mFJTGXFJR
	V4qMM6pvfRGHeiNUexDsdnYdw0t7c4wZGP8+8aJzLTz7qrq/QYgtpZS7ty8i4dmtp0cZbBpiW8n/b
	RkY12HZU/uVDsnMbS0QU28qM3/L+HJfmSXCJYgsO1IGRyS6fl15mj27aMMvuk5NUmVTHLRRc95QOl
	6xitmM0O7JI5Q/LKXERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGm-00000006Upz-1gLr;
	Tue, 15 Sep 2026 12:28:16 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGb-00000006Uj1-3qlg
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:28:07 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49e66390995so17201295e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475284; x=1790080084; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EETaPt3U6RKbdBRbu2Bk9Q3etPj4cAHdjlyPKaUnyAI=;
        b=Uew5qme2nFqd+tnCiEIDRbKFsXxnAX8zATE6L2yYPd4tea2PIPyqKYohNXxfSE9WY2
         DcFph5L5rL6HW2Gs3kxaJY5oXPtGUTHykY4KAlOZ0KPi9as0CqzAutY573MiOSIUTWOE
         IsEYPZumHyag2i63UPXcqCkYdiXjlIjSsXxmDoPUUW6AKfZ6EsEE88f1cJKahXlKjnmv
         xkdckLHgEb0ywl/de47oWcEqsmO4CHQkAgFtXpOyuqxLJZg3jlcE3lZIwAJkSa/s47hf
         XonmKxb7E1/9jKni/JpdZ0S7ErJ0W9xQdwxhU4bqD+xIha2xMVwv6sk/63pAGG5AT/1R
         zAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475284; x=1790080084;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EETaPt3U6RKbdBRbu2Bk9Q3etPj4cAHdjlyPKaUnyAI=;
        b=x/XMJKQ1o95N79s3ERFD54BPDbD18e4rcrj6s6ouEivhFDTyZbpt60QUFoTsRy/KIw
         M19zggM6smqyZc9+5LVE5+QPKjH0eMb/i+tPBUuvVhCqPPrspBW02Yg6bEeQ2ycxj3R6
         ouv38fZ/xm7fCdW6Tb1IJvOHvXhjJ2dp/yudIpNm1546CllIfwgEg3SmkUtYoh7PEKgL
         D8Wb+OEeh8V5Ft5Gg0c3zK5MfnotV36qBe47+YHDn3bbOzG8qw6oIjsJIgsJltSo3vFm
         Ih+5b2+zhaI7lOTdDuK+78m/8WAp9gvFhuynKpkfENg7C3L6jfXivq6HBfaqctZFH2qC
         MJPg==
X-Forwarded-Encrypted: i=1; AKwUvBycvFDGYStw2eJX/NP+w6ZVrwXzHPg5C1IlwyQB9vGaUpIbiDJ1eVBE2GDhxj9Knny//kSxx7c8w935R6uEtg==@lists.infradead.org
X-Gm-Message-State: AFuF++lf8CWiSkwFJjWq3JJtvu5hOJuDy9rtwlcqZtdqlpOYQ67xpsCG
	b9unoCjL+dCnY+5rBsqNqA0Y3fob9h6gLfqca8S2W622CbuZ0/fKDGYa
X-Gm-Gg: AYBFou1aBwirjUx3TSxVk0d75Msw1qKnZr46VPeJXJ34bLt+TKCjjPCaT6SafRfVPMF
	6u5VUnPqhh2mEZdOJU6oi5exl0FoVUSUc/EqMNv+e+fDMCVtp7ew0130Ghytv0NSiA5MGvOWnRP
	CsJEvELgBXl6IbY2mmuDtad5R3WgCJFo+69a2bbSRdxgcEst7DNIZ9baYmlVu83Xdey/F9FYl0v
	uxxaZmqA29MXoj/S/t/9t0xMQ+GHcL/FBqpU8mmzr2dyA5uzN3fO2uzJ3xpgIIOC43Ki7iev3LZ
	pnxJ3mBaS9IkTdhwAygCwJMiaj21UMWjTr1hQjBCMFFlrwdin4tgInjQbVZKhviDed2ovlJnpYh
	s7Q2L1+nZc1kl0YHzzBTnsxxVMhDG35YSmNlgUvyGwKGu9Wv2wTCfEVFz0asNM22ndGo77yXbN4
	Sr3UMapt1utSNLFe51RaGIvtzNTidCo59l2oWg19bJOc9zI74/drT9m+k8gj6040TyhjcByqc+b
	Y+R/vYbNYVjnF8ANPveOSM8NSFwELDThKOujvKS+vAnBsVL56aAIfqcysbNpsnrPpp9nntNyZXs
	1w==
X-Received: by 2002:a05:600c:a47:b0:49d:16f1:94a5 with SMTP id 5b1f17b1804b1-49e7a677980mr83684085e9.25.1789475284061;
        Tue, 15 Sep 2026 05:28:04 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d6bf4desm83105075e9.15.2026.09.15.05.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:28:03 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 14:27:57 +0200
Subject: [PATCH 2/3] media: rockchip: rkcif: add support for rk3576 vicap
 mipi capture
MIME-Version: 1.0
Message-Id: <20260915-vicap-rk3576-v1-2-d3f5eb58a0b5@gmail.com>
References: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
In-Reply-To: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789475280; l=13360;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=vlomE9OJQnIk/T7WypNFrIF6CUk6qxEOxtOkhtxxUag=;
 b=S/OBz99BiiFCNvN3554t3gj79ME9sn4KLLn574TqWC7egGry9vAxiE1fl3jJdgeSb9F1q2Ckb
 IPDqS/uKpNQCZFJXedOlyvZH3CFVMj7yLDVLYsT1YPmGfX49xq/W4xj
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_052806_104918_3E282FC3 
X-CRM114-Status: GOOD (  17.60  )
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

The RK3576 Video Capture (VICAP) unit features a Digital Video Port
(DVP) and five MIPI CSI-2 capture interfaces. Compared to the RK3588
variant, the MIPI register blocks are laid out differently (there is
no block at offset 0x200), the ID_CTRL0 bit layout has changed, and
the VC/DT filter has moved from ID_CTRL0 to ID_CTRL1. The capture
size, which the other variants configure in ID_CTRL1, lives in the
new ID_SET_SIZE register.

Introduce a mipi_ctrl1 callback and a SET_SIZE register index so that
each variant can declare what ID_CTRL1 holds and where the capture
size is configured. The RK3568 and RK3588 variants keep their
previous behavior.

On the RK3576 the pixel clock of each MIPI port enters the VICAP
through a dedicated CRU gate (CLK_VICAP_I0CLK to CLK_VICAP_I4CLK),
so the variant claims these five clocks in addition to aclk, hclk
and dclk.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 .../platform/rockchip/rkcif/rkcif-capture-mipi.c   | 155 ++++++++++++++++++++-
 .../platform/rockchip/rkcif/rkcif-capture-mipi.h   |   1 +
 .../media/platform/rockchip/rkcif/rkcif-common.h   |   4 +-
 drivers/media/platform/rockchip/rkcif/rkcif-dev.c  |  21 +++
 drivers/media/platform/rockchip/rkcif/rkcif-regs.h |   1 +
 5 files changed, 180 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
index bc9518f8db50..53e62d059764 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
@@ -30,6 +30,14 @@
 #define RK3568_MIPI_CTRL0_CROP_EN     BIT(5)
 #define RK3568_MIPI_CTRL0_WRDDR(type) ((type) << 1)
 
+#define RK3576_MIPI_CTRL0_HIGH_ALIGN  BIT(11)
+#define RK3576_MIPI_CTRL0_WRDDR(type) ((type) << 8)
+#define RK3576_MIPI_CTRL0_PARSE(type) ((type) << 4)
+#define RK3576_MIPI_CTRL0_DMA_EN      BIT(3)
+#define RK3576_MIPI_CTRL0_CROP_EN     BIT(1)
+
+#define RK3576_MIPI_CTRL1_DT(dt)      ((dt) << 2)
+
 #define RK3588_MIPI_CTRL0_DMA_EN      BIT(28)
 #define RK3588_MIPI_CTRL0_HIGH_ALIGN  BIT(27)
 #define RK3588_MIPI_CTRL0_WRDDR(type) ((type) << 5)
@@ -438,6 +446,7 @@ const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = 0x38,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = 0x40,
 			[RKCIF_MIPI_CROP_START] = 0xbc,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID1] = {
 			[RKCIF_MIPI_CTRL0] = 0x08,
@@ -451,6 +460,7 @@ const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = 0x58,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = 0x60,
 			[RKCIF_MIPI_CROP_START] = 0xc0,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID2] = {
 			[RKCIF_MIPI_CTRL0] = 0x10,
@@ -464,6 +474,7 @@ const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = 0x78,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = 0x80,
 			[RKCIF_MIPI_CROP_START] = 0xc4,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID3] = {
 			[RKCIF_MIPI_CTRL0] = 0x18,
@@ -477,6 +488,7 @@ const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = 0x98,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = 0xa0,
 			[RKCIF_MIPI_CROP_START] = 0xc8,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 	},
 	.blocks = {
@@ -486,6 +498,138 @@ const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data = {
 	},
 };
 
+static u32
+rkcif_rk3576_mipi_ctrl0(struct rkcif_stream *stream,
+			const struct rkcif_output_fmt *active_out_fmt)
+{
+	u32 ctrl0 = RKCIF_MIPI_CTRL0_CAP_EN | RK3576_MIPI_CTRL0_DMA_EN |
+		    RK3576_MIPI_CTRL0_CROP_EN;
+
+	switch (active_out_fmt->mipi.type) {
+	case RKCIF_MIPI_TYPE_RAW8:
+		break;
+	case RKCIF_MIPI_TYPE_RAW10:
+		ctrl0 |= RK3576_MIPI_CTRL0_PARSE(0x1);
+		if (!active_out_fmt->mipi.compact)
+			ctrl0 |= RK3576_MIPI_CTRL0_WRDDR(0x1);
+		break;
+	case RKCIF_MIPI_TYPE_RAW12:
+		ctrl0 |= RK3576_MIPI_CTRL0_PARSE(0x2);
+		if (!active_out_fmt->mipi.compact)
+			ctrl0 |= RK3576_MIPI_CTRL0_WRDDR(0x1);
+		break;
+	case RKCIF_MIPI_TYPE_RGB888:
+		ctrl0 |= RK3576_MIPI_CTRL0_PARSE(0x7);
+		break;
+	case RKCIF_MIPI_TYPE_YUV422SP:
+		ctrl0 |= RK3576_MIPI_CTRL0_WRDDR(0x4);
+		break;
+	case RKCIF_MIPI_TYPE_YUV420SP:
+		ctrl0 |= RK3576_MIPI_CTRL0_WRDDR(0x5);
+		break;
+	case RKCIF_MIPI_TYPE_YUV400:
+		ctrl0 |= RK3576_MIPI_CTRL0_WRDDR(0x3);
+		break;
+	default:
+		break;
+	}
+
+	return ctrl0;
+}
+
+static u32
+rkcif_rk3576_mipi_ctrl1(struct rkcif_stream *stream,
+			const struct rkcif_output_fmt *active_out_fmt)
+{
+	return RK3576_MIPI_CTRL1_DT(active_out_fmt->mipi.dt);
+}
+
+const struct rkcif_mipi_match_data rkcif_rk3576_vicap_mipi_match_data = {
+	.mipi_num = 5,
+	.mipi_ctrl0 = rkcif_rk3576_mipi_ctrl0,
+	.mipi_ctrl1 = rkcif_rk3576_mipi_ctrl1,
+	.regs = {
+		[RKCIF_MIPI_CTRL] = 0x20,
+		[RKCIF_MIPI_INTEN] = 0x74,
+		[RKCIF_MIPI_INTSTAT] = 0x78,
+	},
+	.regs_id = {
+		[RKCIF_ID0] = {
+			[RKCIF_MIPI_CTRL0] = 0x00,
+			[RKCIF_MIPI_CTRL1] = 0x04,
+			[RKCIF_MIPI_FRAME0_ADDR_Y] = 0x24,
+			[RKCIF_MIPI_FRAME0_ADDR_UV] = 0x2c,
+			[RKCIF_MIPI_FRAME0_VLW_Y] = 0x34,
+			[RKCIF_MIPI_FRAME0_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_ADDR_Y] = 0x28,
+			[RKCIF_MIPI_FRAME1_ADDR_UV] = 0x30,
+			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_CROP_START] = 0x90,
+			[RKCIF_MIPI_SET_SIZE] = 0xa0,
+		},
+		[RKCIF_ID1] = {
+			[RKCIF_MIPI_CTRL0] = 0x08,
+			[RKCIF_MIPI_CTRL1] = 0x0c,
+			[RKCIF_MIPI_FRAME0_ADDR_Y] = 0x38,
+			[RKCIF_MIPI_FRAME0_ADDR_UV] = 0x40,
+			[RKCIF_MIPI_FRAME0_VLW_Y] = 0x48,
+			[RKCIF_MIPI_FRAME0_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_ADDR_Y] = 0x3c,
+			[RKCIF_MIPI_FRAME1_ADDR_UV] = 0x44,
+			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_CROP_START] = 0x94,
+			[RKCIF_MIPI_SET_SIZE] = 0xa4,
+		},
+		[RKCIF_ID2] = {
+			[RKCIF_MIPI_CTRL0] = 0x10,
+			[RKCIF_MIPI_CTRL1] = 0x14,
+			[RKCIF_MIPI_FRAME0_ADDR_Y] = 0x4c,
+			[RKCIF_MIPI_FRAME0_ADDR_UV] = 0x54,
+			[RKCIF_MIPI_FRAME0_VLW_Y] = 0x5c,
+			[RKCIF_MIPI_FRAME0_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_ADDR_Y] = 0x50,
+			[RKCIF_MIPI_FRAME1_ADDR_UV] = 0x58,
+			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_CROP_START] = 0x98,
+			[RKCIF_MIPI_SET_SIZE] = 0xa8,
+		},
+		[RKCIF_ID3] = {
+			[RKCIF_MIPI_CTRL0] = 0x18,
+			[RKCIF_MIPI_CTRL1] = 0x1c,
+			[RKCIF_MIPI_FRAME0_ADDR_Y] = 0x60,
+			[RKCIF_MIPI_FRAME0_ADDR_UV] = 0x68,
+			[RKCIF_MIPI_FRAME0_VLW_Y] = 0x70,
+			[RKCIF_MIPI_FRAME0_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_ADDR_Y] = 0x64,
+			[RKCIF_MIPI_FRAME1_ADDR_UV] = 0x6c,
+			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
+			[RKCIF_MIPI_CROP_START] = 0x9c,
+			[RKCIF_MIPI_SET_SIZE] = 0xac,
+		},
+	},
+	.blocks = {
+		{
+			.offset = 0x100,
+		},
+		{
+			.offset = 0x300,
+		},
+		{
+			.offset = 0x400,
+		},
+		{
+			.offset = 0x500,
+		},
+		{
+			.offset = 0x600,
+		},
+	},
+};
+
 static u32
 rkcif_rk3588_mipi_ctrl0(struct rkcif_stream *stream,
 			const struct rkcif_output_fmt *active_out_fmt)
@@ -549,6 +693,7 @@ const struct rkcif_mipi_match_data rkcif_rk3588_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_CROP_START] = 0x8c,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID1] = {
 			[RKCIF_MIPI_CTRL0] = 0x08,
@@ -562,6 +707,7 @@ const struct rkcif_mipi_match_data rkcif_rk3588_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_CROP_START] = 0x90,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID2] = {
 			[RKCIF_MIPI_CTRL0] = 0x10,
@@ -575,6 +721,7 @@ const struct rkcif_mipi_match_data rkcif_rk3588_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_CROP_START] = 0x94,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 		[RKCIF_ID3] = {
 			[RKCIF_MIPI_CTRL0] = 0x18,
@@ -588,6 +735,7 @@ const struct rkcif_mipi_match_data rkcif_rk3588_vicap_mipi_match_data = {
 			[RKCIF_MIPI_FRAME1_VLW_Y] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_FRAME1_VLW_UV] = RKCIF_REGISTER_NOTSUPPORTED,
 			[RKCIF_MIPI_CROP_START] = 0x98,
+			[RKCIF_MIPI_SET_SIZE] = RKCIF_REGISTER_NOTSUPPORTED,
 		},
 	},
 	.blocks = {
@@ -741,7 +889,10 @@ static int rkcif_mipi_start_streaming(struct rkcif_stream *stream)
 	if (match_data->mipi_ctrl0)
 		ctrl0 = match_data->mipi_ctrl0(stream, active_out_fmt);
 
-	ctrl1 = RKCIF_XY_COORD(width, height);
+	if (match_data->mipi_ctrl1)
+		ctrl1 = match_data->mipi_ctrl1(stream, active_out_fmt);
+	else
+		ctrl1 = RKCIF_XY_COORD(width, height);
 
 	int_mask |= RKCIF_MIPI_INT_FRAME0_END(stream->id);
 	int_mask |= RKCIF_MIPI_INT_FRAME1_END(stream->id);
@@ -759,6 +910,8 @@ static int rkcif_mipi_start_streaming(struct rkcif_stream *stream)
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_FRAME0_VLW_UV, vlw);
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_FRAME1_VLW_UV, vlw);
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CROP_START, 0x0);
+	rkcif_mipi_stream_write(stream, RKCIF_MIPI_SET_SIZE,
+				RKCIF_XY_COORD(width, height));
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL1, ctrl1);
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL0, ctrl0);
 
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
index 7edaca44f653..4e17cbc04b76 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
@@ -13,6 +13,7 @@
 #include "rkcif-common.h"
 
 extern const struct rkcif_mipi_match_data rkcif_rk3568_vicap_mipi_match_data;
+extern const struct rkcif_mipi_match_data rkcif_rk3576_vicap_mipi_match_data;
 extern const struct rkcif_mipi_match_data rkcif_rk3588_vicap_mipi_match_data;
 
 int rkcif_mipi_register(struct rkcif_device *rkcif);
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-common.h b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
index 4d9211ba9bda..08a213438d34 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-common.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
@@ -27,7 +27,7 @@
 #include "rkcif-regs.h"
 
 #define RKCIF_DRIVER_NAME "rockchip-cif"
-#define RKCIF_CLK_MAX	  5
+#define RKCIF_CLK_MAX	  8
 
 enum rkcif_format_type {
 	RKCIF_FMT_TYPE_INVALID,
@@ -207,6 +207,8 @@ struct rkcif_mipi_match_data {
 	unsigned int regs_id[RKCIF_ID_MAX][RKCIF_MIPI_ID_REGISTER_MAX];
 	u32 (*mipi_ctrl0)(struct rkcif_stream *stream,
 			  const struct rkcif_output_fmt *active_out_fmt);
+	u32 (*mipi_ctrl1)(struct rkcif_stream *stream,
+			  const struct rkcif_output_fmt *active_out_fmt);
 	struct {
 		unsigned int offset;
 	} blocks[RKCIF_MIPI_MAX - RKCIF_MIPI_BASE];
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
index be3a174b9aab..2a5758776b3e 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
@@ -53,6 +53,23 @@ static const struct rkcif_match_data rk3568_vicap_match_data = {
 	.mipi = &rkcif_rk3568_vicap_mipi_match_data,
 };
 
+static const char *const rk3576_vicap_clks[] = {
+	"aclk",
+	"hclk",
+	"dclk",
+	"iclk",
+	"iclk1",
+	"iclk2",
+	"iclk3",
+	"iclk4",
+};
+
+static const struct rkcif_match_data rk3576_vicap_match_data = {
+	.clks = rk3576_vicap_clks,
+	.clks_num = ARRAY_SIZE(rk3576_vicap_clks),
+	.mipi = &rkcif_rk3576_vicap_mipi_match_data,
+};
+
 static const char *const rk3588_vicap_clks[] = {
 	"aclk",
 	"hclk",
@@ -76,6 +93,10 @@ static const struct of_device_id rkcif_plat_of_match[] = {
 		.compatible = "rockchip,rk3568-vicap",
 		.data = &rk3568_vicap_match_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-vicap",
+		.data = &rk3576_vicap_match_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-vicap",
 		.data = &rk3588_vicap_match_data,
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-regs.h b/drivers/media/platform/rockchip/rkcif/rkcif-regs.h
index 3cf7ee19de30..0460e963b154 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-regs.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-regs.h
@@ -147,6 +147,7 @@ enum rkcif_mipi_id_register_index {
 	RKCIF_MIPI_FRAME1_VLW_Y,
 	RKCIF_MIPI_FRAME1_VLW_UV,
 	RKCIF_MIPI_CROP_START,
+	RKCIF_MIPI_SET_SIZE,
 	RKCIF_MIPI_ID_REGISTER_MAX
 };
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
