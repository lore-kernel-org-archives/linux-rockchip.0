Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5652FC25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 May 2024 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uin0oTDqlarMhZy4fF4yKMlNWU33msKjcnTxpmd4b0=; b=Zz5WbmtcRGF4Em
	gmTUtGeruFjDTDzJdeSyRm++XR40Gjan6RrFbX6AazxSUetmmOOBsWZmwfBVAxwWDVOY4q0Dyc6u4
	Uw4QSIZyqfkdihRNMsgi+a4klFot5svpnhtGeEPrHvt+Ku1VN6qqSr1OwXN44WYP/hVaismFgHRJu
	78HnL6/HB8oiYiaTY3V6HjQGIoy9971y+VlBRQKfqbbMJktVqfc04nGAYIfsBO4WBnIsGBIEbRrUg
	TB/t2Oj5AFE3fi89qa73WZ04FPstXub3/n75o+MpQ+IhNf9iuvmQZ4tLz9aZRgIhjRteGafC6MLbU
	vxFshVOZL42mfaLZ1VqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBIIG-0000000D3mF-1WFg;
	Sun, 26 May 2024 18:08:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBIID-0000000D3l1-03Kl
	for linux-rockchip@lists.infradead.org;
	Sun, 26 May 2024 18:08:26 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 44QI8H9L056720;
	Sun, 26 May 2024 13:08:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1716746897;
	bh=KsULcLgmRswxQJSniBSyFxAPMndg5HaAe6P+m987zk8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=UvhyYHM1qmfj391NtqggDvG5lYF79PA8TfI0MAI+djMyOab3t2jmp2Inv4IKiKeVC
	 XqQ8vyBrP3PLLkVctOxH8BCxw4hp65Lo7Q9M7OXLMfinMFr1RDjGrmaIyZo17yyu3l
	 SRJ3PqzmWWQa7xbiWJYy/S6du7IXm7xYBNiwvUeI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 44QI8Hae102304
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 26 May 2024 13:08:17 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 26
 May 2024 13:08:17 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 26 May 2024 13:08:16 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 44QI8GCk060390;
	Sun, 26 May 2024 13:08:16 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <mchehab@kernel.org>, <hverkuil-cisco@xs4all.nl>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <benjamin.gaignard@collabora.com>, <sebastian.fricke@collabora.com>,
        <ezequiel@vanguardiasur.com.ar>, <p.zabel@pengutronix.de>,
        <linux-rockchip@lists.infradead.org>
CC: <laurent.pinchart@ideasonboard.com>, <praneeth@ti.com>, <nm@ti.com>,
        <vigneshr@ti.com>, <a-bhatia1@ti.com>, <j-luthra@ti.com>,
        <b-brnich@ti.com>, <detheridge@ti.com>, <p-mantena@ti.com>,
        <vijayp@ti.com>, <devarsht@ti.com>, <andrzej.p@collabora.com>,
        <nicolas@ndufresne.ca>
Subject: [PATCH v9 05/10] media: verisilcon : Use exported tables from v4l2-jpeg for hantro codec
Date: Sun, 26 May 2024 23:38:15 +0530
Message-ID: <20240526180815.1122620-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20240526175655.1093707-1-devarsht@ti.com>
References: <20240526175655.1093707-1-devarsht@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_110825_433557_64E604C3 
X-CRM114-Status: GOOD (  12.66  )
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

Use v4l2-jpeg core API to import reference quantization and huffman tables
used for JPEG Encoding.

Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
V9: No change
V8: Add Reviewed-by and Acked-by tags
V1->V6 (No change, patch introduced in V7)
---
 .../media/platform/verisilicon/hantro_jpeg.c  | 128 ++----------------
 1 file changed, 14 insertions(+), 114 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_jpeg.c b/drivers/media/platform/verisilicon/hantro_jpeg.c
index d07b1b449b61..fa4e8ee92c05 100644
--- a/drivers/media/platform/verisilicon/hantro_jpeg.c
+++ b/drivers/media/platform/verisilicon/hantro_jpeg.c
@@ -11,6 +11,7 @@
 #include <linux/build_bug.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
+#include <media/v4l2-jpeg.h>
 #include "hantro_jpeg.h"
 #include "hantro.h"
 
@@ -24,42 +25,6 @@
 #define HUFF_CHROMA_DC_OFF	394
 #define HUFF_CHROMA_AC_OFF	427
 
-/* Default tables from JPEG ITU-T.81
- * (ISO/IEC 10918-1) Annex K, tables K.1 and K.2
- */
-static const unsigned char luma_q_table[] = {
-	0x10, 0x0b, 0x0a, 0x10, 0x18, 0x28, 0x33, 0x3d,
-	0x0c, 0x0c, 0x0e, 0x13, 0x1a, 0x3a, 0x3c, 0x37,
-	0x0e, 0x0d, 0x10, 0x18, 0x28, 0x39, 0x45, 0x38,
-	0x0e, 0x11, 0x16, 0x1d, 0x33, 0x57, 0x50, 0x3e,
-	0x12, 0x16, 0x25, 0x38, 0x44, 0x6d, 0x67, 0x4d,
-	0x18, 0x23, 0x37, 0x40, 0x51, 0x68, 0x71, 0x5c,
-	0x31, 0x40, 0x4e, 0x57, 0x67, 0x79, 0x78, 0x65,
-	0x48, 0x5c, 0x5f, 0x62, 0x70, 0x64, 0x67, 0x63
-};
-
-static const unsigned char chroma_q_table[] = {
-	0x11, 0x12, 0x18, 0x2f, 0x63, 0x63, 0x63, 0x63,
-	0x12, 0x15, 0x1a, 0x42, 0x63, 0x63, 0x63, 0x63,
-	0x18, 0x1a, 0x38, 0x63, 0x63, 0x63, 0x63, 0x63,
-	0x2f, 0x42, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63,
-	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63,
-	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63,
-	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63,
-	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
-};
-
-static const unsigned char zigzag[] = {
-	 0,  1,  8, 16,  9,  2,  3, 10,
-	17, 24, 32, 25, 18, 11,  4,  5,
-	12, 19, 26, 33, 40, 48, 41, 34,
-	27, 20, 13,  6,  7, 14, 21, 28,
-	35, 42, 49, 56, 57, 50, 43, 36,
-	29, 22, 15, 23, 30, 37, 44, 51,
-	58, 59, 52, 45, 38, 31, 39, 46,
-	53, 60, 61, 54, 47, 55, 62, 63
-};
-
 static const u32 hw_reorder[] = {
 	 0,  8, 16, 24,  1,  9, 17, 25,
 	32, 40, 48, 56, 33, 41, 49, 57,
@@ -71,73 +36,6 @@ static const u32 hw_reorder[] = {
 	38, 46, 54, 62, 39, 47, 55, 63
 };
 
-/* Huffman tables are shared with CODA */
-static const unsigned char luma_dc_table[] = {
-	0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01,
-	0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
-	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
-	0x08, 0x09, 0x0a, 0x0b,
-};
-
-static const unsigned char chroma_dc_table[] = {
-	0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
-	0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
-	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
-	0x08, 0x09, 0x0a, 0x0b,
-};
-
-static const unsigned char luma_ac_table[] = {
-	0x00, 0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03,
-	0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7d,
-	0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12,
-	0x21, 0x31, 0x41, 0x06, 0x13, 0x51, 0x61, 0x07,
-	0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xa1, 0x08,
-	0x23, 0x42, 0xb1, 0xc1, 0x15, 0x52, 0xd1, 0xf0,
-	0x24, 0x33, 0x62, 0x72, 0x82, 0x09, 0x0a, 0x16,
-	0x17, 0x18, 0x19, 0x1a, 0x25, 0x26, 0x27, 0x28,
-	0x29, 0x2a, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39,
-	0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49,
-	0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
-	0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69,
-	0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79,
-	0x7a, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89,
-	0x8a, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98,
-	0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7,
-	0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6,
-	0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4, 0xc5,
-	0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2, 0xd3, 0xd4,
-	0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe1, 0xe2,
-	0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea,
-	0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8,
-	0xf9, 0xfa,
-};
-
-static const unsigned char chroma_ac_table[] = {
-	0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04,
-	0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77,
-	0x00, 0x01, 0x02, 0x03, 0x11, 0x04, 0x05, 0x21,
-	0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71,
-	0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91,
-	0xa1, 0xb1, 0xc1, 0x09, 0x23, 0x33, 0x52, 0xf0,
-	0x15, 0x62, 0x72, 0xd1, 0x0a, 0x16, 0x24, 0x34,
-	0xe1, 0x25, 0xf1, 0x17, 0x18, 0x19, 0x1a, 0x26,
-	0x27, 0x28, 0x29, 0x2a, 0x35, 0x36, 0x37, 0x38,
-	0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48,
-	0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58,
-	0x59, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68,
-	0x69, 0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78,
-	0x79, 0x7a, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87,
-	0x88, 0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96,
-	0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5,
-	0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4,
-	0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3,
-	0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2,
-	0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda,
-	0xe2, 0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9,
-	0xea, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8,
-	0xf9, 0xfa,
-};
-
 /* For simplicity, we keep a pre-formatted JPEG header,
  * and we'll use fixed offsets to change the width, height
  * quantization tables, etc.
@@ -291,10 +189,11 @@ jpeg_scale_quant_table(unsigned char *file_q_tab,
 		       const unsigned char *tab, int scale)
 {
 	int i;
+	const u8 *zigzag;
 
-	BUILD_BUG_ON(ARRAY_SIZE(zigzag) != JPEG_QUANT_SIZE);
 	BUILD_BUG_ON(ARRAY_SIZE(hw_reorder) != JPEG_QUANT_SIZE);
 
+	v4l2_jpeg_get_zig_zag_scan(&zigzag);
 	for (i = 0; i < JPEG_QUANT_SIZE; i++) {
 		file_q_tab[i] = jpeg_scale_qp(tab[zigzag[i]], scale);
 		reordered_q_tab[i] = jpeg_scale_qp(tab[hw_reorder[i]], scale);
@@ -304,6 +203,7 @@ jpeg_scale_quant_table(unsigned char *file_q_tab,
 static void jpeg_set_quality(struct hantro_jpeg_ctx *ctx)
 {
 	int scale;
+	const u8 *luma_q_table, *chroma_q_table;
 
 	/*
 	 * Non-linear scaling factor:
@@ -314,21 +214,23 @@ static void jpeg_set_quality(struct hantro_jpeg_ctx *ctx)
 	else
 		scale = 200 - 2 * ctx->quality;
 
-	BUILD_BUG_ON(ARRAY_SIZE(luma_q_table) != JPEG_QUANT_SIZE);
-	BUILD_BUG_ON(ARRAY_SIZE(chroma_q_table) != JPEG_QUANT_SIZE);
 	BUILD_BUG_ON(ARRAY_SIZE(ctx->hw_luma_qtable) != JPEG_QUANT_SIZE);
 	BUILD_BUG_ON(ARRAY_SIZE(ctx->hw_chroma_qtable) != JPEG_QUANT_SIZE);
 
+	v4l2_jpeg_get_reference_quantization_tables(&luma_q_table, &chroma_q_table);
 	jpeg_scale_quant_table(ctx->buffer + LUMA_QUANT_OFF,
-			       ctx->hw_luma_qtable, luma_q_table, scale);
+			       ctx->hw_luma_qtable, (const unsigned char *)luma_q_table, scale);
 	jpeg_scale_quant_table(ctx->buffer + CHROMA_QUANT_OFF,
-			       ctx->hw_chroma_qtable, chroma_q_table, scale);
+			       ctx->hw_chroma_qtable, (const unsigned char *)chroma_q_table, scale);
 }
 
 void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx)
 {
 	char *buf = ctx->buffer;
+	const u8 *luma_dc_table, *chroma_dc_table, *luma_ac_table, *chroma_ac_table;
 
+	v4l2_jpeg_get_reference_huffman_tables(&luma_dc_table,  &luma_ac_table, &chroma_dc_table,
+					       &chroma_ac_table);
 	memcpy(buf, hantro_jpeg_header,
 	       sizeof(hantro_jpeg_header));
 
@@ -337,12 +239,10 @@ void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx)
 	buf[WIDTH_OFF + 0] = ctx->width >> 8;
 	buf[WIDTH_OFF + 1] = ctx->width;
 
-	memcpy(buf + HUFF_LUMA_DC_OFF, luma_dc_table, sizeof(luma_dc_table));
-	memcpy(buf + HUFF_LUMA_AC_OFF, luma_ac_table, sizeof(luma_ac_table));
-	memcpy(buf + HUFF_CHROMA_DC_OFF, chroma_dc_table,
-	       sizeof(chroma_dc_table));
-	memcpy(buf + HUFF_CHROMA_AC_OFF, chroma_ac_table,
-	       sizeof(chroma_ac_table));
+	memcpy(buf + HUFF_LUMA_DC_OFF, luma_dc_table, V4L2_JPEG_REF_HT_DC_LEN);
+	memcpy(buf + HUFF_LUMA_AC_OFF, luma_ac_table, V4L2_JPEG_REF_HT_AC_LEN);
+	memcpy(buf + HUFF_CHROMA_DC_OFF, chroma_dc_table, V4L2_JPEG_REF_HT_DC_LEN);
+	memcpy(buf + HUFF_CHROMA_AC_OFF, chroma_ac_table, V4L2_JPEG_REF_HT_AC_LEN);
 
 	jpeg_set_quality(ctx);
 }
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
