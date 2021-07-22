Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CE7CC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:50:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8E1C60EB1
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:50:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D8E1C60EB1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESFkZzrZIFgC366te1FHcZ1IT8B5eQa+Dk/x17UZO00=; b=fw26/zTUq0rPZN
	3Z9OMKg4DRIFBd7LnM4PFSBG7YD89n5doVKXrBxuSytqpnNbYYV85wAmUt4EStyN54GTpsyXC8YlN
	amyE2KiH0GRPTd3pkJlBwaBkhYBRo6EkWo2/pBJhdEv8sY6aGW0iUJc+NJgE7pUxkddGa8XAOgjLz
	OuutBv5YjyzE5QyN1HqHVNayNeIy18kohtT+NAlxbv60/vDnLYVy8L1MSMkDAoVOTH319AzWB5f5I
	k7Um8FZHB1S81PyuNxluUne7XbvoYmOlI6W2k0JESXDFuRrZQWtWXAGWp6HOY3vWcyf/3M1hQ3ZH3
	NrYhwVkGM0oPZZ0Mb0kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6eiA-002c5P-At; Thu, 22 Jul 2021 19:50:26 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ehu-002c1a-Tq; Thu, 22 Jul 2021 19:50:12 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211788895"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="211788895"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 12:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="662827757"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 22 Jul 2021 12:50:02 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 99A94217; Thu, 22 Jul 2021 22:50:30 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Liu Ying <victor.liu@nxp.com>
Subject: [PATCH v3 3/4] clk: fractional-divider: Introduce POWER_OF_TWO_PS flag
Date: Thu, 22 Jul 2021 22:50:09 +0300
Message-Id: <20210722195010.45940-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210722195010.45940-1-andriy.shevchenko@linux.intel.com>
References: <20210722195010.45940-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_125011_052900_0B606D6C 
X-CRM114-Status: GOOD (  17.82  )
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

The newly introduced POWER_OF_TWO_PS flag, when set, makes the flow
to skip the assumption that the caller will use an additional 2^scale
prescaler to get the desired clock rate.

Reported-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v3: inverted the flag, so by default it will be pure m/n divider (Liu)
 drivers/acpi/acpi_lpss.c             |  4 ++--
 drivers/clk/clk-fractional-divider.c | 10 ++++++----
 drivers/mfd/intel-lpss.c             |  3 ++-
 include/linux/clk-provider.h         |  7 +++++++
 4 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/acpi/acpi_lpss.c b/drivers/acpi/acpi_lpss.c
index 7f163074e4e4..30b1f511c2af 100644
--- a/drivers/acpi/acpi_lpss.c
+++ b/drivers/acpi/acpi_lpss.c
@@ -436,8 +436,8 @@ static int register_device_clock(struct acpi_device *adev,
 		if (!clk_name)
 			return -ENOMEM;
 		clk = clk_register_fractional_divider(NULL, clk_name, parent,
-						      0, prv_base,
-						      1, 15, 16, 15, 0, NULL);
+						      CLK_FRAC_DIVIDER_POWER_OF_TWO_PS,
+						      prv_base, 1, 15, 16, 15, 0, NULL);
 		parent = clk_name;
 
 		clk_name = kasprintf(GFP_KERNEL, "%s-update", devname);
diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 53943f45b1ca..ae1927f9c08b 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -76,16 +76,18 @@ void clk_fractional_divider_general_approximation(struct clk_hw *hw,
 						  unsigned long *m, unsigned long *n)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	unsigned long scale;
 
 	/*
 	 * Get rate closer to *parent_rate to guarantee there is no overflow
 	 * for m and n. In the result it will be the nearest rate left shifted
 	 * by (scale - fd->nwidth) bits.
 	 */
-	scale = fls_long(*parent_rate / rate - 1);
-	if (scale > fd->nwidth)
-		rate <<= scale - fd->nwidth;
+	if (fd->flags & CLK_FRAC_DIVIDER_POWER_OF_TWO_PS) {
+		unsigned long scale = fls_long(*parent_rate / rate - 1);
+
+		if (scale > fd->nwidth)
+			rate <<= scale - fd->nwidth;
+	}
 
 	rational_best_approximation(rate, *parent_rate,
 			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
diff --git a/drivers/mfd/intel-lpss.c b/drivers/mfd/intel-lpss.c
index a9bf10bee796..0e15afc39f54 100644
--- a/drivers/mfd/intel-lpss.c
+++ b/drivers/mfd/intel-lpss.c
@@ -301,7 +301,8 @@ static int intel_lpss_register_clock_divider(struct intel_lpss *lpss,
 
 	snprintf(name, sizeof(name), "%s-div", devname);
 	tmp = clk_register_fractional_divider(NULL, name, __clk_get_name(tmp),
-					      0, lpss->priv, 1, 15, 16, 15, 0,
+					      CLK_FRAC_DIVIDER_POWER_OF_TWO_PS,
+					      lpss->priv, 1, 15, 16, 15, 0,
 					      NULL);
 	if (IS_ERR(tmp))
 		return PTR_ERR(tmp);
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index acb8e10d2898..d63d07fd251b 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1001,6 +1001,12 @@ struct clk_hw *devm_clk_hw_register_fixed_factor(struct device *dev,
  * CLK_FRAC_DIVIDER_BIG_ENDIAN - By default little endian register accesses are
  *	used for the divider register.  Setting this flag makes the register
  *	accesses big endian.
+ * CLK_FRAC_DIVIDER_POWER_OF_TWO_PS - By default the resulting fraction might
+ *	be saturated and the caller will get quite far from the good enough
+ *	approximation. Instead the caller may require, by setting this flag,
+ *	to shift left by a few bits in case, when the asked one is quite small
+ *	to satisfy the desired range of denominator. It assumes that on the
+ *	caller's side the power-of-two capable prescaler exists.
  */
 struct clk_fractional_divider {
 	struct clk_hw	hw;
@@ -1022,6 +1028,7 @@ struct clk_fractional_divider {
 
 #define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
 #define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
+#define CLK_FRAC_DIVIDER_POWER_OF_TWO_PS	BIT(2)
 
 struct clk *clk_register_fractional_divider(struct device *dev,
 		const char *name, const char *parent_name, unsigned long flags,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
