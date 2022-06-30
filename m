Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F58C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFDsbYhIY18XjqlQbm7Cteaw5ayI2I+XL11kiljdZBA=; b=HFLN4uOWfgPdWD
	OuQytSUf+mOg3OT1W45FDwkZYv99PeL+ZePJrdZtJAmhplVskw/ROgckK2UqSvs8OjNGAUV4iuRdn
	I4ilJpGAupP+5bndKsbS9spd8tH3ToSQp62ctn3WxhTOdm3GkOIl+LoFkDpmvaL4O8pUib2xlgVRc
	v8K39Ygz5LRjR2AQQzseg7EoZgjZhyH2HAfvY/GRNXvP0R+ujSI6Uq4ir8b8EslUcgluBrZWJ5HVK
	fuIpnRz5SmAL4Sbdtq2FhIpy6iVvjN7u93/uOXwF5YA+Wl5K81W6OXwtgWR8Cr5jFEww32ZEcZ5s4
	qKeI+/MTmRRuOxUb6ffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HY-0021dt-Gd; Thu, 30 Jun 2022 23:09:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HP-0021RS-0M
	for linux-rockchip@bombadil.infradead.org; Thu, 30 Jun 2022 23:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8L519MOytvafa6Nf2akzpECyjq0Z+r3lgIfMRVJ1VXI=; b=GLSR89FACALuniPj4PUw+k2NMY
	PK06tAolH8g7m1pbnTH6Frz5JGXTtl3QBGymTRu7WFQ/DMFFDN1N7tHOwXTtXl+SqJgfuwrsyc3PT
	XCzNqgJOinFGVNjQa2tm/RZ5Ntz8HtdEJQCaPLdMtUNRPuXok0Q9ErmBiBzAs7PProAVkLM1nOXc9
	24YBlS1832GDlNZHyaVQoSeWBC/L1H9puDCjAhJ2C71WAiGuFGCMOySHkXEtlAqR7dbtXnkp8wipW
	evnlwk+QBL/KlrpjlLqBMNVMeaRK110H8/reFzYH8GqXx0FVbbf8ZKzvtcXWYRrIlu8sFxLq0dTPU
	NRPmI+BQ==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HJ-00EUUN-9W
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:57 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6262D2A67;
	Fri,  1 Jul 2022 01:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630492;
	bh=yO8fQy8aUsBlWZeXvaxtSZ7JcDGOXwPLF/nRHM7j6Ik=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ayWs8Y3QO30hHttDRKaw9JKpE9lL4xScBUR7h1gaCiUuAFHsbIIQUwKg1GU9FkKq4
	 +YOARLRuN+Bi4C4z70vU6BVoM52GlAL5d7lyuCAXZgihvagSnmRDx364vxgxGGGd76
	 87Y9XCMYTfn/MaL94LVhNvjuVDvIbtTLFD/1gtvo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 54/55] media: rkisp1: Add register definitions for the test pattern generator
Date: Fri,  1 Jul 2022 02:07:12 +0300
Message-Id: <20220630230713.10580-55-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_000853_451044_C943E869 
X-CRM114-Status: UNSURE (   7.43  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

Add register definitions and value macros for the test pattern generator
block in the ISP.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index dd63ae13e603..34f4fe09c88d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -717,6 +717,27 @@
 #define RKISP1_CIF_ISP_DPF_SPATIAL_COEFF_MAX		0x1F
 #define RKISP1_CIF_ISP_DPF_NLL_COEFF_N_MAX		0x3FF
 
+/* TPG */
+#define RKISP1_CIF_ISP_TPG_CTRL_ENA			BIT(0)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_3X3_COLOR_BLOCK	(0 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_COLOR_BAR		(1 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_GRAY_BAR		(2 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_HIGHLIGHT_GRID	(3 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_RAND		(4 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_RGGB		(0 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_GRBG		(1 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_GBRB		(2 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_BGGR		(3 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_8			(0 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_10		(1 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_12		(2 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEF_SYNC		BIT(8)
+#define RKISP1_CIF_ISP_TPG_CTRL_MAX_SYNC		BIT(9)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_1080P		(0 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_720P		(1 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_4K			(2 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_USER_DEFINED	(3 << 10)
+
 /* =================================================================== */
 /*                            CIF Registers                            */
 /* =================================================================== */
@@ -912,6 +933,17 @@
 #define RKISP1_CIF_ISP_SH_DELAY			(RKISP1_CIF_ISP_SH_BASE + 0x00000008)
 #define RKISP1_CIF_ISP_SH_TIME			(RKISP1_CIF_ISP_SH_BASE + 0x0000000C)
 
+#define RKISP1_CIF_ISP_TPG_BASE			0x00000700
+#define RKISP1_CIF_ISP_TPG_CTRL			(RKISP1_CIF_ISP_TPG_BASE + 0x00000000)
+#define RKISP1_CIF_ISP_TPG_TOTAL_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000004)
+#define RKISP1_CIF_ISP_TPG_ACT_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000008)
+#define RKISP1_CIF_ISP_TPG_FP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x0000000C)
+#define RKISP1_CIF_ISP_TPG_BP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000010)
+#define RKISP1_CIF_ISP_TPG_W_IN			(RKISP1_CIF_ISP_TPG_BASE + 0x00000014)
+#define RKISP1_CIF_ISP_TPG_GAP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000018)
+#define RKISP1_CIF_ISP_TPG_GAP_STD_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x0000001C)
+#define RKISP1_CIF_ISP_TPG_RANDOM_SEED_IN	(RKISP1_CIF_ISP_TPG_BASE + 0x00000020)
+
 #define RKISP1_CIF_C_PROC_BASE			0x00000800
 #define RKISP1_CIF_C_PROC_CTRL			(RKISP1_CIF_C_PROC_BASE + 0x00000000)
 #define RKISP1_CIF_C_PROC_CONTRAST		(RKISP1_CIF_C_PROC_BASE + 0x00000004)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
