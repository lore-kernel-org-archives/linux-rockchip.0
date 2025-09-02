Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37883CA1009
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 21:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:MIME-Version:Subject:Date
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vhDtYQXb1afDMoEznDqysNR0IC7S42YUGwPy6L84Euo=; b=3cAIQYb9a5dNQA
	flsPSNebLaxKm/aquPUw0QRYZ+19XB6TFybX1tgV5SYjQgz6WE9rnkP9cuM3fDtdBmVqj2Ht/l6hI
	+1xF/jURqOz8CZ1kmmuY+6Oa1DLdunD3hWq7mHXHoxmkeyu3wngU24y7pFmB1cZn/DCfjJUL9s/LC
	rcXSLh3GiNnBcmeEI8f+6/WXl43c1ouVJdPJlj3rQZgQTKq9YXLxQbtjqRCQMbCkrOARuK3ljpbe2
	6f4NZp3nZXgpuy0/mLCiy6HXUsvkBITQwrBd8s/BcUP9V0r3TNX49QFq7eQvtg5nsx5tYwwkd2YO+
	5FKT9KEmcT3dceXkCVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYpC-00000002Ef7-19I3;
	Tue, 02 Sep 2025 21:45:58 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utVfQ-00000001Ngt-1LSQ
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Sep 2025 18:23:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756837404; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iVaC1acz+cP2ZbGgsiwgo01uh/ELXH7m4/LAWjXSvaz47uaJMb2tsZOwpA9EMdRICSZMZtWP5LFhmXNM5rb0F5DW86rY04Qm6oEMYkWljZTZLpxcY7tJpexHerZK9JphzL09YFfW++8y7qI4rJ3OdVutRcxuE2VEijk/m3++Nb4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756837404; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BCFlD1zHgQgM4xri0/j82ex/DVmcdA0YHQ4MAtyH7xs=; 
	b=asOwdXhamGQusT7/wMBK3mxp0Jye+ZDAZN8aDoTpGXFxc0uoC4IpbcSQwPJVxztRcRparxiiE+j9rmuOxdJYnt7Gu6Wp3d00R0iwN1hhg5T6xWaU0shXHZqiwAOg/MlG7g3dqI0Xux7UZiWp39PamO66/529bK5mfZEvddWYGi4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756837404;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=BCFlD1zHgQgM4xri0/j82ex/DVmcdA0YHQ4MAtyH7xs=;
	b=OmAC73NJoqFQKkZxTWM+3KfV6EGtWhyv8kt0G/CjhzhvFcvW8UyMEOHxjcoA3N7F
	e73dZRt8XRh9rOWAQXEiMPCLQw1eol5TZlXby+f22f004zYxImj3KbTbwqTvaD6ORHm
	aNRuQipJseF15Ml9savpQ9KxIoFzkmzf33o9425I=
Received: by mx.zohomail.com with SMTPS id 1756837403727645.9913468928908;
	Tue, 2 Sep 2025 11:23:23 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 02 Sep 2025 20:23:04 +0200
Subject: [PATCH] pmdomian: core: don't unset stay_on during sync_state
MIME-Version: 1.0
Message-Id: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
X-B4-Tracking: v=1; b=H4sIAAc2t2gC/yWNQQ6CMBBFr9LM2jFttTRyFcOC1ik2CMUpEBPC3
 a2yfD9572+QiSNlqMUGTGvMMY0F1EmAf7ZjRxgfhUFLbeRNauT+YmyFr+T7ZUKmjin/JDROBRW
 cDUErKPrEFOLnn743BzO9l/IwHyO4NhP6NAxxrsVanZVF9ldo9v0LIgl9dpcAAAA=
X-Change-ID: 20250902-rk3576-lockup-regression-5b1f1fb7ff21
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_112340_434279_66F52EAD 
X-CRM114-Status: GOOD (  10.19  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This reverts commit de141a9aa52d6b2fbeb63f98975c2c72276f0878.

On RK3576, the UFS controller's power domain has a quirk that requires
it to stay enabled, infrastricture for which was added in Commit
cd3fa304ba5c ("pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()").

Unfortunately, Commit de141a9aa52d ("pmdomain: core: Leave powered-on
genpds on until sync_state") appears to break this quirk wholesale. The
result is that RK3576 devices with the UFS controller enabled but unused
will freeze once pmdomain shuts off unused domains.

Revert it until a better fix can be found.

Fixes: de141a9aa52d ("pmdomain: core: Leave powered-on genpds on until sync_state")
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/pmdomain/core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
index 0006ab3d078972cc72a6dd22a2144fb31443e3da..4eba30c7c2fabcb250444fee27d7554473a4d0c2 100644
--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -1357,7 +1357,6 @@ static int genpd_runtime_resume(struct device *dev)
 	return ret;
 }
 
-#ifndef CONFIG_PM_GENERIC_DOMAINS_OF
 static bool pd_ignore_unused;
 static int __init pd_ignore_unused_setup(char *__unused)
 {
@@ -1393,7 +1392,6 @@ static int __init genpd_power_off_unused(void)
 	return 0;
 }
 late_initcall_sync(genpd_power_off_unused);
-#endif
 
 #ifdef CONFIG_PM_SLEEP
 
@@ -3494,7 +3492,6 @@ void of_genpd_sync_state(struct device_node *np)
 	list_for_each_entry(genpd, &gpd_list, gpd_list_node) {
 		if (genpd->provider == of_fwnode_handle(np)) {
 			genpd_lock(genpd);
-			genpd->stay_on = false;
 			genpd_power_off(genpd, false, 0);
 			genpd_unlock(genpd);
 		}
@@ -3522,7 +3519,6 @@ static void genpd_provider_sync_state(struct device *dev)
 
 	case GENPD_SYNC_STATE_SIMPLE:
 		genpd_lock(genpd);
-		genpd->stay_on = false;
 		genpd_power_off(genpd, false, 0);
 		genpd_unlock(genpd);
 		break;

---
base-commit: 5cc61f86dff464a63b6a6e4758f26557fda4d494
change-id: 20250902-rk3576-lockup-regression-5b1f1fb7ff21

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
