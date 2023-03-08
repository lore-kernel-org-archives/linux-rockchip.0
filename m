Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B53C76186
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 11:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdNB9xYXc3av/74iXdHMWnOmgP2oRmyya2ijvqZOdjE=; b=Yqq2YrewPf+8hG
	36XfmnMgfmrIWP9+YgSKk3WplW6Zs1Fos38Jkci76mQLRltMG/syHFylY9hMbzMmrgNuHXQrkpQg/
	1nxJbEvqu1Mw61MrGDPO9gbOOJbMHz/lOf7QnNbteGBFhlfOFfsH3zPnime6ESMthmFSvzKzy3bTg
	G9SlS9y49gcDSR5CIAmbnFAsUMIIONluLXMC31F6h0dGPGURtWHqXpaXjRDlCIy6iWiLYnT8DYSIK
	ln5fJA2NCCW6JPd8cPmQCGgpea87ECaRt7v4lmJ2lzbWUAwFEuYvoGO6R4AI+lkFF4kCOIdtO6neU
	oIJEeYxcGbDlUZy3F5vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsv-004axQ-KO; Wed, 08 Mar 2023 11:23:05 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsr-004aua-3i
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 11:23:04 +0000
Received: from jupiter.universe (dyndsl-091-248-211-125.ewe-ip-backbone.de [91.248.211.125])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 544DB6602FEE;
	Wed,  8 Mar 2023 11:22:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678274578;
	bh=NhlIeCsCb+Aqj/Z0GvEUknpPeB8K45sszWBuWJ+vpjM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WeP3q1qmT4HRCK83tiKSa2n9AUmabYwutlhR0iC8X9H7Yy6blpXxXapxgy88Wp3x3
	 OnHyzWAaS5WNRDKwc7waVTzdHEF2KkIdujisb1kM+/PdJkqqgXkjPX6ZylYWcg+fO/
	 kY/IHcv5IYSRre5e3aORPMz1jn4bUJ7JoBCPymp5YnbQvH9snaXpfKswH/B37yR4Vp
	 WAeq9a3HTuE/kQ73LGWG8nV0woVdUtLPqIbFAy54LozZzkiJOyMeDR85l3UB/Rk9AH
	 utBUsyXiKDPWvWNIxotRuorNa4MkW2lpX74GjL+sW7JIsCNzbAqYLvKt6RJuwalfEG
	 5btnK5KotPBmQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6CC3B480116; Wed,  8 Mar 2023 12:22:55 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [RESEND] [PATCHv3 1/7] thermal: rockchip: Simplify getting match data
Date: Wed,  8 Mar 2023 12:22:47 +0100
Message-Id: <20230308112253.15659-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308112253.15659-1-sebastian.reichel@collabora.com>
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_032301_426707_0F78C77A 
X-CRM114-Status: GOOD (  12.33  )
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

It's possible to directly get the match data in a generic
way nowadays.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 4b7c43f34d1a..7e88525fe8d0 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1353,15 +1353,10 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct rockchip_thermal_data *thermal;
-	const struct of_device_id *match;
 	int irq;
 	int i;
 	int error;
 
-	match = of_match_node(of_rockchip_thermal_match, np);
-	if (!match)
-		return -ENXIO;
-
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
 		return -EINVAL;
@@ -1373,7 +1368,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 
 	thermal->pdev = pdev;
 
-	thermal->chip = (const struct rockchip_tsadc_chip *)match->data;
+	thermal->chip = device_get_match_data(&pdev->dev);
 	if (!thermal->chip)
 		return -EINVAL;
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
