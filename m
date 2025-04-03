Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA07C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 19:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9P9IXVOs1suFGH/YtrjsbVJiXdifZ2tLhqXcTKQ5CIY=; b=i5KcD8hDyHIWPr
	8Ah9yUFlGwQ71LeHl/vu3Ny5RhojoTn99dKVBmOolktraDWzgtNt3QfvXyqX5FHNBOsSADuJ+NKtT
	mfSkpWItPxXxnef1eF1Cqm56Jee6N4bpvCKt1+DhPT5aiE+ySuRX1+F4iGapZpakBNEnA8LlPA+D/
	OZSLL9NcrjssXKcNk6Yz/OXURXV+Frdz1OZxRjU8tK3pK5VSW+MnsMNkfdqPCDkRIPm6vK3EodnCR
	N1m9X4P6SFocY6twAGPNFwW4LUYRUh/swKABYOgj3jwpbi8+aU4fdUaOsT5FI9OfIHnZRW5wCXND5
	ih1cP5IcHo90/b9feYow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Q3R-00000009hJb-3pgm;
	Thu, 03 Apr 2025 19:16:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Puu-00000009ejR-0Cwg;
	Thu, 03 Apr 2025 19:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1743707273;
	bh=VTL6kwicHLjBdwQujCV+DK1vWwhdgxmpdH1NQF6da1E=;
	h=From:Date:Subject:To:Cc:From;
	b=gZu8bJG15cTU399eLCzOpANebfp7k9ztWQups7U5IhmjYheShf76XMC8sHDE67VPM
	 TD8HEa4KNldWr9R/wUlifxmA5BiItb73thWPoLs+0ShcugHohou5vKcYnRTTr8RgnE
	 JCeJVJ0ol+2g7IQjR/ZoTOqUGC6QBtoCUeM+FsY9xuIPdYlrhmn+KEEIum8b3bq2Hz
	 8puGRaNDKz4J7NuJPUlZyxrZYnkWz1fVgXMpFj/ueYPkjepOM4w9mMohpaVySyW67e
	 PEVe6HtkLlBu7DekNVpmH71NgREqFw3Y3IFOEQ2NpMbUHD+0L/j2uPAu8/IUNlWnz3
	 qUuzRgZ4vyTAw==
Received: from [192.168.13.180] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9888417E0865;
	Thu,  3 Apr 2025 21:07:52 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 03 Apr 2025 15:07:41 -0400
Subject: [PATCH] media: verisilicon: Enable wide 4K in AV1 decoder
MIME-Version: 1.0
Message-Id: <20250403-hantro-av1-wuhd-v1-1-334629cb7f63@collabora.com>
X-B4-Tracking: v=1; b=H4sIAHzc7mcC/x2MQQqAIBAAvxJ7bsG1vPSV6GC55V40tCyI/p50n
 IGZBzIn4QxD80DiIlliqEBtA4u3YWMUVxm00kb1qsMqjxTRFsLr9A6JWC+rmZlsD7XaE69y/8d
 xet8PtfnTcmEAAAA=
X-Change-ID: 20250403-hantro-av1-wuhd-11e2cf5be1a4
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_120756_259662_C0B0C754 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

Tested on RK3588, this decoder is capable of handling WUHD, so bump the
maximum width and height accordingly.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/media/platform/verisilicon/rockchip_vpu_hw.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index 964122e7c355934cd80eb442219f6ba51bba8b71..b64f0658f7f1e77b3efd960b35cd54dec4edf4ef 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -85,10 +85,10 @@ static const struct hantro_fmt rockchip_vpu981_postproc_fmts[] = {
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -99,10 +99,10 @@ static const struct hantro_fmt rockchip_vpu981_postproc_fmts[] = {
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -318,10 +318,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.match_depth = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -331,10 +331,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.match_depth = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -344,10 +344,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.max_depth = 2,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},

---
base-commit: f2151613e040973c868d28c8b00885dfab69eb75
change-id: 20250403-hantro-av1-wuhd-11e2cf5be1a4

Best regards,
-- 
Nicolas Dufresne <nicolas.dufresne@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
