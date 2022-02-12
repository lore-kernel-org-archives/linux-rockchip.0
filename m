Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA24C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Feb 2022 20:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yrUv7XYPW+Rb4vcCcmmfEd2BDR671/1R3rAtST9wi5Y=; b=3shH+7Em7qKLDm
	kG0O44pvNwo4TW18swgbsx0XJE2C1y0pcOEc+mJalryyS2PfRyUn4Csp5xxF3YkrQTrHnn7yAdI6a
	WMErIZ0VkrKRkm5YUy/lehSnA1BJU/Q7ulNVaibnYV3Ah03GAjnLnmZXHcz1YMhJXjLq6fFLKd3VQ
	TxOFtTgyl4aPDjKbkNeOabfO80wnff1lJQvlKlh1aOaKSJXzRaT62paR6J59BVIt/O65jp5akNQIe
	BcxvieNXRQ87t2LyaqyFbGHzePDZjJIdaHYoOCMphwG5O7mTx7aBmuTdYW4CfiXYZKzG0S4FFormk
	8LOUwcbYNu78C+Y/AdOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIzMK-00AWAJ-CZ; Sat, 12 Feb 2022 20:51:08 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIzM7-00AW9H-MN; Sat, 12 Feb 2022 20:50:57 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id D5CFD5C0059;
 Sat, 12 Feb 2022 15:50:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sat, 12 Feb 2022 15:50:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to;
 s=fm2; bh=NL/Ahk+WPU4CkAIAg5T9L6UjJVoy9SI/xkwzeH5XONQ=; b=UF0bi
 Tc1U1kc1Cy9m6CKlbolNZ6D3eUj2JsHViNrUj0IfESned2s9RYZxEgVuexG6u8Va
 zAJzpS4lj2k428Rp+0bChLsSlEtkGQZiTZJ1s8mv54VXqNXHlmGsvyn9m9KVqKDQ
 703fSqviwmqY6QqYk9WeKJgqy88uQXv9MKmi3nCfHGkJt9XA7Hx8WGJGjIGXVCOu
 +ZsM6rYWCmBhT16uMHWoITNvAE0E22fmwejvTbzJqGPeqnBEw+8VhmgY8vxAqBp0
 ru1N5oAP/5Jm6zsmSuk/PvbEQPs98dpbaHS9u5phA8a1qQTtVulDek0a1AUBoJhD
 W0D6rcP5COkGuMiIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=NL/Ahk+WPU4CkAIAg5T9L6UjJVoy9
 SI/xkwzeH5XONQ=; b=HxvKGSwA3u5Quzzm9ZSdqrQn4AH+KzwBWuKwZPGx2b/u/
 7J2xpW4+Ej0G6+338j5Z6uJCCmsXZmS4PgrvzqmhHlP3z8qGcPeJvakLH1k7ucBL
 UQfklqs876P9qyowr/TQ2xKFjxwGnG0RcAzSQUZEWPYvEOLpMo8qGOjFFAipo1K3
 pR3xYFZblixCaS2PQeMCqXjqLVCAOaehgy90bWoXmPFc+wovx73a+Euh5cT9CXr9
 I2aPu4wtl6v3SHZW+/L/hujJIUP3WfFyGPyb65n8yfM75nl2p9TxfGGrgxEYtWyl
 A7HE2g0KF5nHTcG3b4jQFPRRs567G0/AA9PchCyyg==
X-ME-Sender: <xms:qR0IYvZAjvCvnT4vRdd00LB3erfiTogZeyT_GSDKMDiEblGfMdpEmA>
 <xme:qR0IYubIrLlJB8M9ikCrQnGOEaoHy_UDL_Yvn7l6RziyUQk8jyBB3Svu0Sm_UaeWo
 HbLGVuifpO5GGqBZw>
X-ME-Received: <xmr:qR0IYh-GeOql1_4X1Y5yVxG83qoGv-MPBwV56wwUw1HhxbscQg52JF7fMqVlKfeM9d22kKLb66nvSGr9jdIHJ5I82JWg6-_W-XP6iRhCVi9gX8XZ5J-I_g2fuyJAaTT6B1blxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieehgddugeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtffrrg
 htthgvrhhnpeeiteekhfehuddugfeltddufeejjeefgeevheekueffhffhjeekheeiffdt
 vedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:qR0IYlphSOnpEpLJ3889t-tiihNFeCRlQVmW8mAKilfQqosG1ukJkA>
 <xmx:qR0IYqoThGLivE6mgQD5gZW3a1PCkCTm3g9BgmcOqzeAGt8esQwUTw>
 <xmx:qR0IYrS3hakmv7368cFsZXV8aVsvEmgdtIfUBgQrCAiKZgv8l5-Itg>
 <xmx:qh0IYmc0YRdPsiwKLJoHjhq-KsnzjZuFfxVe5StkD17vMcL7jqeSbQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 12 Feb 2022 15:50:49 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Heiko Stuebner <heiko@sntech.de>,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>,
 Guillaume Savaton <guillaume@baierouge.fr>
Subject: [PATCH] gpio: rockchip: Reset int_bothedge when changing trigger
Date: Sat, 12 Feb 2022 14:50:48 -0600
Message-Id: <20220212205048.43862-1-samuel@sholland.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220212_125055_995055_C7866F0F 
X-CRM114-Status: GOOD (  13.13  )
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

With v2 hardware, an IRQ can be configured to trigger on both edges via
a bit in the int_bothedge register. Currently, the driver sets this bit
when changing the trigger type to IRQ_TYPE_EDGE_BOTH, but fails to reset
this bit if the trigger type is later changed to something else. This
causes spurious IRQs, and when using gpio-keys with wakeup-event-action
set to EV_ACT_(DE)ASSERTED, those IRQs translate into spurious wakeups.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Reported-by: Guillaume Savaton <guillaume@baierouge.fr>
Tested-by: Guillaume Savaton <guillaume@baierouge.fr>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/gpio/gpio-rockchip.c | 56 +++++++++++++++++++-----------------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index a4c4e4584f5b..099e358d2491 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -403,65 +403,67 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	if (type & IRQ_TYPE_EDGE_BOTH)
 		irq_set_handler_locked(d, handle_edge_irq);
 	else
 		irq_set_handler_locked(d, handle_level_irq);
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
 
 	level = rockchip_gpio_readl(bank, bank->gpio_regs->int_type);
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
 
-	switch (type) {
-	case IRQ_TYPE_EDGE_BOTH:
+	if (type == IRQ_TYPE_EDGE_BOTH) {
 		if (bank->gpio_type == GPIO_TYPE_V2) {
-			bank->toggle_edge_mode &= ~mask;
 			rockchip_gpio_writel_bit(bank, d->hwirq, 1,
 						 bank->gpio_regs->int_bothedge);
 			goto out;
 		} else {
 			bank->toggle_edge_mode |= mask;
 			level |= mask;
 
 			/*
 			 * Determine gpio state. If 1 next interrupt should be
 			 * falling otherwise rising.
 			 */
 			data = readl(bank->reg_base + bank->gpio_regs->ext_port);
 			if (data & mask)
 				polarity &= ~mask;
 			else
 				polarity |= mask;
 		}
-		break;
-	case IRQ_TYPE_EDGE_RISING:
-		bank->toggle_edge_mode &= ~mask;
-		level |= mask;
-		polarity |= mask;
-		break;
-	case IRQ_TYPE_EDGE_FALLING:
-		bank->toggle_edge_mode &= ~mask;
-		level |= mask;
-		polarity &= ~mask;
-		break;
-	case IRQ_TYPE_LEVEL_HIGH:
-		bank->toggle_edge_mode &= ~mask;
-		level &= ~mask;
-		polarity |= mask;
-		break;
-	case IRQ_TYPE_LEVEL_LOW:
-		bank->toggle_edge_mode &= ~mask;
-		level &= ~mask;
-		polarity &= ~mask;
-		break;
-	default:
-		ret = -EINVAL;
-		goto out;
+	} else {
+		if (bank->gpio_type == GPIO_TYPE_V2) {
+			rockchip_gpio_writel_bit(bank, d->hwirq, 0,
+						 bank->gpio_regs->int_bothedge);
+		} else {
+			bank->toggle_edge_mode &= ~mask;
+		}
+		switch (type) {
+		case IRQ_TYPE_EDGE_RISING:
+			level |= mask;
+			polarity |= mask;
+			break;
+		case IRQ_TYPE_EDGE_FALLING:
+			level |= mask;
+			polarity &= ~mask;
+			break;
+		case IRQ_TYPE_LEVEL_HIGH:
+			level &= ~mask;
+			polarity |= mask;
+			break;
+		case IRQ_TYPE_LEVEL_LOW:
+			level &= ~mask;
+			polarity &= ~mask;
+			break;
+		default:
+			ret = -EINVAL;
+			goto out;
+		}
 	}
 
 	rockchip_gpio_writel(bank, level, bank->gpio_regs->int_type);
 	rockchip_gpio_writel(bank, polarity, bank->gpio_regs->int_polarity);
 out:
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 
 	return ret;
 }
 
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
