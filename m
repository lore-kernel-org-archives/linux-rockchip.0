Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4756FC3DA41
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=54vYfVPX/hs0kdAtHHb518YGwVuHI2IwfE3zwKDa3BA=; b=i+0cVCjWE2S28E
	iFNyTRke2nVEP7iYzRr4FNwr0ezuEBl2cfP5vsyEwSEfd4mWEFleTknPJAMuSh29rDWe5sQtLdEkX
	jVGPLLMO31KVWqPMEOnyBInLIaVluWy3sWXdaXILLqR0NFlO4nRnhIflkWFyzawUu8uSXygLdV0Z4
	fbYqtBWnZHJq74Ua9tUKftHqztPKgVisXbDrZEcBH4zd110AVCYd4S93FE/iammAg5+hvhCVVcc3j
	FF/1pqgFi21HLxUV08VxGeaYku+wg3BDQV994+Xei/V+MP0RivsZxyuD6xpzzxjgksP9yoJlxk/7q
	AKQXJ48iJwnC4Hvrax9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8VG-00000006tnD-03Tg;
	Tue, 09 Jul 2024 10:55:22 +0000
Received: from mail.eh5.me ([45.76.111.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8Uz-00000006tkF-2pOb;
	Tue, 09 Jul 2024 10:55:07 +0000
From: Huang-Huang Bao <i@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1720522497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=f/I3Vjm8cEq2ZeTlVvfzwsec4AJR5wa4TlSZ79HvmRk=;
	b=hXXnOM5pURRKMcaz1BuylPpxtLsSgiW29cfj5UI9EfWqUgfbHBWDipLEsXQxkHZajqgq/9
	/z4O6xvH/jZiofPvAKDzi4j0wC1RJUypDGeIuo3XKhOH7aBM2SB5RLnfffkwTiQ7VA0i8q
	N58KAUdO386ccj+s9wqtXiJNkAc72PA=
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Richard Kojedzinszky <richard@kojedz.in>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Huang-Huang Bao <i@eh5.me>,
	stable@vger.kernel.org
Subject: [PATCH] pinctrl: rockchip: correct RK3328 iomux width flag for GPIO2-B pins
Date: Tue,  9 Jul 2024 18:54:28 +0800
Message-ID: <20240709105428.1176375-1-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_035505_855152_0F43EA17 
X-CRM114-Status: GOOD (  11.90  )
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

The base iomux offsets for each GPIO pin line are accumulatively
calculated based off iomux width flag in rockchip_pinctrl_get_soc_data.
If the iomux width flag is one of IOMUX_WIDTH_4BIT, IOMUX_WIDTH_3BIT or
IOMUX_WIDTH_2BIT, the base offset for next pin line would increase by 8
bytes, otherwise it would increase by 4 bytes.

Despite most of GPIO2-B iomux have 2-bit data width, which can be fit
into 4 bytes space with write mask, it actually take 8 bytes width for
whole GPIO2-B line.

Commit e8448a6c817c ("pinctrl: rockchip: fix pinmux bits for RK3328
GPIO2-B pins") wrongly set iomux width flag to 0, causing all base
iomux offset for line after GPIO2-B to be calculated wrong. Fix the
iomux width flag to IOMUX_WIDTH_2BIT so the offset after GPIO2-B is
correctly increased by 8, matching the actual width of GPIO2-B iomux.

Fixes: e8448a6c817c ("pinctrl: rockchip: fix pinmux bits for RK3328 GPIO2-B pins")
Cc: stable@vger.kernel.org
Reported-by: Richard Kojedzinszky <richard@kojedz.in>
Closes: https://lore.kernel.org/linux-rockchip/4f29b743202397d60edfb3c725537415@kojedz.in/
Tested-by: Richard Kojedzinszky <richard@kojedz.in>
Signed-off-by: Huang-Huang Bao <i@eh5.me>
---

I have double checked the iomux offsets in debug message match iomux
register definitions in "GRF Register Description" section in RK3328
TRM[1].

[1]: https://opensource.rock-chips.com/images/9/97/Rockchip_RK3328TRM_V1.1-Part1-20170321.pdf

Kernel pinctrl debug message with dyndbg="file pinctrl-rockchip.c +p":
  rockchip-pinctrl pinctrl: bank 0, iomux 0 has iom_offset 0x0 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 0, iomux 1 has iom_offset 0x4 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 0, iomux 2 has iom_offset 0x8 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 0, iomux 3 has iom_offset 0xc drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 1, iomux 0 has iom_offset 0x10 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 1, iomux 1 has iom_offset 0x14 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 1, iomux 2 has iom_offset 0x18 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 1, iomux 3 has iom_offset 0x1c drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 2, iomux 0 has iom_offset 0x20 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 2, iomux 1 has iom_offset 0x24 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 2, iomux 2 has iom_offset 0x2c drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 2, iomux 3 has iom_offset 0x34 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 3, iomux 0 has iom_offset 0x38 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 3, iomux 1 has iom_offset 0x40 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 3, iomux 2 has iom_offset 0x48 drv_offset 0x0
  rockchip-pinctrl pinctrl: bank 3, iomux 3 has iom_offset 0x4c drv_offset 0x0

The "Closes" links to test report from original reporter with original
issue contained, which was not delivered to any mailing list thus not
available on the web.

Added CC stable as the problematic e8448a6c817c fixed by this patch was
recently merged to stable kernels.

Sorry for the inconvenience caused,
Huang-Huang

 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3f56991f5b89..f6da91941fbd 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3813,7 +3813,7 @@ static struct rockchip_pin_bank rk3328_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", 0,
-			     0,
+			     IOMUX_WIDTH_2BIT,
 			     IOMUX_WIDTH_3BIT,
 			     0),
 	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3",

base-commit: 4376e966ecb78c520b0faf239d118ecfab42a119
--
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
