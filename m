Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CBFFC25B0E
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 02:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTvxagMuM5DCCti9USKcBREG0JOW/A0bqg7+B5Ffrc0=; b=pk9uAvknVoKG9u
	NoOEtPwW5MipQdmkHdphqvWqkIR6JXW46CxPwHWuam9EfRFem4ex4STn4k2Zxk0hLqQ/1qb7l1736
	LkYzHvcCFt72+F8TvpmMeXWjAxJ+oPKcjv5do21qh/P/aZO+81+32I/gQVJqvGwyTb1AT04yDXWiS
	P+m/QbwPgt7gp+XjgsPsvyWl58G1Pm2hO+B/RlnMuXZZtGXhBjzYVcRaHXAj1vG5VoTv7mlxUpufR
	MxNmdsyRd01aEI4del1v10jr8RnL8VdmShDfNnJSG3uMTXPzQM/7vE0ipUshn1sfs/AoVBhFMczAz
	vBYwTOKXfHjELQ0HxS3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eK-0090tn-Sd; Wed, 17 Aug 2022 02:19:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eG-0090os-DA
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 02:19:15 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5174856D;
	Wed, 17 Aug 2022 04:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660702747;
	bh=XupCYAjgEXRLsh/cw0J6P5qpgliM91hjO+yB+Qz1miQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QTO5SRdClUF3jH3FYW+osq5tO4wmlZN5XxGw8ihAiQ7VbnfY/dHEWTa5Plk1uMP/w
	 FCMV6oJC1ZpUcIKoEsGqWrBfKttdiIAHYAL9YSDl9tQMPbIqCDjYdLk7CnGT5MDiC7
	 4wyVow9BD6LjPIW5vNf/sIRlpKaKQOroKdhUMMsM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 2/5] media: rkisp1: Store LSC register values in u32 variables
Date: Wed, 17 Aug 2022 05:18:47 +0300
Message-Id: <20220817021850.20460-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_191912_690790_E219F7F1 
X-CRM114-Status: UNSURE (   8.93  )
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

Use the u32 type instead of unsigned int to store register values in the
LSC configuration code, to make the variables' size more explicit. No
functional change intended.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index fbbaf5505291..dbe826fd02d2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -199,7 +199,8 @@ rkisp1_lsc_matrix_config_v10(struct rkisp1_params *params,
 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
 {
 	struct rkisp1_device *rkisp1 = params->rkisp1;
-	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
+	u32 lsc_status, sram_addr, lsc_table_sel;
+	unsigned int i, j;
 
 	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
 
@@ -258,7 +259,8 @@ rkisp1_lsc_matrix_config_v12(struct rkisp1_params *params,
 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
 {
 	struct rkisp1_device *rkisp1 = params->rkisp1;
-	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
+	u32 lsc_status, sram_addr, lsc_table_sel;
+	unsigned int i, j;
 
 	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
 
@@ -316,8 +318,8 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 			      const struct rkisp1_cif_isp_lsc_config *arg)
 {
 	struct rkisp1_device *rkisp1 = params->rkisp1;
-	unsigned int i, data;
-	u32 lsc_ctrl;
+	u32 lsc_ctrl, data;
+	unsigned int i;
 
 	/* To config must be off , store the current status firstly */
 	lsc_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
