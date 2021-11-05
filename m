Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72479C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:52:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EA1060EE9
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:52:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2EA1060EE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldaMgQt4DzhiLjynWSbLm145RbcZizGQ3PWESpbFpn8=; b=oXNhZPXVEC/ic4
	fmfwlLwgjKV7r3u6n3vkYA/mlRc9+u275TqqwoWJpEX0/d17KSZUhKWwbe76mYmcpdRm5Xw9ZTmW0
	hZung1fpgjDei/Bvmd/qA6m0ilYegOxlsGpyWFJVPHdquxRtkFQDai+OmW/vUy3wpxphkqnXj2NWG
	8fWWz8oFgjOaSYz0/vnlA5hpMMQay0PEpcke4WCUQXEdHA7xbDOaJCjxccXhoVpOt57HAVTgqgiZf
	/LG5rPich+fLDGFrj29JmcwFDdWH93WX16Dq8F6gJzNuSav5JbKlG9uQ59hNKkbtbbnd8KPwphjoA
	O1j0xlO6g19yW+zXzDhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyi7-00BLeh-NY; Fri, 05 Nov 2021 12:52:47 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYv-00BGak-74; Fri, 05 Nov 2021 12:43:18 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255539442"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255539442"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="490310854"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 05 Nov 2021 05:43:10 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id F15A8B0F; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 19/19] gpio: mockup: Switch to use kasprintf_strarray()
Date: Fri,  5 Nov 2021 14:42:42 +0200
Message-Id: <20211105124242.27288-19-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054317_306756_5777609E 
X-CRM114-Status: GOOD (  13.52  )
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
No functional change intended.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpio/gpio-mockup.c | 23 +----------------------
 1 file changed, 1 insertion(+), 22 deletions(-)

diff --git a/drivers/gpio/gpio-mockup.c b/drivers/gpio/gpio-mockup.c
index d26bff29157b..8943cea92764 100644
--- a/drivers/gpio/gpio-mockup.c
+++ b/drivers/gpio/gpio-mockup.c
@@ -491,27 +491,6 @@ static void gpio_mockup_unregister_pdevs(void)
 	}
 }
 
-static __init char **gpio_mockup_make_line_names(const char *label,
-						 unsigned int num_lines)
-{
-	unsigned int i;
-	char **names;
-
-	names = kcalloc(num_lines + 1, sizeof(char *), GFP_KERNEL);
-	if (!names)
-		return NULL;
-
-	for (i = 0; i < num_lines; i++) {
-		names[i] = kasprintf(GFP_KERNEL, "%s-%u", label, i);
-		if (!names[i]) {
-			kfree_strarray(names, i);
-			return NULL;
-		}
-	}
-
-	return names;
-}
-
 static int __init gpio_mockup_register_chip(int idx)
 {
 	struct property_entry properties[GPIO_MOCKUP_MAX_PROP];
@@ -538,7 +517,7 @@ static int __init gpio_mockup_register_chip(int idx)
 	properties[prop++] = PROPERTY_ENTRY_U16("nr-gpios", ngpio);
 
 	if (gpio_mockup_named_lines) {
-		line_names = gpio_mockup_make_line_names(chip_label, ngpio);
+		line_names = kasprintf_strarray(GFP_KERNEL, chip_label, ngpio);
 		if (!line_names)
 			return -ENOMEM;
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
