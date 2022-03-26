Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A9C7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 18:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5F0qIgbya1p3KxjWsWiSbwKjI0g1p1yKHwuq+1a1ARI=; b=bMGJpXethJHqo6
	hzxnAshgEZrcmuLGgGEEH2dzdSy4HVXvuanjyrcn8bjbnxcJeBrxn9gotMWD/NrFIqssRUkBa569J
	CQLNc3Sc8KnCI/1T7jh9HrgGh9LSpkJZI1D5tcqjsUeYdMgDeVNsBt+j3lhwkHAhaKatwH4JQr7A3
	dcm5K4F2mHTipGXpfqWKqlvuxpPEBvHR3DQ8+OijVXPqca6HSRxJ6b6Kotm3GsepO2tRc4MqCbSSo
	5NHdduVau1hbw8iOS0AaiRkOh89R2KiiZLYJke/uaT4HlRiVDlGprZKBy5CixivKcS+xjsKyfh5Ty
	qaJKkt90gCCKMlCcU16Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYBGI-004hd9-RC; Sat, 26 Mar 2022 18:35:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYBFn-004hL5-Uj; Sat, 26 Mar 2022 18:35:13 +0000
Received: from localhost (unknown [IPv6:2a02:3030:b:56bb:4cb:3227:231:99f8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A6FA11F44FBF;
 Sat, 26 Mar 2022 18:35:10 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648319710;
 bh=Yjl46ueIb8FFOE6LTpGiYGQrCe+XfsGRJYwSzV+wGB4=;
 h=From:To:Cc:Subject:Date:From;
 b=jwPvrKO+8Bji2v6cwz+sxa4KmWJgjaeLsupN01ijooDIOyvMN4hzHpfLJJ1CDYGJr
 kvn/jLVOrZ3VCM+3IlgSoFr1HbGa4ZIJE/LgF1Uepqo6PCDSosuwF9jkjFq91Nm4VF
 Z4awMbpz44LyFq2WqyY5kSCauD08V1Wy5OaY0VbbC9ejFdtA5n/eFbiLy5H1Lqp6Sn
 l4r9JWTiXRe7/NEAf1ztEmiugEms6BMgGcM7W0+6hj5Q5trUlVsI6KW4cP/V3YOszO
 t3e9t711npz2pKT4LUYnBDujC6HhPPOqUkget9o4U/Awcy2py+O92jj7PIYAcgd/pT
 E+FWnr6NBssAw==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] soc: rockchip: pm_domains: Fix typo in comment
Date: Sat, 26 Mar 2022 19:34:50 +0100
Message-Id: <20220326183451.66115-1-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_113512_141727_9E9A4F52 
X-CRM114-Status: GOOD (  10.69  )
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

s/eject devices form power domain/eject devices from the power domain/

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/soc/rockchip/pm_domains.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 0868b7d406fb..1b029e494274 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -1068,9 +1068,9 @@ static struct platform_driver rockchip_pm_domain_driver = {
 		.name   = "rockchip-pm-domain",
 		.of_match_table = rockchip_pm_domain_dt_match,
 		/*
-		 * We can't forcibly eject devices form power domain,
-		 * so we can't really remove power domains once they
-		 * were added.
+		 * We can't forcibly eject devices from the power
+		 * domain, so we can't really remove power domains
+		 * once they were added.
 		 */
 		.suppress_bind_attrs = true,
 	},
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
