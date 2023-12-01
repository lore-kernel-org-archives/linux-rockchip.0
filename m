Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AB2C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 14:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aOfKfgD2HRq7Jk0Tcb+mNLyneEAti+hl1YzazNbc6k=; b=PtMqvPcpPyV9hC
	PYoJa2JDlZ3ob600DGpDAfXXGQtV6bdZeFzDyMrMdPIR5iRtAaMV4X2EGGfztlVmWop9fxq5nLcLp
	jxinPRrhVr1GXw5yh2dumaXxQJHdDTBPKnaHKP5ajDWC5ULIMSdVNNiFFjZ6By/bZV0CfK7Yxgweo
	0QdCJF2FU2q9zt/7aTeIJQ/HHvL8/WJG5gsWNoL/RX9eHHpiTH59Cm21+Ild6v9yxvHdyskoL1o44
	jaIjWewbC4cLItn4slZr+P/qr36f/OM1Vc+45eW/jPsObCjyw2ZcBe3CzxTokesSLni2BZ9LJinPx
	dpFr0+xQiHOeizY5XQ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r948Z-00DtCM-1L;
	Fri, 01 Dec 2023 14:04:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r948V-00DtBI-2f;
	Fri, 01 Dec 2023 14:04:57 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 22F67138C;
	Fri,  1 Dec 2023 15:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701439457;
	bh=6zAIEj5ay2gT7+AvgvT+WUyzdRwwv76PYE4uLNb3qOg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bs4yQcW/vUdx9xaVmGD7CpLkHEu69wWuVl/djvZU0fy+fZTmDBUhNtZ6czqnNIUPs
	 aM1PGitQ4siHqyu2UvsLCVLdAXLNbiG2JcPzLNTDHDBj5CZhF0NJ5R8ZKW+DSb8sKo
	 gMcrmimq8GEvoBE0Pn+B+/SeLldJcmSmUX1T9/3Q=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: laurent.pinchart@ideasonboard.com,
	kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 1/4] media: rkisp1: regs: Consolidate MI interrupt wrap fields
Date: Fri,  1 Dec 2023 23:04:30 +0900
Message-Id: <20231201140433.2126011-2-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
References: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_060456_002506_A267BB50 
X-CRM114-Status: UNSURE (   9.97  )
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

Consolidate the wraparound fields in the memory interface interrupt
status registers, so that it can be more succinctly expressed by taking
the stream ID (main or self) as a parameter.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 350f452e676f..bea69a0d766a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -172,12 +172,9 @@
 #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
 #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
 #define RKISP1_CIF_MI_FILL_MP_Y				BIT(3)
-#define RKISP1_CIF_MI_WRAP_MP_Y				BIT(4)
-#define RKISP1_CIF_MI_WRAP_MP_CB			BIT(5)
-#define RKISP1_CIF_MI_WRAP_MP_CR			BIT(6)
-#define RKISP1_CIF_MI_WRAP_SP_Y				BIT(7)
-#define RKISP1_CIF_MI_WRAP_SP_CB			BIT(8)
-#define RKISP1_CIF_MI_WRAP_SP_CR			BIT(9)
+#define RKISP1_CIF_MI_WRAP_Y(stream)			BIT(4 + (stream)->id * 3)
+#define RKISP1_CIF_MI_WRAP_CB(stream)			BIT(5 + (stream)->id * 3)
+#define RKISP1_CIF_MI_WRAP_CR(stream)			BIT(6 + (stream)->id * 3)
 #define RKISP1_CIF_MI_DMA_READY				BIT(11)
 
 /* MI_STATUS */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
