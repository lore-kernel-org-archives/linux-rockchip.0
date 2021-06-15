Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FAE8C48BE6
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 00:38:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD8FD61378
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 00:38:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD8FD61378
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=710ty16Hd5wjrDa/XLjZyJSP6b5A+gLs0RrZOr7+T7Q=; b=SkpbBdnA39tVKw
	Y+aArIjNY2xLxQaJ7EBjLnFYA9l17JtCTQAkBNDgfAao0uUlSYOJfOiE+mPTIBOGBJ1kVkkxtb92x
	wShWlwoNcjfB46TiV3MkOo5ky/+WYwttPAqhNewRk5FLYVq+a5+ENAHEm3nsuzXwK0pUonyqzJ0nb
	X44s0ETXyp7XSciXnZHWrmyvpVsFkcAkIbDHCxYffYkeysevg813g04Gfqyfyq4as9cybJiounUGI
	fLwCsag95MP++5LSAYmuIUUAMLhGZ35TaAHTCcKnmNVaqpkG7S11Z1H0FI6L3tD1Xi6pKfZdSnvAD
	jtAY38Cg3V2UcCSe07ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsx5f-00Ghdp-Q4; Tue, 15 Jun 2021 00:38:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsx5c-00GhYb-5V
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 00:38:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsx5V-0004ks-3L; Tue, 15 Jun 2021 02:37:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v2 1/7] media: rockchip: rkisp1: remove unused irq variable
Date: Tue, 15 Jun 2021 02:37:35 +0200
Message-Id: <20210615003741.3758316-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615003741.3758316-1-heiko@sntech.de>
References: <20210615003741.3758316-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_173800_289808_5217170D 
X-CRM114-Status: GOOD (  13.45  )
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

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
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
