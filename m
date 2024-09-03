Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A093CD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7Wz1G1edScfjhAcmiOrVffoOLSPU21yPwyE3X/z3M0=; b=F7HXXqfyV6tkVd
	fMslNDCpb1Lm2tDqor63vxhj8Mg/ve7R2qsODxHgLQFFdJWjAHu/HwgAwYjH8inQmUapF0BIGdlyf
	bK3sX64UUyyADnFsEb9YpRuV6bk3llMKSdxZalaoU+b9H4AKSJF8IMJQLwi+4axs8HsZibzeW8Es4
	vRRClfZ00PD5h+UzGLQYmh5mq2eGnNaXTpi9bmLNfvgIzeaJ/QJxLRs50eDuVDDgOQcS5/Ky0Sx92
	L7/FlT0XCdcjLV/HepKUblCBEePfmdJ+43lZ1xrO0Mmfx7Z/LGkPNfzKwFpN2PZL7gj70xtFo1txS
	66jAR3xYZEWKImKzOB3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOAg-0000000GjLj-3GjF;
	Tue, 03 Sep 2024 07:41:50 +0000
Received: from mail-m1287.netease.com ([103.209.128.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6R-0000000GiK7-2s5g;
	Tue, 03 Sep 2024 07:37:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=a4ohL4HlhTGP0jZauLjo3lFgPfY9LKR56FWV/mpCdiukP1y4Z1B2Its+Wx5Onl0z2/qCz8veBBULfNMFBVXUfbGBHqjSlKjSz8dyz5rw1H8XQWV5G7b+x0Ht4u8UZ2WCvGDPpJNO7pTMK81jHObSG1dB/JjGp1GZxVVhyFNnPG4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tuUUQKIit1GImHErvUOMrTxOdciWFx+2Duf2CiFkka8=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 6C1FB7E0196;
	Tue,  3 Sep 2024 15:37:07 +0800 (CST)
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
Subject: [PATCH v3 04/12] gpio: rockchip: resolve underflow issue
Date: Tue,  3 Sep 2024 15:36:41 +0800
Message-Id: <20240903073649.237362-5-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9JTVYeHk9JTxlNQx9CHk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0e13409cfkunm6c1fb7e0196
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OSo6DAw4EzI9EklKFhwoFSEs
	TjwwCxpVSlVKTElOSE9CS0lDTE5MVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUxCQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003728_018658_83726F69 
X-CRM114-Status: UNSURE (   8.73  )
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

div_reg may be < 0 if debounce is zero, causing the unsigned int to
overflow.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 6dcb8bb0d1b4..26191197cd37 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -205,8 +205,11 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	unsigned int cur_div_reg;
 	u64 div;
 
-	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
+	if ((bank->gpio_type == GPIO_TYPE_V2) && !IS_ERR(bank->db_clk))
 		div_debounce_support = true;
+	else
+		div_debounce_support = false;
+	if (debounce && div_debounce_support) {
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
@@ -217,8 +220,6 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 
 		div = (u64)debounce * freq;
 		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
-	} else {
-		div_debounce_support = false;
 	}
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
