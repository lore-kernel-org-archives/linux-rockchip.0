Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72CD3C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca4wZwmUBe0j0Z64YHCjLFeIpw38mLF67omqNizxQ1U=; b=LsI7t/Gcc6WzoY
	8mZpV6WVXb261Sun0dclIBcOmtpK3jwRGQyeoJk3uUohCLPkGTBiiDO5AiNrLuofVIzIyBY9EyY0F
	6YUG15QNFtIP9aEyCrFlXN7/UZYC2+p4gM9LPr8/4PSEwLmmhGEflZK+M1E02tZED8FFpSARNaiRo
	j/iTiu6sNyhFjCi6qBm66YlUs7eSqH1LI1hlfWlL+nsY1IsDcAOX5FP9bzbJ3UEzhGzW02qAOxbdQ
	jsrn86tSKMFD3VcIZNn6XXA7HtM01eSmFCpahz7bhZFexn3mxHgYSIJT9agxNcgyCAHoO4HJZF7ya
	MbJrZbkKKbY59KoLBohA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLGK-0000000F5Q2-2o0P;
	Fri, 23 Aug 2024 03:46:56 +0000
Received: from mail-m19731117.qiye.163.com ([220.197.31.117])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F4z5-0fze;
	Fri, 23 Aug 2024 03:45:24 +0000
DKIM-Signature: a=rsa-sha256;
	b=PG0X56dX9eS7NjdXgLPOYU0ccjHLv3nwxAItYxLTOFxjR6cOYun4xYfG/hM7dJBLMuXH+eTNZ6fyYCL7JM8tfi6aLTBPoa2nDMzd6hcmaVRNkNZJaocLX2/yZ0zmVK4jKBNSnNj6fOv8S936safpH+ZnsuRgqstXXHVadwkg1Z0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LWcU6RysEIzIJ6pAz/3hn/zvAsi9B5aKaEc9SGRcJtw=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 769137E0207;
	Fri, 23 Aug 2024 11:44:58 +0800 (CST)
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
Subject: [PATCH v2] gpio: rockchip: avoid division by zero
Date: Fri, 23 Aug 2024 11:43:04 +0800
Message-Id: <20240823034314.62305-2-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgdSlZLHk9NH01MQkJPTx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d56633709cfkunm769137e0207
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Gjo5KjI3MCxCTjYpTg0p
	ChQKCT5VSlVKTElPSENPTUJCTEpMVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUhDSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_718970_516DCDBE 
X-CRM114-Status: UNSURE (   7.57  )
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

If the clk_get_rate return '0', it will happen division by zero.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 0bd339813110..712258224eb3 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -207,6 +207,8 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
 		div_debounce_support = true;
 		freq = clk_get_rate(bank->db_clk);
+		if (!freq)
+			return -EINVAL;
 		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
 		if (debounce > max_debounce)
 			return -EINVAL;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
