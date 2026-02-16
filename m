Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6ADFEF5872
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 09:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhL+26zl30uPjt6c5ypg8zMXLpm6LKUb0AwlPKwDYxI=; b=L0j/DE/bD5/6rK
	YP7zyzABRG/7tkexvl/g0LqBABvgUcdzzhdm0Zz5YsLojSInbmz7dmJzqcQlgs+HIn/5QjdbO++Bd
	G1i4WCJClyH5iP30NeBNZ7iAgaFZIsd9sW7fzf2xCy4ZMMvwzRjhikMxxqyze4Xl7TuN+iQerx5Lv
	z9rEKw+g6X0jRdEFOe3wF4/ZozpVl4rkWGqJia7XIGffKBb+w92H1ZUQnZBCUoFRyKVAgnngy2qUj
	esz0ixi5nLEh7lw8B0/QfOVXfMoChOeABTPHfiRjCwsNdJXsT8Pbl83aiv64l+qRAdE/osLEzwX4m
	AGC58Vr3bWLtXpdzCauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvGq-00000006IlG-1aWF;
	Mon, 16 Feb 2026 09:52:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvGk-00000006IgE-3BhL;
	Mon, 16 Feb 2026 09:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771235512;
	bh=TUtVT7Ue6aFFvi66GRXEy5nZ5hyvRNuhRle7WXwFkRg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GAuVXx2WgbgQTjIO9rXw8vD0D08Ip8Md2EZ2ke66taiyDEShhPy7mMkqAQNZ4cId5
	 VUOa0O8siTL/z1IW6a8tkj95bRrhRrjC4lhEmO36JenouphAeACP2eAoLgG1Mdrdfp
	 /5+mxiQCzPBdlNIy0hUlS31TFw0NFtoFf5G75ouVAiZxRrz1uYgI+Sx1WvexEf4mLt
	 FAbKAAyFbUc2RpgtW2rfkmhGnu2/LcUQWaPCi0wAgnARy1Al8f7G/SAF2ou/Yih2sE
	 d+cMVkieYpIhtKwTEjVurMUSZ2KGmD3bQKkqimmRgIXVZYRtYxIJk2gmuSVXnMIsln
	 zC1Psx18cL7Kg==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:f6d2:8ed9:560e:4f27])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0376C17E15A7;
	Mon, 16 Feb 2026 10:51:51 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-media@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v13 4/6] media: verisilicon: AV1: Restore IOMMU context before decoding a frame
Date: Mon, 16 Feb 2026 10:51:36 +0100
Message-ID: <20260216095144.107356-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
References: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_015154_970021_42BB23ED 
X-CRM114-Status: GOOD (  10.17  )
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

AV1 is a stateless decoder which means multiple AV1 bitstreams could be
decoded at the same time using the same hardware block. Before decoding
a frame it is needed to restore the iommu tables to avoid mixing decode
contexts.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e4703bb6be7c..d9e68e0ded68 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -5,6 +5,9 @@
  * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
  */
 
+#include <linux/iommu.h>
+#include <linux/vsi-iommu.h>
+
 #include <media/v4l2-mem2mem.h>
 #include "hantro.h"
 #include "hantro_v4l2.h"
@@ -2095,12 +2098,24 @@ rockchip_vpu981_av1_dec_set_output_buffer(struct hantro_ctx *ctx)
 	hantro_write_addr(vpu, AV1_TILE_OUT_MV, mv_addr);
 }
 
+static void rockchip_vpu981_av1_restore_iommu(struct hantro_ctx *ctx)
+{
+	struct iommu_domain *domain;
+
+	/* Before decoding any frame iommu context need to be restored */
+	domain = iommu_get_domain_for_dev(ctx->dev->v4l2_dev.dev);
+	if (domain)
+		vsi_iommu_restore_ctx(domain);
+}
+
 int rockchip_vpu981_av1_dec_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *vb2_src;
 	int ret;
 
+	rockchip_vpu981_av1_restore_iommu(ctx);
+
 	hantro_start_prepare_run(ctx);
 
 	ret = rockchip_vpu981_av1_dec_prepare_run(ctx);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
