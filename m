Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6036AE77185
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 17:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbQ7dWO1Ud3bCZEcaDRFlxVhVgUs6yZYrQ9EsOidmk8=; b=L0L7HNX6EUEnR9
	m9bH4NPmd6rwJQZya2PHEBIEvxhEUWUsrmlhWW+WljyRjsHohbU+ng990M/YFmheskcdw1BSLMSqI
	aEGInpOmRi90udtuLCCSzJjG0sTLosaqbwsqc9y/QO+dHk7LQHAzo8sCHbflacV1U9fsUgL9rXlCL
	kzshOH2V4ypXkCggrL81PNHsGKjd8gtu7+52xCahchGF6FB//81XoFa3kkZZMSC741m3pyLzVVWsD
	ibafkMPlvNrCnBsY6mHsEEDK/UeIdUMyykXDSKuh692xbdWRC33QEjJqBjzVkDNhwqfRFjBeWwepe
	rA97ricmvmGCO2UYvunQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3lL-0000000CDKB-0Oay;
	Tue, 10 Dec 2024 17:11:07 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3kh-0000000CDAX-2Y2t
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 17:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733850625;
	bh=fC0pCAo2XvTLTelwyvhpjGUBmtu099+nMxksrhgRHPU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NI/1oTgD9eclSLSmBpjWvcQ7SBog1PdkLqMSi/Z2ZL0DMagPl4vucz3CpSXR/YH7+
	 cSpoAGnvjOYu+sLhnBEi9Jh0IYzgQwDV+cT5BdqgOiI4cUVvFbK98nIk1NZhrFe7m4
	 RsAfa8q/JAejqidwh/L/Qk/siLpoECavedvWkeSYaiIX0v9qXlSZlPLET8dh2AzHyI
	 7VnZvQIr6g5xdVC+B613OQwJ4adHnVM68YRErMmz5Pzouk1HI7Vpb4j/kuP6E3awGe
	 Fxosm0HTdNmDRLWEvOzpj+ZX/YuCd7Z/SLu4Z/seJ3yoMmoy3haK0LJ0YEPjrbwJPU
	 gTvB3bIDdjuRg==
Received: from jupiter.universe (dyndsl-091-248-190-127.ewe-ip-backbone.de [91.248.190.127])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 214AF17E37B2;
	Tue, 10 Dec 2024 18:10:25 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A738548CC8C; Tue, 10 Dec 2024 18:10:24 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 2/7] pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
Date: Tue, 10 Dec 2024 18:06:42 +0100
Message-ID: <20241210171023.141162-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210171023.141162-1-sebastian.reichel@collabora.com>
References: <20241210171023.141162-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_091027_808170_4D0B1ED4 
X-CRM114-Status: GOOD (  11.39  )
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

Use the cleanup infrastructure to handle the mutex, which
slightly improve code readability for this function.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index cb0f93800138..a161ee13c633 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -574,13 +574,12 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 	struct rockchip_pmu *pmu = pd->pmu;
 	int ret;
 
-	mutex_lock(&pmu->mutex);
+	guard(mutex)(&pmu->mutex);
 
 	if (rockchip_pmu_domain_is_on(pd) != power_on) {
 		ret = clk_bulk_enable(pd->num_clks, pd->clks);
 		if (ret < 0) {
 			dev_err(pmu->dev, "failed to enable clocks\n");
-			mutex_unlock(&pmu->mutex);
 			return ret;
 		}
 
@@ -606,7 +605,6 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 		clk_bulk_disable(pd->num_clks, pd->clks);
 	}
 
-	mutex_unlock(&pmu->mutex);
 	return 0;
 }
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
