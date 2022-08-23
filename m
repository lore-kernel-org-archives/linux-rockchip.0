Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF91FC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 17:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbl4HmGl+FVKBsn+DokNmW8n9hmyWWexLZ6t3z5O8h8=; b=ZwfJ6PcUCObbon
	fvOcOdjK6qCeJYEq0ecigfbI9aBkp2dXF0EOTMZvalvXs0WqFSMptyhpC96bLQoGyi1UuGIykmJS8
	g2PVGtWHFC7aXphgLHEEXNf6N4LxgYLlWsx5l54glehVDNAUThN5z1ZiqQLZBkliQAGtliOqbSyh9
	5pf8+oWYFFNutKSnaLDIpM7TTdip+3zyrBgUsvzMuE0xeKCbpPEMi9v9Sw1+nA0y56IuJCPzlIxQF
	eJa6cqlVwGTfioVUcVdQvnwICZ5xfiMcmwYaZ/MBtMZOoKkva54T2A/ehLpATFLkzZ9tKUPiP1woC
	u0PYVCmXQzuDujqmpekA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQXb2-007gam-8E; Tue, 23 Aug 2022 17:21:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQXaz-007gZU-Qx
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 17:21:47 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CEEE42B3;
	Tue, 23 Aug 2022 19:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1661275301;
	bh=uPq8ZZQ+OcZ1X7uRG6oWZhvCe2Tjho9kMr40zJBYIjE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dhvikmst3EiiJO5J6hkjdYHQjACCvNBP9Xi8wpfQVfApTfTcsdU+6xRQNCpFR9Y41
	 VfKtZF9kfJ76H1VZ9rBEE4sjz61M7ZZBjbaGdnDLAwnFF0xheiDjmCbQMg18YIfyyi
	 IixVo0ojyO1hKLkGmvGWEO1eayJHYMS6Z0yH1UDI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Florian Sylvestre <fsylvestre@baylibre.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v1.1 4/5] media: rkisp1: Use correct macro for gradient registers
Date: Tue, 23 Aug 2022 20:21:36 +0300
Message-Id: <20220823172136.9342-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
References: <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_102146_069331_9FCE997C 
X-CRM114-Status: GOOD (  11.44  )
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

The rkisp1_lsc_config() function incorrectly uses the
RKISP1_CIF_ISP_LSC_SECT_SIZE() macro for the gradient registers. Replace
it with the correct macro, and rename it from
RKISP1_CIF_ISP_LSC_GRAD_SIZE() to RKISP1_CIF_ISP_LSC_SECT_GRAD() as the
corresponding registers store the gradients for each sector, not a size.
This doesn't cause any functional change as the two macros are defined
identically (the size and gradient registers store fields in the same
number of bits at the same positions).

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Rename RKISP1_CIF_ISP_LSC_GRAD_SIZE to RKISP1_CIF_ISP_LSC_SECT_GRAD
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index aa6efa4c6e9e..123c26fc1679 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -334,7 +334,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE(i), data);
 
 		/* program x grad tables */
-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
+		data = RKISP1_CIF_ISP_LSC_SECT_GRAD(arg->x_grad_tbl[i * 2],
 						    arg->x_grad_tbl[i * 2 + 1]);
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD(i), data);
 
@@ -344,7 +344,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE(i), data);
 
 		/* program y grad tables */
-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
+		data = RKISP1_CIF_ISP_LSC_SECT_GRAD(arg->y_grad_tbl[i * 2],
 						    arg->y_grad_tbl[i * 2 + 1]);
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD(i), data);
 	}
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 2ad24deedec8..39b2ac58196e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -619,7 +619,7 @@
 	(((v0) & 0x1FFF) | (((v1) & 0x1FFF) << 13))
 #define RKISP1_CIF_ISP_LSC_SECT_SIZE(v0, v1)      \
 	(((v0) & 0xFFF) | (((v1) & 0xFFF) << 16))
-#define RKISP1_CIF_ISP_LSC_GRAD_SIZE(v0, v1)      \
+#define RKISP1_CIF_ISP_LSC_SECT_GRAD(v0, v1)      \
 	(((v0) & 0xFFF) | (((v1) & 0xFFF) << 16))
 
 /* LSC: ISP_LSC_TABLE_SEL */
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
