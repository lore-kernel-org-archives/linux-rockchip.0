Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 024D4FB3CEB
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 09:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEDvYTaQ/pg+crTP7ymhc3iRzzIAMUkOmu61UJzJei8=; b=YcUGfH1bxLsvMX
	tL2Nr+QjHuQlrmjnOPzsMF8ZLl7ns5OJcChOrY0gH04KRs76oUkUTObONO2iniccF8nD6q3loWJdV
	+ByzUL8r4cSnKAZg6NJh1rN0pHZrIqMkOvX+LHv5/p6WsDFxvMtyNm7Ztn4x4VrjEQKFeye/4zVbZ
	Ra0ADL0qmqqRTrPtGLrbl0moUbgEThVljjgO1zvjQGoCJejCwmDxD8qE86hRbiUXHGEIkH142/KrZ
	dXhDZzaJrJmGVi9x8MLuqvKLjAmqDg4Ln8wS1Xui9PJk2lWj+OVLUPmngmub7mGypRg8/QFZE9A90
	73dLtT9tKPSkmt4FgJKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w79OW-0000000B0JO-3qvd;
	Mon, 30 Mar 2026 09:58:52 +0000
Received: from mail-m1973193.qiye.163.com ([220.197.31.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w79OU-0000000B0Hu-01YF
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 09:58:51 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 38d16663a;
	Mon, 30 Mar 2026 17:53:24 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	ye.zhang@rock-chips.com,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
Date: Mon, 30 Mar 2026 17:53:21 +0800
Message-Id: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d3e298fef09cckunm3d006f22e5d629
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk4YHVZJHx0YSU5CT0xMTxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BrFMQqF5bRKjh0JmY4iB/LDDmGcn6MJoWAHKs5H1YMW0F8vRIpWmTsD4IXVZN2Hg3Gm2YbsZNWhiFfwFziOJfdy4ttNQ43f4cSXvHjVfA74mvgfImveYUoTss44vUUSu17psdCPFs1CS7VvKlhUHEqhpRZUTKGQhZ1JcCANw0/4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zBgjeDrg+peaeJ/KCAvRmYyV+lBFW34M3AWXK7qHhu0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_025850_247184_AB22FB71 
X-CRM114-Status: GOOD (  10.94  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This driver is used on device tree based platform. Use dynamic
GPIO numberspace base to suppress the warning:

gpio gpiochip0: Static allocation of GPIO base is deprecated, use dynamic allocation.
gpio gpiochip1: Static allocation of GPIO base is deprecated, use dynamic allocation.
gpio gpiochip2: Static allocation of GPIO base is deprecated, use dynamic allocation.
gpio gpiochip3: Static allocation of GPIO base is deprecated, use dynamic allocation.
gpio gpiochip4: Static allocation of GPIO base is deprecated, use dynamic allocation.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index ac1b939..08ea644 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -582,7 +582,7 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	bank->gpio_chip = rockchip_gpiolib_chip;
 
 	gc = &bank->gpio_chip;
-	gc->base = bank->pin_base;
+	gc->base = -1;
 	gc->ngpio = bank->nr_pins;
 	gc->label = bank->name;
 	gc->parent = bank->dev;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
