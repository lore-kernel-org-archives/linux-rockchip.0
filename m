Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A5FCD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0H+TWkL0UhYD78FEPEAQLfSKyuMYZ6Dofh6hydwS1c=; b=W14azWuvNhO9qr
	PBxK25iNHCpnCSad7nf32RWvckBJxoy/h99boyJ/3dAnhH3IFTgEqwNBrUrJlzaQR6sDv3ftcE8T4
	vcuTkKlw2TCia5VKTPH3Fi/YfRd1kltG91YI5Ew/G3G71K11pSI3v7xZjIoA5mPbotNJMAX+7sRM4
	jA9uvxNXNc5YMF+76txTLkzgOLsEQ3D98HuvVd/ePUQiQCNjz3BNyPBV51JOGDqgKcL7ElEFYkhoo
	6wbeaXFokNcg7GyfE8ouLPnPQ7Hf7vcIBDy69uUq4d2lpqhrXb3JVzYf947RA7zj0+T22dr8zSSTn
	mOVv46NMafS0UuriBcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO7A-0000000GiYv-3oXa;
	Tue, 03 Sep 2024 07:38:12 +0000
Received: from mail-m1287.netease.com ([103.209.128.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6Q-0000000GiKr-29f7;
	Tue, 03 Sep 2024 07:37:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=H9poSmo4xSa6QADD84RJSRUCKv1ladIurqaxJKovOewpQjJDG6iFTbvjUgygFdLECHeilF/Ia8D5sWJVJLst18w6RrmG9ZBRwJ5YpGlVqoRmRkh5LQDrSOYiWussNGAq+oS5YVStHbw2kxu+vxjZ4rat8EXYuCHYaCyysrijRio=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7nRvTAtpOVPJggbNeOvMCvQZFTSEWKhokB5ph5TViJI=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 342397E05B6;
	Tue,  3 Sep 2024 15:37:10 +0800 (CST)
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
Subject: [PATCH v3 06/12] gpio: rockchip: Update debounce config function
Date: Tue,  3 Sep 2024 15:36:43 +0800
Message-Id: <20240903073649.237362-7-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0fS1ZJSUMeHR8fT0JPHx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0ebff09cfkunm342397e05b6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6Ayo5KDI8MElDLBwtFR4r
	SRpPCjNVSlVKTElOSE9CS0hKTktKVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEhKTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003726_846536_5B60D226 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the GPIO with version number 0x01000C2B, debounce configuration is
already supported.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 75355f799751..2e80f28bb0c4 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -254,6 +254,8 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 			clk_prepare_enable(bank->db_clk);
 		else
 			clk_disable_unprepare(bank->db_clk);
+	} else {
+		return -ENOTSUPP;
 	}
 
 	return 0;
@@ -282,22 +284,11 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 				  unsigned long config)
 {
 	enum pin_config_param param = pinconf_to_config_param(config);
+	unsigned int debounce = pinconf_to_config_argument(config);
 
 	switch (param) {
 	case PIN_CONFIG_INPUT_DEBOUNCE:
-		rockchip_gpio_set_debounce(gc, offset, true);
-		/*
-		 * Rockchip's gpio could only support up to one period
-		 * of the debounce clock(pclk), which is far away from
-		 * satisftying the requirement, as pclk is usually near
-		 * 100MHz shared by all peripherals. So the fact is it
-		 * has crippled debounce capability could only be useful
-		 * to prevent any spurious glitches from waking up the system
-		 * if the gpio is conguired as wakeup interrupt source. Let's
-		 * still return -ENOTSUPP as before, to make sure the caller
-		 * of gpiod_set_debounce won't change its behaviour.
-		 */
-		return -ENOTSUPP;
+		return rockchip_gpio_set_debounce(gc, offset, debounce);
 	default:
 		return -ENOTSUPP;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
