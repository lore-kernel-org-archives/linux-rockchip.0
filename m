Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED5A0C49EA4
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:02:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77FFA613F3
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:02:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77FFA613F3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDgbruNNZ3HWBmoTRtPavcrVrI3dB1cEg/HNTYRrPHg=; b=faO4ioeJKdDjUG
	GJYMXgrdnTifchesJBN6SdQM6403InApOX5nLAlOOvEGw6p26OIhC+AF2iIiDywlxFUNVskhlLSd8
	jqiWEvLE1EVDUYeoMm2OzP0duRbT3YF2gLaxZsWb5lGM5XNmxvqP27YNai37qNiJGbc92N+wpE3gs
	bV0teLMDIpGZu3k3g2gNcrgqrN2sjXYR1ChQy7/A+l+o8AP7reECXLXwoJiqB7b6UsINNOiJ+JJux
	ejPfcRlVoiep6NmVZB0KFDextbnvSgA2vi0XyQei/JRlkseRlCu0iUHAhhxTrOhn5+CISgC9mzOEx
	2mnMOB9JgYnUN0wvvNDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luE90-00E6XI-Ag; Fri, 18 Jun 2021 13:02:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luE8w-00E6Ud-Tu
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 13:02:44 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luE8u-0001y0-Gw; Fri, 18 Jun 2021 15:02:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v6 01/10] media: rockchip: rkisp1: remove unused irq variable
Date: Fri, 18 Jun 2021 15:02:29 +0200
Message-Id: <20210618130238.4171196-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210618130238.4171196-1-heiko@sntech.de>
References: <20210618130238.4171196-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_060243_054284_661AAF13 
X-CRM114-Status: GOOD (  13.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The irq variable in struct rkisp1 is unused as it is only used
to request the irq during probe, so remove it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 1 -
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 038c303a8aed..be8a350c7527 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -352,7 +352,6 @@ struct rkisp1_debug {
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
-	int irq;
 	struct device *dev;
 	unsigned int clk_size;
 	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 7474150b94ed..7afa4c123834 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -489,8 +489,6 @@ static int rkisp1_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	rkisp1->irq = irq;
-
 	for (i = 0; i < match_data->size; i++)
 		rkisp1->clks[i].id = match_data->clks[i];
 	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
