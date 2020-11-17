Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35958C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 12:57:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93BA82151B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 12:57:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cqEkZt91";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy+avDI/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93BA82151B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OUExzBpMxge7gALzJO1sLWK0fQHt4hQj+3pu2eOSEDU=; b=cqEkZt91I90H1gYR1jR0SHZwJ
	oX1D71srfVcvUwPzDLH1qt3Dg6C1c1n0f5b2Iq+9WOb+YBgLftUWIkBEWhFAE3TxGBfvM1dKwdsql
	Yd3ddJDz9ldgEFffzBs7jU5tDC3UEk8nR6VzyAGhRX9Gq4d+OfDjElGAzLeUTS0ahnfz68nI0L1ls
	CeG+yQG7BX6r4HdbbqPXrkqo416r1t4X1JPEpBmFziUJbUx0RWlGyGSxvUlOolVL8CUI1VNSbXxy/
	xJuDNZb+LB/Dhjhk3jYHoHYPLFpuHHvGcAlW23+JC/gsJZgAl8UFVF9tuIVaQ0d8bpfz39f0kanCz
	ipRIwyZvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf0Xj-0000yV-Lq; Tue, 17 Nov 2020 12:57:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf0Xd-0000w1-7P; Tue, 17 Nov 2020 12:57:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 092F324654;
 Tue, 17 Nov 2020 12:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605617820;
 bh=TYmOUFx1wB5HO2cWnT7UCvQQ/O6u8B3krnauYye4MmM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jy+avDI/UPo5PzfnpKLECsMVTA1aXKQzna/jkS3Ld9O42PFB67iJ26JrWkbglAEYy
 FYJSlRvDICMgmkc4z8hUrmO+pmBgqj+sjyxeqfySR2jx7/OtXOtM7uvo5n6BiYAJMk
 8kMsteoqeXHwWJZakPkewPaztzzKL+XDyF6l7wrA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.9 04/21] pinctrl: rockchip: enable gpio pclk for
 rockchip_gpio_to_irq
Date: Tue, 17 Nov 2020 07:56:35 -0500
Message-Id: <20201117125652.599614-4-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117125652.599614-1-sashal@kernel.org>
References: <20201117125652.599614-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_075701_378238_4F8026AF 
X-CRM114-Status: GOOD (  13.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, linux-gpio@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jianqun Xu <jay.xu@rock-chips.com>

[ Upstream commit 63fbf8013b2f6430754526ef9594f229c7219b1f ]

There need to enable pclk_gpio when do irq_create_mapping, since it will
do access to gpio controller.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>
Link: https://lore.kernel.org/r/20201013063731.3618-3-jay.xu@rock-chips.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 0401c1da79dd0..7b398ed2113e8 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3155,7 +3155,9 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
 	if (!bank->domain)
 		return -ENXIO;
 
+	clk_enable(bank->clk);
 	virq = irq_create_mapping(bank->domain, offset);
+	clk_disable(bank->clk);
 
 	return (virq) ? : -ENXIO;
 }
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
