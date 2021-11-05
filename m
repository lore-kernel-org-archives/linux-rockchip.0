Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D5DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:50:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E6DF60C51
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E6DF60C51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/E8QmDUUbhFdr/B2rLN/K2aT0612qPB57++rjysKqk=; b=I5VcMGOFlbbgVA
	MIICRn9oReTyxsRWh80XMCOpO7lkHqThZxiLSfdjYtsFoGC21TeLkIdHh2wzucvFLaPPOHfLZtT0A
	+miWqQLzDVy26tQ7gW/BUgRC4wecNKDne9eceAGHXX9B2bdp1AsSteJlbye7NpTt4Rb6Kn8CyIXLs
	Dpt2OgpgnO5KpQYQeeuZKDNsXeYJ9EazKvsjkbuJ9PlmyMh+epDiOdlawxjM+lz//3M1KR67YfOdi
	hNXg5xDAMnDGd5NbTTD5cXWQJQW2pitTLZH7BXqw+8f+t4DR/ObmbAR1rqExJOmPgb7mcTGH1wSd9
	mSSEKFB+7l7mH9fdXopQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyfl-00BKVi-Jl; Fri, 05 Nov 2021 12:50:21 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYr-00BGW6-S0; Fri, 05 Nov 2021 12:43:15 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="211941098"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="211941098"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="730520456"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 05 Nov 2021 05:43:09 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DDDE5ABE; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: [PATCH v1 17/19] pinctrl: st: Switch to use devm_kasprintf_strarray()
Date: Fri,  5 Nov 2021 14:42:40 +0200
Message-Id: <20211105124242.27288-17-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054313_941736_75E3370B 
X-CRM114-Status: GOOD (  13.82  )
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

Since we have a generic helper, switch the module to use it.

As a side effect, add check for the memory allocation failures and
cleanup it either in error case or when driver is unloading.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/pinctrl-st.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index 9cb0da88b098..0fea71fd9a00 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -1624,6 +1624,8 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 	for_each_child_of_node(np, child) {
 		if (of_property_read_bool(child, "gpio-controller")) {
 			const char *bank_name = NULL;
+			char **pin_names;
+
 			ret = st_gpiolib_register_bank(info, bank, child);
 			if (ret) {
 				of_node_put(child);
@@ -1632,10 +1634,16 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 
 			k = info->banks[bank].range.pin_base;
 			bank_name = info->banks[bank].range.name;
+
+			pin_names = devm_kasprintf_strarray(dev, bank_name, ST_GPIO_PINS_PER_BANK);
+			if (IS_ERR(pin_names)) {
+				of_node_put(child);
+				return PTR_ERR(pin_names);
+			}
+
 			for (j = 0; j < ST_GPIO_PINS_PER_BANK; j++, k++) {
 				pdesc->number = k;
-				pdesc->name = kasprintf(GFP_KERNEL, "%s[%d]",
-							bank_name, j);
+				pdesc->name = pin_names[j];
 				pdesc++;
 			}
 			st_parse_syscfgs(info, bank, child);
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
