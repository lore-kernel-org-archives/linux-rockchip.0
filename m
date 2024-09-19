Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB310CE8D62
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CTmBkPAXaQ/0JRnWHyaRnFeaGKQlU3ba5FlqnQMvNo=; b=Kw5pbzjJYH9BH+
	0IQXy9+JRtBz+mUL/eksAztx20JR1pZ4EFYoM4qSfD89xEasKVKnLR2Wf15JAK+51vH9QQnL3RGZw
	icGWev0qFRLrTj5dBDZKLQYXZroJMykKxbEMAUltDVdEr2NDjxcLZNLLN8uYOjVVdEO6OolBM/McD
	ajtxLi5K/tUF/hODLBLb9XViM1DTh3ko8ByWgHAplAvceN1d0kN+oOcPNsa/50rdu7qao2INkj9jr
	yhFUH2zHMhmsbKsS1hIshVjorw5MZBLpo3sMedZhaY7jAP5B9NgSxvDmWIJMeO4ezZgfsvW2TcpFZ
	ohhkWRSoIQ3z5ah62BnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srDJE-00000009txP-18Lb;
	Thu, 19 Sep 2024 09:18:44 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srDJ8-00000009tt5-2AqD
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 09:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726737516;
	bh=Zxm1uLqr1zUwk6C1A4ApcASI47Ep0+VpPk2kApygxO0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p8IxNupLEi1CO37HBlbjusvnuFIXtFUWOIq1ZrBo8FjbwNC7puM9FfInIJkgLKdc6
	 zFt/0ho4FEjSfoa4Ja6R6syk1kgexB3Z/KzPh8jNChqKcLrNw2wBxOAP1Pw1c1y4I2
	 7YRI4G66Q1bfNahuxFF91JdiKGBJ7lQ4wA3NpAgebeszWU1pX6MF6ocUB+fAnLYVAj
	 V1Vsd7EL9OiOaP2s83dtJBfN3rt1itloAj1FBKBkhAjAyAAdij1Vq52KCAH0DshQ77
	 jqRyRSQwfmbAge5AfR80K9MA07t5cLDEDLd1xgJFa+bkInNg4runv4f2PBjci2Oqhf
	 AqKUuVqYYUaow==
Received: from jupiter.universe (dyndsl-091-248-208-160.ewe-ip-backbone.de [91.248.208.160])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 808BF17E1082;
	Thu, 19 Sep 2024 11:18:36 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5C1B5480085; Thu, 19 Sep 2024 11:18:36 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 3/6] pmdomain: rockchip: reduce indentation in rockchip_pd_power
Date: Thu, 19 Sep 2024 11:12:44 +0200
Message-ID: <20240919091834.83572-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240919091834.83572-1-sebastian.reichel@collabora.com>
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_021838_953090_1BAFE3B1 
X-CRM114-Status: GOOD (  15.07  )
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

Rework the logic, so that the function exits early when the
power domain state is already correct to reduce code indentation.

No functional change intended.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 45 +++++++++++++-------------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 5e5291dedd28..663d390faaeb 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -537,36 +537,37 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 
 	guard(mutex)(&pmu->mutex);
 
-	if (rockchip_pmu_domain_is_on(pd) != power_on) {
-		ret = clk_bulk_enable(pd->num_clks, pd->clks);
-		if (ret < 0) {
-			dev_err(pmu->dev, "failed to enable clocks\n");
-			return ret;
-		}
+	if (rockchip_pmu_domain_is_on(pd) == power_on)
+		return 0;
 
-		if (!power_on) {
-			rockchip_pmu_save_qos(pd);
+	ret = clk_bulk_enable(pd->num_clks, pd->clks);
+	if (ret < 0) {
+		dev_err(pmu->dev, "failed to enable clocks\n");
+		return ret;
+	}
 
-			/* if powering down, idle request to NIU first */
-			rockchip_pmu_set_idle_request(pd, true);
-		}
+	if (!power_on) {
+		rockchip_pmu_save_qos(pd);
 
-		ret = rockchip_do_pmu_set_power_domain(pd, power_on);
-		if (ret < 0) {
-			clk_bulk_disable(pd->num_clks, pd->clks);
-			return ret;
-		}
+		/* if powering down, idle request to NIU first */
+		rockchip_pmu_set_idle_request(pd, true);
+	}
 
-		if (power_on) {
-			/* if powering up, leave idle mode */
-			rockchip_pmu_set_idle_request(pd, false);
+	ret = rockchip_do_pmu_set_power_domain(pd, power_on);
+	if (ret < 0) {
+		clk_bulk_disable(pd->num_clks, pd->clks);
+		return ret;
+	}
 
-			rockchip_pmu_restore_qos(pd);
-		}
+	if (power_on) {
+		/* if powering up, leave idle mode */
+		rockchip_pmu_set_idle_request(pd, false);
 
-		clk_bulk_disable(pd->num_clks, pd->clks);
+		rockchip_pmu_restore_qos(pd);
 	}
 
+	clk_bulk_disable(pd->num_clks, pd->clks);
+
 	return 0;
 }
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
