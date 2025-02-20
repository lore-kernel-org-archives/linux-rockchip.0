Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88FC3C021B5
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NDvCpbZXAODum1xTQgKwZ7qBfRfzCLkEz9rbmCIZB0=; b=evOsuc1oeiw54l
	VKn67afe37BMsQxO3+maQSysId2JbO05Ma7gtol3tu+zos0weHH/fk2gr9FCW+j4laQMGQ8/A0OPA
	oq2txSRn9j+/jH/ia9eV47lnpYrvArpbTXk4AmAnL9Wj6Vj6tOCaGrhwI5aBECA/FMxGcJK2JTQCp
	3g+N3clQrdiqRS3MUPyEjaPmCFJ8+z+1I2241QMJUtkpew9I8koEhDTKS05Wr9oGcWfjENTDzdQvc
	Lb5Eu3tuwVr3VzPshmYHhbJN9Aa/v8zMqB32z/mEwZ7A5CR8mJeeA923I+PCQ3bb11xiyHHSL+hG0
	TypFPuyXvlrvWsoKYnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBla-00000002Unc-24BF;
	Thu, 20 Feb 2025 18:59:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBkp-00000002UaO-1sID
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077913;
	bh=wvIAJI+i4HZNVWYYxGJdrqYngwnW4qGYFAI663giHWU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qQyPpIoxgzy2FNYqeOlBs64+FG6DDYljtRA8bDwxluJ33EHKo67PFQp+QdV7HQZPm
	 LwSb+4D67G6LVXtmJr+surXdM2N4Kn8CI9Q1fPhiJSJyihr9rPx9lRKGutfFGinmpf
	 PXgMdYSNj5RQzsJqIKTkxw1pN3/ELBwtUqjPR/VXvmvHwOH+jX3gbAxURzeoVK+adZ
	 eBY1rzmjVS/sA1vepWq6LbNuoCzLS6WHIz9BwjYhM+dHFfXKsJ3DGxgidrKvdvD0RO
	 8UXOxB9GYWbYUgxQhzC9leyBrACe5ldNAamElvqIsmT90vYeygziAix1IG76rXsBNO
	 9AG+JPtpG/JUg==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5FBA217E1571;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0D8EA480038; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:06 +0100
Subject: [PATCH v6 3/8] pmdomain: rockchip: forward
 rockchip_do_pmu_set_power_domain errors
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-3-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
To: Mark Brown <broonie@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 =?utf-8?q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Peter Geis <pgwipeout@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Vignesh Raman <vignesh.raman@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3000; i=sre@kernel.org;
 h=from:subject:message-id; bh=wvIAJI+i4HZNVWYYxGJdrqYngwnW4qGYFAI663giHWU=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1haoFSV/5aQeWUaz8Vpy8SFKqIjcV2DF
 bnSYcqEi4L0+okCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qap1sP/jpd+zTf8V2WvUrk+nDNSci07OBxQ+NkbESdvzuvR/cGGEUYCkpZB2B89Ed/MJLmIk6
 ZzQLw0NQYbGPiRqTy8xM6m8zd+C0kxf6URp0igK69lKcB0nQKtU0GDtc8gpDkPnQuBhRlwfjnaQ
 acWhlUYNULlZvPCh8emd8IsHn0jzbtXH95Zvel0jC1ffQ21gmvZhnodF4/789CdHOdzP1hiedjG
 4GAzzes2bjQdpOp+r1AjhwONWVq5ftb3U3uCuxOnHHjUro9No+GWzYEKnnQ1RJTz2xJ+8yhx01T
 n1Dcy0vbGVa7CbeVw1bxyhjPY9utSos6te2lXvwk/I13UVW0TAuo4C8iBPbCe8CzGSlUHvOZkJ3
 nd3QRTMz2vLK0W9XdwGbEdWNIKiTrj/ux/kPHmGNdm9wmNK0QD0XaFzRhtXeugT9JPjYcWb88b/
 rtA/gl8q+ls960qz5hALSbjoDeg8oWEIrWR2M2Hd9yGX38Unty10GP2UyW5mlrDdKZTKcfhY1c+
 nC0uAse0Mp+f8BBzBtchk3TnSKsch8vYpH7JEkZEvBV/Sx6usmZq4eWTEJmL7RCzZ5SiUOi3esD
 +7ECP8U3+UFKgrBXb4bTuThLcKJlcRozr+vA7R77kzFWQJ9vTWTx9TsW+fdS+iAo0SQwGOghokp
 pk6E6XgrRpXoT/r6kJVo0sw==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105835_669307_418CF7BD 
X-CRM114-Status: GOOD (  17.57  )
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

Currently rockchip_do_pmu_set_power_domain prints a warning if there
have been errors turning on the power domain, but it does not return
any errors and rockchip_pd_power() tries to continue setting up the
QOS registers. This usually results in accessing unpowered registers,
which triggers an SError and a full system hang.

This improves the error handling by forwarding the error to avoid
kernel panics.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index a161ee13c63362ca8ee0f79090a2a8d4db18a591..8f440f2883db88e22fde7ed9b235982d3030416e 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -533,16 +533,17 @@ static int rockchip_pmu_domain_mem_reset(struct rockchip_pm_domain *pd)
 	return ret;
 }
 
-static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
-					     bool on)
+static int rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
+					    bool on)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
 	struct generic_pm_domain *genpd = &pd->genpd;
 	u32 pd_pwr_offset = pd->info->pwr_offset;
 	bool is_on, is_mem_on = false;
+	int ret;
 
 	if (pd->info->pwr_mask == 0)
-		return;
+		return 0;
 
 	if (on && pd->info->mem_status_mask)
 		is_mem_on = rockchip_pmu_domain_is_mem_on(pd);
@@ -557,16 +558,21 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 
 	wmb();
 
-	if (is_mem_on && rockchip_pmu_domain_mem_reset(pd))
-		return;
+	if (is_mem_on) {
+		ret = rockchip_pmu_domain_mem_reset(pd);
+		if (ret)
+			return ret;
+	}
 
-	if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
-				      is_on == on, 0, 10000)) {
-		dev_err(pmu->dev,
-			"failed to set domain '%s', val=%d\n",
-			genpd->name, is_on);
-		return;
+	ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
+					is_on == on, 0, 10000);
+	if (ret) {
+		dev_err(pmu->dev, "failed to set domain '%s' %s, val=%d\n",
+			genpd->name, on ? "on" : "off", is_on);
+		return ret;
 	}
+
+	return 0;
 }
 
 static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
@@ -592,7 +598,11 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 			rockchip_pmu_set_idle_request(pd, true);
 		}
 
-		rockchip_do_pmu_set_power_domain(pd, power_on);
+		ret = rockchip_do_pmu_set_power_domain(pd, power_on);
+		if (ret < 0) {
+			clk_bulk_disable(pd->num_clks, pd->clks);
+			return ret;
+		}
 
 		if (power_on) {
 			/* if powering up, leave idle mode */

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
