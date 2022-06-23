Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1393CCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pQgeC43rSEDcogqSv1qnLNLBCN2Px8l0pK8yA7nTow=; b=ajuTKGw17rUi7s
	u/AB4j86O62kMIMdL+XGN9qnn3Jx7VrhLk1iQNn7QVGnQx2whpDYruyhtfhIOWwUrHcdsC9+cyO01
	dW/quI6dgCZlB9SfOkSleS7gR3031IIkuk03Iud8ZwRw5mZi6HQFVkab0gME8/emi6E67rLthlbFv
	0/2i/etAByP3KK0fxRKKMq+5bW47MCsELbUml1+16xz/k5nPX9V++UU3j83uv8d0D8Xg5JBDcAqdN
	cmAt0kmC8JoOAmAQpuOJduBxphuf4eNJzywLrNe+L04YwZCMX5csWUEQvz5NXdlq92DLOq9U1MuC8
	yvNO//mzWJvR3Mf6nnDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pd8-00FrOl-DZ; Thu, 23 Jun 2022 16:24:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pc2-00FqtA-Qt; Thu, 23 Jun 2022 16:23:24 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 924BC66017EC;
	Thu, 23 Jun 2022 17:23:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001401;
	bh=rEJ+pNRgdZef5+wO4r54ejoJ7KJfO0P7doJa8eL6Wuw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G3spGbQPVrVW2PSUDZt+0d5qibv1+qUxSR4VCXzgXQrG20CdlB4QvA1ivh+JH4J/C
	 okthgekcwEi2chgOeNXwy4+F158i4vEihKT5o8IFEl6+iIfuVC1x8+rmjrfDM03W9M
	 Ypn2CexeZn7pGemMjMAfbuSToNMZLeqTVhhkT98+kXzmk9HqOI4fz8RNWHLxaLEKfZ
	 vhpoisqAgn28b08kC7B8qjzaDNuj5GtMRXPhbcPYO5GLwkqkzamBuq8toaphBFU8HN
	 hdjQ+BQf1ACAghW0YwjU48R0vPHJIXGLr/cY/WGpIJCM+OsBPx4PfP+Kl52fMmoAR4
	 W/ZUykl9E5BEA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 766C44805A1; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 5/6] soc: rockchip: power-domain: do not enable PD
Date: Thu, 23 Jun 2022 18:23:08 +0200
Message-Id: <20220623162309.243766-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162309.243766-1-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092323_065311_D4898053 
X-CRM114-Status: GOOD (  11.72  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

It's not need to power on all pd when add pm domain. Instead
use PD's real status in pm_genpd_init().

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/soc/rockchip/pm_domains.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 89795abac951..a59aa3b89a72 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -595,14 +595,6 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		}
 	}
 
-	error = rockchip_pd_power(pd, true);
-	if (error) {
-		dev_err(pmu->dev,
-			"failed to power on domain '%pOFn': %d\n",
-			node, error);
-		goto err_unprepare_clocks;
-	}
-
 	if (pd->info->name)
 		pd->genpd.name = pd->info->name;
 	else
@@ -614,7 +606,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 	pd->genpd.flags = GENPD_FLAG_PM_CLK;
 	if (pd_info->active_wakeup)
 		pd->genpd.flags |= GENPD_FLAG_ACTIVE_WAKEUP;
-	pm_genpd_init(&pd->genpd, NULL, false);
+	pm_genpd_init(&pd->genpd, NULL, !rockchip_pmu_domain_is_on(pd));
 
 	pmu->genpd_data.domains[id] = &pd->genpd;
 	return 0;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
