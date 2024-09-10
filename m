Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89042EDE9AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNwE75YvgjqGqy8G0VUPo9eIOfH1BQJZiw7T1+p2/iw=; b=PwOYG+YM0lf0xS
	2AvltXCpIRgtJNLSTnB8KvfyTcKCvBH3TVtPsIfednlOeKGksJOFEXehOxf3wBRoWblgRgIbxfUny
	Lk01WrkeHfUmb0K7aGvarqVp7vZBKqCqElZYMYHwtoJQURFcYQw0qMu8eunymvOgwzSD9nPpS32zo
	wdPFJSDOgMeXtWuhLMv/TzJH5kF/UHiR0V3r/pbj5DSiqehnfo96akz4NvbkpSMQ3wgFnTYoLk3oe
	Z5k9arbv+tnb/HesndQYCsSOEbiQ9Fm9aun/yny21fhZvxLKsGnY8AwJ0qWxe6TCANOcBhKGLNu5i
	g/OzV/SHgZLQ6EFySHvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5FB-00000006h7j-2EhD;
	Tue, 10 Sep 2024 18:05:37 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5F8-00000006h5l-150Y
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725991532;
	bh=ROdzEuOGTsp3a69R5UZV8M059Hc5ky24ugLlzZvsygs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eYr0ZbDgCNWvwNy1Tm6DEd6qU1TrCZFW8Nap52sUy2bwHbQ/xI9M6bPDyJAExVsD2
	 9QzBT4qPGEQ9tNdR8u8Ig5XU5xEmnrYI2V1D0cCQxSFev8xAZoAP9Is9fJySiSU+o9
	 HS4+E5tf1mwdgZazm3tNyQASUHBrgTf3FLtNqlIrbOmPCBK7TYSqppu3H6Uy5Clxoj
	 /sefoFgb1HpVqRlMVfp+5Y9p2zwQYfVIIDF0rDRWo/HbAyE3E7RCV9h3NP/rfpifBl
	 43gPYSSEJ+VCwpyzDIM4797/+k2FZBQhCI39fOJ/cJuca4W1yrurqQ3P5q8UY0WyHY
	 7/HCe95mBDR1g==
Received: from jupiter.universe (dyndsl-091-248-215-127.ewe-ip-backbone.de [91.248.215.127])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D298317E35FC;
	Tue, 10 Sep 2024 20:05:31 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8E1EC4800F4; Tue, 10 Sep 2024 20:05:31 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 2/6] pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
Date: Tue, 10 Sep 2024 19:57:11 +0200
Message-ID: <20240910180530.47194-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240910180530.47194-1-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_110534_506312_A8F4D24F 
X-CRM114-Status: GOOD (  11.22  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 0f44d698475b..5e5291dedd28 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -535,13 +535,12 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
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
 
@@ -555,7 +554,6 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 		ret = rockchip_do_pmu_set_power_domain(pd, power_on);
 		if (ret < 0) {
 			clk_bulk_disable(pd->num_clks, pd->clks);
-			mutex_unlock(&pmu->mutex);
 			return ret;
 		}
 
@@ -569,7 +567,6 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
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
