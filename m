Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 700ACECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pQgeC43rSEDcogqSv1qnLNLBCN2Px8l0pK8yA7nTow=; b=hbSYtMxh5EDOrw
	j4o2wd8qirIr/b+NcH53GYaz7UKVnRCychkL+kn3bHyPgux86zxrZoj1w4+VFGbjD1A3eN/y780MP
	S73hgTwqxqflvSViTbMY06vh2d8HZ0Anm+lLAxgXG/Nv/vPr5Vylt31FWR9A2qtk/m3CDrGe1YdyJ
	BETvQHkKzU5LMrKBud6LD1TRH8wzD31DCea8rAChBLn4XB/cBfG+U69vjaBqh3lREDQ2ys82G2ZvU
	Nl8Zx13xcEho1k9sMX2faYzWFEhqZQuYZnhpObZoJEro78Tb2l+2Dq2zm8ZQelewJQSn8z+NH0nng
	OdM8zNIkqzCt24GpVeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaZU-00Eq6A-RF; Tue, 06 Sep 2022 15:33:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZin-00ENd8-45; Tue, 06 Sep 2022 14:38:38 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B9B1E6601F53;
	Tue,  6 Sep 2022 15:38:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475111;
	bh=rEJ+pNRgdZef5+wO4r54ejoJ7KJfO0P7doJa8eL6Wuw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oG/1pdryq0W4USk2S0mao0jatNufCgOusiZAg6VoBMVR+ujICuGsiylHhqgMkz7Xe
	 /26yXVX9fcgqxDQsi79d/L75bGAM4AiM4KuS2x+1DM7w9/R2ZjuH0jGL24zBGHyEVZ
	 ZsSIKC5nFdXbfcGAZDV0897LiiGnKfpK5TU/I2Nhk/dme14i4qcHiARraVmStrS37x
	 uWg5huBmHbPQP5mv+JlntqGXq8LRMN3DMhAkAoMxZGA91GBJZM7RhRZF43d8Ud04sp
	 Hj3eREWKx0UVz50DLK3QNmOVneRUsMSZmmO3Qt/N//E+20bVEieJy0O2w1mNOfZYWz
	 kCUbMl9O3PRDw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 44902480170; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 5/6] soc: rockchip: power-domain: do not enable PD
Date: Tue,  6 Sep 2022 16:38:24 +0200
Message-Id: <20220906143825.199089-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073837_363648_F5D55A8A 
X-CRM114-Status: GOOD (  12.20  )
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
