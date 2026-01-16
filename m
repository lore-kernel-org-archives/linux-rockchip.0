Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A2ECD47CAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 01:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdGWsXBReOEzNd5NrFniUnh2xPCiD30J/3M/a/aAtYI=; b=NRsMklrAa2X7Q/
	o+q2XQOie0QQUhLdJT7r/obHcfQvyPjwWVv9xGqwPzC8KYnLK5cx4+3+ESwo7GEaJjfYbiyeFxEQn
	5u7qwGu8Zufxt8C2HGrjoggaWGV9HVMqVleJeiTVf7c21FO8/7onCo+Tac5h+GeMbhiV1LMJO7gXF
	p6Wqm3Lo3odIQB7emWLu7c1dymlhNgbvZkWeq1NT9YdH6Y2339biJ5rzDNWzCrlrN1+0CUuMl9LHT
	37mkdg24nf1072kKtSo9gjFIgnDd/+A6nKfd/jS1/nROBcjWRtyDKHMU4ffzZfvR1ZorEweDkqqR9
	HvFqVTJVd+aa+03aOa5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgYCx-0000000DO7t-2oYA;
	Fri, 16 Jan 2026 01:00:59 +0000
Received: from mail-m1973186.qiye.163.com ([220.197.31.86])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgYCv-0000000DO4h-2ygc
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 01:00:59 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30d5a769d;
	Fri, 16 Jan 2026 08:55:51 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 2/5] soc: rockchip: grf: Support multiple grf to be handled
Date: Fri, 16 Jan 2026 08:55:29 +0800
Message-Id: <1768524932-163929-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bc44d2e2309cckunm67a197c8691bad
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtLGVZLGB1LGEwdTBpLSR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=D4kpb85qC2GrPpUTo4Nwi0DuT/hVkd2gHl0a1do9BUbM6W8IWVMuZuxD4YNnnsiAeOlzg9PNzaIw/5vcTupCkfnFq9GHpdtkqx3YifyRP3XEj35LO37jzdcFrV37Uq8SILLANMxGIeaJPIbXpBSR3yTncpcZXOnCJYMRB9h5EgU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7ONJa0WvvLpdHxmR7sI4inADE7R0rUhqKbxvZUom8Rw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_170057_930600_67774104 
X-CRM114-Status: GOOD (  14.93  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently, only the first matched node will be handled. This leads
to jtag switching broken for RK3576, as rk3576-sys-grf is found before
rk3576-ioc-grf. Change the code to scan all the possible node to fix
the problem.

Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---

Changes in v4:
- none

Changes in v3:
- remove of_node_put() (Heiko)

Changes in v2:
- use for_each_matching_node_and_match(Heiko)

 drivers/soc/rockchip/grf.c | 55 +++++++++++++++++++++++-----------------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 8974d1c..04937c4 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -217,34 +217,33 @@ static int __init rockchip_grf_init(void)
 	struct regmap *grf;
 	int ret, i;
 
-	np = of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
-					     &match);
-	if (!np)
-		return -ENODEV;
-	if (!match || !match->data) {
-		pr_err("%s: missing grf data\n", __func__);
-		of_node_put(np);
-		return -EINVAL;
-	}
-
-	grf_info = match->data;
-
-	grf = syscon_node_to_regmap(np);
-	of_node_put(np);
-	if (IS_ERR(grf)) {
-		pr_err("%s: could not get grf syscon\n", __func__);
-		return PTR_ERR(grf);
-	}
-
-	for (i = 0; i < grf_info->num_values; i++) {
-		const struct rockchip_grf_value *val = &grf_info->values[i];
-
-		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
-			val->desc, val->reg, val->val);
-		ret = regmap_write(grf, val->reg, val->val);
-		if (ret < 0)
-			pr_err("%s: write to %#6x failed with %d\n",
-			       __func__, val->reg, ret);
+	for_each_matching_node_and_match(np, rockchip_grf_dt_match, &match) {
+		if (!of_device_is_available(np))
+			continue;
+		if (!match || !match->data) {
+			pr_err("%s: missing grf data\n", __func__);
+			of_node_put(np);
+			return -EINVAL;
+		}
+
+		grf_info = match->data;
+
+		grf = syscon_node_to_regmap(np);
+		if (IS_ERR(grf)) {
+			pr_err("%s: could not get grf syscon\n", __func__);
+			return PTR_ERR(grf);
+		}
+
+		for (i = 0; i < grf_info->num_values; i++) {
+			const struct rockchip_grf_value *val = &grf_info->values[i];
+
+			pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
+				val->desc, val->reg, val->val);
+			ret = regmap_write(grf, val->reg, val->val);
+			if (ret < 0)
+				pr_err("%s: write to %#6x failed with %d\n",
+					__func__, val->reg, ret);
+		}
 	}
 
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
