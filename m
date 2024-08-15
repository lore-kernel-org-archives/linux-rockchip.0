Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFEBFC52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 07:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOdR0lRQLWmqxr552H6oP1LE0Ewo8TmJ/JTfxInQ/1c=; b=WysAXEau75WNdE
	urnKn/8wjXNfrI19MPHHmbEVqEN2JCQZ5L0ix+fg65thbZd3SlXH0d1ottTIL3lzGACjFsG0Stkkz
	6oBqHGjPsGfpTP7ogyQ+v0sUJN1zCN9DDxiybERrw5R+IBjx7UegSMPpV8f6z/brK0kRdkuc/TKG5
	jzBAVZ8R92sFeCahOxYyOJ8Ir62XCIDOMeqtR/t3EBRHiOsi9QIT+KuxthinrB0JbMNBik8lusuO1
	VGlYcjYvn+NVPpVmTQY5mlwVF/K9z91GC6KL7A3K+bh5bEw4WaPu9dcnV0RahZubwaplx+sZ180BV
	++lEHKcvZleEJ56yL9lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUjs-00000009FPz-2hGe;
	Thu, 15 Aug 2024 07:17:40 +0000
Received: from mail-m1973173.qiye.163.com ([220.197.31.73])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUjp-00000009FNl-3C4g;
	Thu, 15 Aug 2024 07:17:39 +0000
DKIM-Signature: a=rsa-sha256;
	b=DgNw+pRkdgOlw0WYTsYkLCUfJF27FsQK3kjXHWc6Rqiyhv/VpdKYENw25+A2K0KgnEdcfI3jpmQeyz5vkJiEkwEURyVkRDxXkOizpX71bPXj5YyL5lCQ0GkIVi+dGsQ547A4eeCOYxV3YRxOSSmfwlfr0PZnCC9JxpTl6N2X2c0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YVjRyF8TOwBqY0iE8ZSoQBaiGaEUrU1NwRZ2EkrowHM=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 727A07E0336;
	Thu, 15 Aug 2024 15:17:23 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v1 4/5] gpio: rockchip: avoid division by zero
Date: Thu, 15 Aug 2024 15:16:50 +0800
Message-Id: <20240815071651.3645949-5-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4aTFZITEofHUxCSRlDHhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9154e5fbfb09cfkunm727a07e0336
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRQ6Qio6SjIzKUNWNCgWKEwp
	TTQaCxZVSlVKTElITEtNSU9PTU9CVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUlDSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_001738_277207_53FF278D 
X-CRM114-Status: UNSURE (   8.78  )
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

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 8949324ed816..03e949b0a344 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -212,8 +212,10 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
 		div_debounce_support = true;
 		freq = clk_get_rate(bank->db_clk);
+		if (!freq)
+			return -EINVAL;
 		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
-		if (debounce > max_debounce)
+		if ((unsigned long)debounce > max_debounce)
 			return -EINVAL;
 
 		div = debounce * freq;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
