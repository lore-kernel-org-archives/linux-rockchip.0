Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3227C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 13:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7qshkCyOpWd36j2udTmoOa49a2awkwyWaMmCFZCJ9eo=; b=GRc0S87tV/MyMp
	ScJ28x+frcpu1nfTQ+bsR5TAVBOV2xrgfmGyUVdp/LljMBk9fbipbLLY7+8u8YoMBcUtD2N2DiGsx
	fMVYMwF0nyxdH5Ne0BeHrYkkRUfJPQO47YBLJrRkjlP8aIWWg/nnfAudCESFzAV3VwEUATlHdcqHB
	oQBcMEqUro0AvLaXuNGRh54pjWEnQW22SP+rm+wdGQotA+KP4T+ObZ3GabcdMTqB575NvuLrPIvp4
	2Cw45rXDTc8UytN0upiVkgnVtuYp+KC9PZvLDi+jm6XD6iLzLxAGrR0131XfmJc8n6SdvrJWBTl5R
	/Y8H3R57dcNjNnrI462w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxvA-00FE62-Sz; Thu, 12 Jan 2023 13:47:08 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxua-00FDuw-0N; Thu, 12 Jan 2023 13:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1673531191; x=1705067191;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Dg7wbQ/f03u+4zmjcOXWKVMr24y9KJs4Ga7gh6SIJvM=;
  b=P7sfIvOLZfTHFHtrJe/PP38Nt1ILpV4IDBjvy4ZiN+U956rLIsJVg6Au
   AHvUXxxJgDDNLmZw9TPF7/ECeQgK3NJi9aUveVJwPxPbMExaI7F3uDxir
   K8bhe0MHJ/0mmGC5UvRbMkMVq4AqhG85qFF3859/EPlk0lB+R1U7BM6IK
   UKjuZFAanK9yB/AQ+2GGRFn8usUMkql5DvYKCKoJgABfU7mPUgaisvwgK
   3gk0RZ1iWNGOfysNrFPHDmGVX3bku7VGZ8kHHdufq2XfuV/BCY2njYbwb
   zOCFyNKbuh9adwbVkzUe0AovU2Oig03ovMAuZyonbMRmsVU0ev8MIPu7q
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="325729239"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; 
   d="scan'208";a="325729239"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2023 05:46:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="659787915"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; 
   d="scan'208";a="659787915"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmsmga007.fm.intel.com with ESMTP; 12 Jan 2023 05:46:24 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 16D18E1; Thu, 12 Jan 2023 15:46:58 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/1] gpio: rockchip: Do not mention legacy API in the code
Date: Thu, 12 Jan 2023 15:46:53 +0200
Message-Id: <20230112134653.59268-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_054632_149003_AE5049C1 
X-CRM114-Status: GOOD (  11.80  )
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

Replace mentioning of legacy API by the latest one.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 200e43a6f4b4..e5de15a2ab9a 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -299,7 +299,7 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 }
 
 /*
- * gpiolib gpio_to_irq callback function. Creates a mapping between a GPIO pin
+ * gpiod_to_irq() callback function. Creates a mapping between a GPIO pin
  * and a virtual IRQ, if not already present.
  */
 static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
