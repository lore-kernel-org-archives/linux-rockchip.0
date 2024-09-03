Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E498ACD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6xsaxFoT9f0n2pFTgTA3uoHv20cQ6RPPDKLttkde6s=; b=TRT/9bwT+r7RTg
	8m9SdSPvkw85UdRdf9su+nqmuqUmH66QazlCzcbEU7cObGmpEEmfKlJZEBs0PJIJvP5O7DnW/Emy9
	w/tQ/zRES8P3sFEuPaF0ezhO0wh9yOB4/ea/k31S0nCTiZesyabwDLA4ybJatf4R/DL+XnFHQEc3y
	QNPerK8ViWqfrgcegp0cGWGCXPNtV0E+yS/45up432dBzMFnkzJqxq1oSPR3AiCG/B3Zti2xKUDnn
	6NrBC/or/tXmHdxvILTqLpn7bs1/pySt0dEp2DHoorAwYULYK+EAmLwRxidLioGx3sa0JwkktZsHr
	FNhmE2G/qu/vMrShCRqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOAh-0000000GjM2-0ccx;
	Tue, 03 Sep 2024 07:41:51 +0000
Received: from mail-m24122.xmail.ntesmail.com ([45.195.24.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6Q-0000000GiMh-41IY;
	Tue, 03 Sep 2024 07:37:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=eHCUsYDijVCUcxN5WpfM6rMoU/EtMl+FlpL0m4xDYX/kWcYs4aTZhpNYUnP864K/69dIWzDEpmNOtPg3TdSKD1ephNOcFUvyLoXvfLg7nfij5uiSrmanrAa9aTZs/2xewbQx5kp2QEA2QBbD1zIuH6qhP7Us7xa6TMzFDhCfzOo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=gdGxnEFCwoF+dZLxfO/pczGvZ3xJZOxamH4IgiqR/d4=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 046827E06E6;
	Tue,  3 Sep 2024 15:37:05 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: [PATCH v3 03/12] gpio: rockchip: resolve overflow issues
Date: Tue,  3 Sep 2024 15:36:40 +0800
Message-Id: <20240903073649.237362-4-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNNGlZJSxodSx0fGB5MSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0dbcf09cfkunm046827e06e6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MSI6CDo*EDI6PEkVSxxMFSke
	NTkwCktVSlVKTElOSE9CS0lMSElDVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUNPSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003727_445862_5C474F80 
X-CRM114-Status: UNSURE (   9.59  )
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

Prevent overflow issues when performing debounce-related calculations.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 5f60162baaeb..6dcb8bb0d1b4 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -22,6 +22,7 @@
 #include <linux/pinctrl/pinconf-generic.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/units.h>
 
 #include "../pinctrl/core.h"
 #include "../pinctrl/pinctrl-rockchip.h"
@@ -209,11 +210,12 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
-		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
+		div = (u64)(GENMASK(23, 0) + 1) * 2 * HZ_PER_MHZ;
+		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
 		if (debounce > max_debounce)
 			return -EINVAL;
 
-		div = debounce * freq;
+		div = (u64)debounce * freq;
 		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
 	} else {
 		div_debounce_support = false;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
