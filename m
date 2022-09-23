Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5273ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 14:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSGbSa51tI34b/+9bL/sPwVYBFbKSCnLM3G2CetpvSc=; b=sEWPVAIKwuAAPz
	dkKga78rG4VoOg3tu8JYLHhPb29XmekAOjwOc4lEEoNan0URBsT73bAwa2k8ilJGouDCr5gvmIMsq
	hLEaAAUk3CvH/ZeH8TBnu4Rhi6JmcIl4y17qFW2+OKrzpOODDvpjnS0q0bPn2RxmkFGEYk9Zfail4
	65ZsIJ6KymqOT8d7vKzqifZfzjUGj0+Nu6/yWGrJ7yFX81dpKlaB5+BbST5X/9YTV8lvMnVZFC3cr
	DGqOxNTZY0tf6jVCH9/Y5dNd3EbUVZYqhau8iIDruU1uodJ++vcpYmVEdel7kHPiHOC73lhx+UHtw
	bOLBwDS89tOMHnglC7Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obk2b-004hL3-L3; Fri, 23 Sep 2022 14:52:33 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obk2H-004hD6-Iz; Fri, 23 Sep 2022 14:52:15 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2949860002;
	Fri, 23 Sep 2022 14:52:05 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	jay.xu@rock-chips.com,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	foss+kernel@0leil.net,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] pinctrl: rockchip: add pinmux_ops.gpio_set_direction callback
Date: Fri, 23 Sep 2022 16:51:40 +0200
Message-Id: <20220923145141.3463754-2-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220923145141.3463754-1-foss+kernel@0leil.net>
References: <20220923145141.3463754-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_075213_809592_BAAD393E 
X-CRM114-Status: GOOD (  11.01  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Before the split of gpio and pinctrl sections in their own driver,
rockchip_set_mux was called in pinmux_ops.gpio_set_direction for
configuring a pin in its GPIO function.

This is essential for cases where pinctrl is "bypassed" by gpio
consumers otherwise the GPIO function is not configured for the pin and
it does not work. Such was the case for the sysfs/libgpiod userspace
GPIO handling.

Let's re-implement the pinmux_ops.gpio_set_direction callback so that
the gpio subsystem can request from the pinctrl driver to put the pin in
its GPIO function.

Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 32e41395fc768..c84bd0e1ce5a6 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2393,11 +2393,24 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
 	return 0;
 }
 
+static int rockchip_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
+					   struct pinctrl_gpio_range *range,
+					   unsigned offset,
+					   bool input)
+{
+	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
+	struct rockchip_pin_bank *bank;
+
+	bank = pin_to_bank(info, offset);
+	return rockchip_set_mux(bank, offset - bank->pin_base, RK_FUNC_GPIO);
+}
+
 static const struct pinmux_ops rockchip_pmx_ops = {
 	.get_functions_count	= rockchip_pmx_get_funcs_count,
 	.get_function_name	= rockchip_pmx_get_func_name,
 	.get_function_groups	= rockchip_pmx_get_groups,
 	.set_mux		= rockchip_pmx_set,
+	.gpio_set_direction	= rockchip_pmx_gpio_set_direction,
 };
 
 /*
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
