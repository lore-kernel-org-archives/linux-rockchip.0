Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0FF3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Dec 2021 15:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS4GPuB5v9GwZe/nUDQW5cqi3aSGwUWiTTn2PJclzTo=; b=NddLt/2lns6m+s
	vyXlIoY5cPxOgPEPB0QXS5ll2sCh4Cgu/8ntKB2eNmgtcjtGDAHRdrypFsjeHQqGGdRR+eaWnNexO
	paLvrlNZfXx8dD2Ee0z/T4TxC89YABBbmhLGFZotsm9ebBOUONlmBHJO64RO54v7sLCTZHz5R2rzU
	rwLolAIwdgWsjmKTN2lOrVkeFLMKiBs32Y6amAcl2czGqRLWNJf302yzyaj0r9juv5eL6bo1REjJr
	2u0J+BgJuszqpEyieKJI2Jo0tlWX5JrRyByGqEIbZO45JMB5PJb3JApjiF/upPOCydJ9A6hiaMsRm
	TZbVwQG6R4K0ODIjA8Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtWuU-000SUT-5H; Sat, 04 Dec 2021 15:25:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtWu7-000SPt-40; Sat, 04 Dec 2021 15:24:48 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a00:c281:1409:4a00:6988:6ac4:851c:3f63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 14BE31F45C02;
 Sat,  4 Dec 2021 15:24:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638631483; bh=H8N9l6Mnl7wSw3Je5KLmnGKYDyH1sMJryKMaYLsbsV4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OgiDW9mVSLkthGLSK+4bwSG829/yDcX9wj4K+eMdI6ExJeOYXGBTyhs/1ovr4/ETN
 1DcL7rqArlDUVFNnT4dl0WKKATfhyZ3dQqMToJC+a7TgO1N/nDdafoF94EuzEt6cZf
 9ADZDh9GSPDdlcxy5tL9NbAR8qPRfLsrAu3tVEtJ/eX2XO1g83HZiXgAU1jxOPvBJC
 ZJpc2K1Fb8F+1l4jOEAKX2nOgXGc0KKILfA2MGyH9jiG3ImayEEfMi5yWLm9DoEDcE
 wl/o+yCZyzTQ+9d5ARVm+CqYCG4gkrGYRtFv5taTH+G2gGjmWnsTcLr90D/EkHjlGs
 e4Aqij+/jjYqw==
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: iommu@lists.linux-foundation.org
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 kernel@collabora.com
Subject: [PATCH 2/4] iommu/rockchip: remove redundant var dte_addr
Date: Sat,  4 Dec 2021 17:24:26 +0200
Message-Id: <20211204152428.13899-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
References: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_072447_340015_E2BDC34F 
X-CRM114-Status: GOOD (  10.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Using dte_addr as local var is redundant.
Instead acces rk_domain->dt[dte_index] directly.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index bd22d0a6eaf0..bd73cf9c54f5 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -744,7 +744,7 @@ static void rk_iommu_zap_iova_first_last(struct rk_iommu_domain *rk_domain,
 static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 				  dma_addr_t iova)
 {
-	u32 *page_table, *dte_addr;
+	u32 *page_table;
 	u32 dte_index, dte;
 	phys_addr_t pt_phys;
 	dma_addr_t pt_dma;
@@ -752,8 +752,8 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	assert_spin_locked(&rk_domain->dt_lock);
 
 	dte_index = rk_iova_dte_index(iova);
-	dte_addr = &rk_domain->dt[dte_index];
-	dte = *dte_addr;
+	dte = rk_domain->dt[dte_index];
+
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
@@ -769,7 +769,7 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	}
 
 	dte = rk_ops->mk_dtentries(pt_dma);
-	*dte_addr = dte;
+	rk_domain->dt[dte_index] = dte;
 
 	rk_table_flush(rk_domain,
 		       rk_domain->dt_dma + dte_index * sizeof(u32), 1);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
