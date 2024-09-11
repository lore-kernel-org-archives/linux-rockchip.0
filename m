Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B04EE49B9
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 14:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXverxxa1Cy0CqUX22WAv8fUqXgLBWqY0ugUvtmXlEE=; b=CI7JJtQArUEVC9
	RuUz/GeasANe8kLPVhdTkRArWn6m1F/GMQvDbyO3eHvZFrrI9M1QAD1z/UGP+o5J9Iz1QiS26eisi
	VoMLiS44v7aGpbDhiHV1eUYQWW3ulEUjo2OAm6LRt/ibY8t1CT5DW1xhkTUGQd/xgmacfU0x1pxfj
	t0WdRnKIgXr8MXqB6WudKta40607ZeWvy0YPiMoytAyoIANxk/pVVEuyn3tNTzE+1U4CbDmHj2yQZ
	26FezsUCOND+vntqY8ukSx9L6fwjoBHakxBcu7TWlots2w+x1pd0nxZkeevw/pp5PxkiWcLfYBoe3
	2LodTCgplp51vJIiXqUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soOEA-00000009sZB-3TZp;
	Wed, 11 Sep 2024 14:21:50 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soNlu-00000009mgP-1I34
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 13:52:39 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48BALUbe005722;
	Wed, 11 Sep 2024 15:52:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	A8c+AY+qNssnoCfN0gZ6jZd2oPaxif5QtDT69HbwCEA=; b=W0hTDX/67HYbz70c
	mUJAZJltZcRY4co1wK6bvrv0Ar8Qnbq5kf+q/MYrXzQ9Zn3k6lq7nIaSEewkZWlp
	IUKXR8Jb3mKD6NpBbElGV/2Qctsu2DYs8J8YgjRsij03N/phG3tWkpQPEq0dqyB/
	Pb30tJsfKZjLT5TCovpjg6ma2NmvQAcn9GNxDM196GUpejB15rGaAF/erJX+z73H
	6/rphJyfJxRvY/nAy2pRgOAYAxhi5lTe8tvnfmAHGUDWpSgXBP4QEuOE9LFiq2/H
	OHfHDQFB/9f8wFnu8N6NQw31E8Mf3VPKvnW8uFtkcGwxfTJP0R39YOGs9cEWxV2a
	aLhCGQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41gy7sfgr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 15:52:29 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id A50944005B;
	Wed, 11 Sep 2024 15:51:10 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 460C6231537;
	Wed, 11 Sep 2024 15:50:15 +0200 (CEST)
Received: from localhost (10.48.86.208) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 11 Sep
 2024 15:50:14 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Hans
 Verkuil <hverkuil-cisco@xs4all.nl>,
        Fritz Koenig <frkoenig@chromium.org>,
        Sebastian Fricke <sebastian.fricke@collabora.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>
Subject: [PATCH 2/2] media: verisilicon: add WebP decoding support
Date: Wed, 11 Sep 2024 15:50:11 +0200
Message-ID: <20240911135011.161217-3-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
References: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.86.208]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_065238_664656_EE0CA8D9 
X-CRM114-Status: GOOD (  10.60  )
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

Add WebP picture decoding support to VP8 stateless decoder.

Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 drivers/media/platform/verisilicon/hantro_g1_regs.h    | 1 +
 drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_g1_regs.h b/drivers/media/platform/verisilicon/hantro_g1_regs.h
index c623b3b0be18..e7d4db788e57 100644
--- a/drivers/media/platform/verisilicon/hantro_g1_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_g1_regs.h
@@ -232,6 +232,7 @@
 #define     G1_REG_DEC_CTRL7_DCT7_START_BIT(x)		(((x) & 0x3f) << 0)
 #define G1_REG_ADDR_STR					0x030
 #define G1_REG_ADDR_DST					0x034
+#define G1_REG_ADDR_DST_CHROMA				0x038
 #define G1_REG_ADDR_REF(i)				(0x038 + ((i) * 0x4))
 #define     G1_REG_ADDR_REF_FIELD_E			BIT(1)
 #define     G1_REG_ADDR_REF_TOPC_E			BIT(0)
diff --git a/drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c b/drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c
index 851eb67f19f5..c6a7584b716a 100644
--- a/drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c
@@ -427,6 +427,11 @@ static void cfg_buffers(struct hantro_ctx *ctx,
 
 	dst_dma = hantro_get_dec_buf_addr(ctx, &vb2_dst->vb2_buf);
 	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DST);
+
+	if (hdr->flags & V4L2_VP8_FRAME_FLAG_WEBP)
+		vdpu_write_relaxed(vpu, dst_dma +
+				   ctx->dst_fmt.height * ctx->dst_fmt.width,
+				   G1_REG_ADDR_DST_CHROMA);
 }
 
 int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
@@ -471,6 +476,8 @@ int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 		reg |= G1_REG_DEC_CTRL0_SKIP_MODE;
 	if (hdr->lf.level == 0)
 		reg |= G1_REG_DEC_CTRL0_FILTERING_DIS;
+	if (hdr->flags & V4L2_VP8_FRAME_FLAG_WEBP)
+		reg |= G1_REG_DEC_CTRL0_WEBP_E;
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
 
 	/* Frame dimensions */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
