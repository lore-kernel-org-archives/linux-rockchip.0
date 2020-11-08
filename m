Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 284E7C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 12:11:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5178D206E3
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 12:11:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qK4+ydJ2";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.com header.i=@suse.com header.b="EUV/I00A"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5178D206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JKNSjjVuZUiSiJel0+fkg1x4kZYUjM2KMH6iKeFN+fk=; b=qK4+ydJ21wILz1t9d3P4XcsVb+
	1Y3SnGf6IRWYhkKCpL3VaLxEbs4FFNTiTr/O/K5GcJ1caQMJrbO1Vl2hHyOK37/V9Ig8ygYHcV7hd
	K8JS4cmqhk1dt3uzHeQ2jfwdaai7NlgxzB+n4hfAXewwJ8EtZCdD+MJ3w8a1AKwvEnuH9d4otanou
	vsYE07rr3ydYF7ggkzDtxafvccI8fDcjZyAI9XpcG4rHqdVpYDi2RvSRA9v4Yb1Pia2Wt7OVzTkWP
	xNk6e4Fl6vdjREtdjBvd/lQ977/p1xeTbcFihxPHTx19ME1MP2Tg6xHSK6IcSVJbQmKLJ7zGJNMcV
	xzV3VjBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbjXL-0003Gg-AU; Sun, 08 Nov 2020 12:11:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbjXD-0003Fg-23; Sun, 08 Nov 2020 12:11:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1604837458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=LMxUbZmKpoftJaR4p1JKT4oaedBDHSwqphXapOjtz48=;
 b=EUV/I00AYACgE12fm4u9M/O0Tj6Jkp4uR/6sosnIyfQRS+SGQrnWyx2yGxNlXzPguXE/R+
 lb+b4ACmHCwVcNJQWwfrUXb97M5G2TLiU5vjsI/xep5osts9X0OYTyKv/qXey6p+dHYRyF
 r28PJcrwtGCgLfgmqiBnmRzjvpeGqLQ=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 8CE2FAB93;
 Sun,  8 Nov 2020 12:10:58 +0000 (UTC)
From: Qu Wenruo <wqu@suse.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: Rockchip: output proper error message for regulator error
Date: Sun,  8 Nov 2020 20:10:52 +0800
Message-Id: <20201108121052.240909-1-wqu@suse.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_071103_432002_391DB3DB 
X-CRM114-Status: GOOD (  16.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There is a regression caused by commit aea6cb99703e ("regulator: resolve
supply after creating regulator") which makes RK808 unable to register
its regulators.

This leads to vpcie1v8 and vpcie0v9 unable to be looked up, causing
rockchip pcie root controller unable to initialize.

At the same time, the dmesg shows nothing about the problem, making
debug much harder.

This patch will introduce a macro, rockchip_get_regulator(), which we
can get mandatory or optional regulator with just one line, with proper
error message when it goes wrong.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 58 ++++++++++++++-------
 1 file changed, 38 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 9705059523a6..981ea882ba26 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -578,6 +578,33 @@ static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
+#define rockchip_get_regulator(rockchip, name, optional)		\
+({									\
+	struct device *dev = rockchip->dev;				\
+	int ret = 0;							\
+									\
+	if (optional)							\
+		rockchip->name = devm_regulator_get_optional(dev,	\
+							     #name);	\
+	else								\
+		rockchip->name = devm_regulator_get(dev, #name);	\
+	if (IS_ERR(rockchip->name)) {					\
+		ret = PTR_ERR(rockchip->name);				\
+		if (ret != -ENODEV || !optional) {			\
+			dev_err(dev, "failed to get %s regulator: %d\n",\
+				#name, ret);				\
+		} else if (optional) {					\
+			dev_info(dev, "no %s regulator found, skip\n",	\
+				 #name);				\
+			ret = 0;					\
+		}							\
+	}								\
+	ret;								\
+});
+
+#define OPTIONAL	true
+#define MANDATORY	false
+
 /**
  * rockchip_pcie_parse_host_dt - Parse Device Tree
  * @rockchip: PCIe port information
@@ -586,7 +613,6 @@ static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
  */
 static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 {
-	struct device *dev = rockchip->dev;
 	int err;
 
 	err = rockchip_pcie_parse_dt(rockchip);
@@ -597,29 +623,21 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 	if (err)
 		return err;
 
-	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
-	if (IS_ERR(rockchip->vpcie12v)) {
-		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
-			return PTR_ERR(rockchip->vpcie12v);
-		dev_info(dev, "no vpcie12v regulator found\n");
-	}
+	err = rockchip_get_regulator(rockchip, vpcie12v, OPTIONAL);
+	if (err)
+		return err;
 
-	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
-	if (IS_ERR(rockchip->vpcie3v3)) {
-		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
-			return PTR_ERR(rockchip->vpcie3v3);
-		dev_info(dev, "no vpcie3v3 regulator found\n");
-	}
+	err = rockchip_get_regulator(rockchip, vpcie3v3, OPTIONAL);
+	if (err)
+		return err;
 
-	rockchip->vpcie1v8 = devm_regulator_get(dev, "vpcie1v8");
-	if (IS_ERR(rockchip->vpcie1v8))
-		return PTR_ERR(rockchip->vpcie1v8);
+	err = rockchip_get_regulator(rockchip, vpcie1v8, MANDATORY);
+	if (err)
+		return err;
 
-	rockchip->vpcie0v9 = devm_regulator_get(dev, "vpcie0v9");
-	if (IS_ERR(rockchip->vpcie0v9))
-		return PTR_ERR(rockchip->vpcie0v9);
+	err = rockchip_get_regulator(rockchip, vpcie0v9, MANDATORY);
 
-	return 0;
+	return err;
 }
 
 static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
