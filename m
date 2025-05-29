Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A3D7C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 02:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h8pvU80cnP115JbuB3rVBQUu5Qox/N+i4+aPKS0lvjE=; b=kcR
	VvD3E2z1pP2+idYbDfYX7aR5F/bpSyDcFqx7WH2XRuystoXL7RTdCyXpxE/V49NFWJKsdgLOEglFg
	RAfywFK4Gwc5IIjgvd1cklYvQb9z/eOWNuf+DA2cetzVclwCAHJQnokkUmVZP3gVLZdjI4+3I2A+I
	KXeIloH4qiegjBMBbjjiPqZExEr1swS/Rw3Ox9NIO4KDFrjCp/qPwrvDn+tg6/gK75ryaJCihPJlA
	pt8MCcOpZ75L7Me8s/d8e/3wP8xqGeZycdoodVNJ9GX1CNm4Cp8o2xPlJu7TEgzXP5U+bjZi1qtKv
	J/wedjXxKd5WZ3Qb0+9hQ2pGbrZbTNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKSsh-0000000Ejmc-1Ced;
	Thu, 29 May 2025 02:20:31 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKSow-0000000EjRp-3kKb;
	Thu, 29 May 2025 02:16:40 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4b793G2LQgz8R044;
	Thu, 29 May 2025 10:16:26 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 54T2GG2H029125;
	Thu, 29 May 2025 10:16:16 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid32;
	Thu, 29 May 2025 10:16:17 +0800 (CST)
Date: Thu, 29 May 2025 10:16:17 +0800 (CST)
X-Zmail-TransId: 2afa6837c3712a5-4a972
X-Mailer: Zmail v1.0
Message-ID: <20250529101617844lQtR4fOKHch_xIBWSgzgX@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <ulf.hansson@linaro.org>
Cc: <heiko@sntech.de>, <sebastian.reichel@collabora.com>,
        <detlev.casanova@collabora.com>, <krzysztof.kozlowski@linaro.org>,
        <finley.xiao@rock-chips.com>, <shawn.lin@rock-chips.com>,
        <pgwipeout@gmail.com>, <linux-pm@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <yang.yang29@zte.com.cn>, <xu.xin16@zte.com.cn>,
        <yang.tao172@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?cG1kb21haW46IHJvY2tjaGlwOiBVc2Ugc3RyX29uX29mZigpIGhlbHBlciBpbsKgcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4oKQ==?=
X-MAIL: mse-fl1.zte.com.cn 54T2GG2H029125
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6837C37A.000/4b793G2LQgz8R044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_191639_084420_9ED24EFA 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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

From: Shao Mingyin <shao.mingyin@zte.com.cn>

Remove hard-coded strings by using the str_on_off() helper function.

Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/pmdomain/rockchip/pm-domains.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 4cce407bb1eb..0681c763f843 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -21,6 +21,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/mfd/syscon.h>
+#include <linux/string_choices.h>
 #include <soc/rockchip/pm_domains.h>
 #include <soc/rockchip/rockchip_sip.h>
 #include <dt-bindings/power/px30-power.h>
@@ -595,7 +596,7 @@ static int rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 					is_on == on, 0, 10000);
 	if (ret) {
 		dev_err(pmu->dev, "failed to set domain '%s' %s, val=%d\n",
-			genpd->name, on ? "on" : "off", is_on);
+			genpd->name, str_on_off(on), is_on);
 		return ret;
 	}

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
