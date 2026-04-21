Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD26F5A8D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 02:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/FoisSrjQ5Mc1JlAHb2NmqIvoiylqXX/4AX6PjM2/s=; b=vmU+P2tr+0omc/
	yb7kkMk+XD+e5C25CuO0QVmvwwJVX3lPsv0bV2eyQelscwGqQ7NQaNe9Nfgb6B27yZslG0MeTHPQZ
	Q14nf7wpUoS3i3FhVlldJrofKFqa2Ax50Yqpe0jNgWM/rLL/W91TYy8hlXXzjd20WFpapL/+pUPKl
	Vjmroqwcgb9uCgGDHv9r41NzIiSIEXPr9uanpTQ4viPB75zwMMv5HFxsmL59nKMGvzlhJS1ukVKmt
	b7RrTSNXpO6Wb3HtbrgyEqyeWVubtm9KnLl7HtUK6QX58TQ3NHLD9MbKz1FbJOaQ+G6yAnfTmdZvo
	B9zMIwYVr8aoq/JtasGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18t-00000007xTS-2kPw;
	Tue, 21 Apr 2026 02:47:15 +0000
Received: from mail-m15579.qiye.163.com ([101.71.155.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18r-00000007xSI-0ACb
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 02:47:14 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3b7d20866;
	Tue, 21 Apr 2026 10:47:04 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] mmc: core: Parse property for aggressive power management
Date: Tue, 21 Apr 2026 10:46:49 +0800
Message-Id: <1776739609-122962-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
References: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9dadef263909cckunme87b03509c077
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTktJVkoZTk0dT0IfTkxPQlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0hVSktLVU
	pCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CALqJQmg0t0xnbTiLJuR/8cJWyEyrOE0wya4UBAeTlwdmZw34wvCE3jHNi63ebIiJ7poTOYcvGmtUJS7XZrl3DUiqo0R8bNZf5+Snp+rtlA5k13xmcmijRHBrPKLr4Uel5P1PwbJOz7wxP3PS6zn0XvXsV5zUgbxqdb+qOqv2XQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Q5vdkvi3ASXv4JcxMeZ1av2GN07KB77EJsVrauqVbFM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_194713_267114_33194CB5 
X-CRM114-Status: GOOD (  11.79  )
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

Aggressive power management is a framework-level policy rather than
a host driver or controller-specific feature. Currently, this
capability must be enabled by individual host drivers, which has led
to inconsistent adoption and limited real-world testing. This
all-or-nothing approach is inflexible, as the optimal setting depends
on the specific product requirements and usage patterns.

Introduce a new device-tree property "cap-aggressive-pm" to allow
platform-specific configuration of the MMC_CAP_AGGRESSIVE_PM flag.
This enables more aggressive runtime power management strategies that
can significantly improve power efficiency in certain scenarios.

However, the benefits of this feature are highly workload-dependent.
While it reduces power consumption during idle periods, it may also
introduce additional resume latency from low-power states. Therefore,
it should be configurable rather than hardcoded, allowing different
products to balance power savings against performance requirements.

By exposing this as a device-tree property, system integrators can
selectively enable aggressive power management for specific products
or use cases where power savings outweigh potential performance impact.
For example, it could be enabled on battery-powered devices where
power efficiency is critical, but disabled on always-connected devices
where low latency is more important.

This change provides the flexibility needed to optimize for different
market segments and user scenarios without requiring driver modifications.
Existing drivers that previously set MMC_CAP_AGGRESSIVE_PM can now
remove those hardcoded settings in favor of device-tree configuration.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/mmc/core/host.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
index b7ce313..abe61c7 100644
--- a/drivers/mmc/core/host.c
+++ b/drivers/mmc/core/host.c
@@ -400,6 +400,8 @@ int mmc_of_parse(struct mmc_host *host)
 	if (device_property_read_bool(dev, "no-mmc-hs400"))
 		host->caps2 &= ~(MMC_CAP2_HS400_1_8V | MMC_CAP2_HS400_1_2V |
 				 MMC_CAP2_HS400_ES);
+	if (device_property_read_bool(dev, "cap-aggressive-pm"))
+		host->caps |= MMC_CAP_AGGRESSIVE_PM;
 
 	/* Must be after "non-removable" check */
 	if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
