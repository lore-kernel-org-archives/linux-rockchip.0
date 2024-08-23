Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C126C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/yERsiY26Vvsd79HJhnIgUZ+EQJz7TkEDkwuRny0gU=; b=gY2a43lebkBRzy
	Ennaz9BBIUJKyKtOsXLjVNKWzAuYWMyP7+JiTK/xyg3jSuBLglbktmfVo9EHindzB5pmoQ/BJj3QV
	Zl1EVXgn9X+ZWS0w/2jfqfBxMUZxKuRXzJVrhkU4GapgY3Lynqq+z3l0NnASlUQST+IJyhJFY2fJM
	baM5yH1dZ5Eo+tTMs04QpdZME7IgPsJjGxWJ9OoYVdskzgU84IkyXygJVDi+9gAciwD8/hl7nHYg6
	z1WWlgLeIuH1hBs/a67/ZYazlva6WcxcAu0snb5KEPs/sOeXKxdc/y4dEg7L2tIuuR/enJCgXuEVB
	+ZTwXZNvRTEHP9jvZJqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLHN-0000000F5lt-42ue;
	Fri, 23 Aug 2024 03:48:01 +0000
Received: from mail-m32103.qiye.163.com ([220.197.32.103])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F4zU-16z9;
	Fri, 23 Aug 2024 03:45:25 +0000
DKIM-Signature: a=rsa-sha256;
	b=U3IO2ifS7bZblh3ncfTheL87g+du6/V6JCW4kDK4mo0x8c9l1ZUFVVk9k7JaNuHnvk9D7ySpglR/VmbqGhDZSrWVhiJsJQZ4vLpcDlZ1YMCknJMKqa5obU3+ngZURhD+yH36/58ZkzqjjNqyDEaPjPjQ9ukB6EhTP/aSrtQsyeU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RWY1mGIMsLUT7JW6qJplDPglts8Ocj6h19INpsPBB+E=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id CBE9A7E039B;
	Fri, 23 Aug 2024 11:45:03 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
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
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: fix debounce calculate
Date: Fri, 23 Aug 2024 11:43:08 +0800
Message-Id: <20240823034314.62305-6-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgfHVYaGU9LSExCT01KGB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d56782309cfkunmcbe9a7e039b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PhA6Cgw4CTIrQywfCTY4TgkC
	EDkKCwNVSlVKTElPSENPTEtOS0tOVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUJOTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_718970_65EF870F 
X-CRM114-Status: GOOD (  10.91  )
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

The previous configuration ensured that signals with a duration greater
than the debounce value would always be detected, while signals with a
duration less than debounce / 2 would always not be detected. After the
modification, it is changed to ensure that signals with a duration greater
than 2 * debounce will always be detected, while signals with a duration
less than debounce/2 will still not be detected.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index c3a87d075908..c246f116a3b5 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -209,13 +209,13 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
-		div = (u64)(GENMASK(23, 0) + 1) * 2 * 1000000;
+		div = (u64)(GENMASK(23, 0) + 1) * 1000000;
 		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
 		if (debounce > max_debounce)
 			return -EINVAL;
 
 		div = (u64)debounce * freq;
-		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
+		div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC) - 1;
 	}
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
