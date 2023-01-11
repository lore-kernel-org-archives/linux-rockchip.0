Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC37C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Z9jagPOqIUXo57sWNXNJ0fgLXyx23iPUYVveIyVHwVs=; b=BTrahQWQ8LDu3O
	92or2CokcwBk6gRgXogVlMiexFN5siSaK+742jdvmLiBWcQKURIynwo4b6mdJc86MdiiIxeNvfsjW
	O4WeNCQeWbB/3wZuiSRBfICBMSghsDfBezqCNmrwPZ93sEjCJjPhqfvfYlYkyiA7QRdKqGc8f/4E+
	fPE7Mtwo6+75kG/MNR2b19AEN5gsUHPBS/2iRA7JlcEykfAVtsN7axfabXdDE3e8lpLVlEtfM07DQ
	z/ReyVIa/KOl74USSr+Q2hZeup/PYJewm90DwoH6r6XD+Du/ZDRI609smOj4wnAUiVEp8CIL/f3ZB
	uaZdlQu1XTP4qR1ISWKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYJr-00Amdc-95; Wed, 11 Jan 2023 10:26:55 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYJY-00AmOs-AN; Wed, 11 Jan 2023 10:26:38 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id 65D8A740A75;
	Wed, 11 Jan 2023 18:26:18 +0800 (CST)
Date: Wed, 11 Jan 2023 18:26:18 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Jonas Karlman" <jonas@kwiboo.se>, 
	linus.walleij <linus.walleij@linaro.org>, 
	=?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH] pinctrl: rockchip: fix reading pull type on rk3568
References: <20230110172955.1258840-1-jonas@kwiboo.se>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2023011118261820881054@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTExJVk0dHUNLTR5ISUhNH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRw6Njo*KT0ZGQ8tPBYdSU0u
	Ek8aCzdVSlVKTUxIT0hJTExCSUhIVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9LTUM3Bg++
X-HM-Tid: 0a85a05dc7c52eb4kusn65d8a740a75
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_022636_542585_41DF3F03 
X-CRM114-Status: GOOD (  10.51  )
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

Hi Jonas

--------------
jay.xu@rock-chips.com
>When reading pinconf-pins from debugfs it fails to get the configured pull
>type on RK3568, "unsupported pinctrl type" error messages is also reported.
>
>Fix this by adding support for RK3568 in rockchip_get_pull, including a
>reverse of the pull-up value swap applied in rockchip_set_pull so that
>pull-up is correctly reported in pinconf-pins.
>Also update the workaround comment to reflect affected pins, GPIO0_D3-D6.
>
>Fixes: c0dadc0e47a8 ("pinctrl: rockchip: add support for rk3568")
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>--- 

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

> drivers/pinctrl/pinctrl-rockchip.c | 11 ++++++++++-
> 1 file changed, 10 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
>index 849d5fa2a362..5eeac92f610a 100644
>--- a/drivers/pinctrl/pinctrl-rockchip.c
>+++ b/drivers/pinctrl/pinctrl-rockchip.c
>@@ -2436,10 +2436,19 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
> case RK3308:
> case RK3368:
> case RK3399:
>+	case RK3568:
> case RK3588:
> pull_type = bank->pull_type[pin_num / 8];
> data >>= bit;
> data &= (1 << RK3188_PULL_BITS_PER_PIN) - 1;
>+	/*
>+	* In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
>+	* where that pull up value becomes 3.
>+	*/
>+	if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
>+	if (data == 3)
>+	data = 1;
>+	}
>
> return rockchip_pull_list[pull_type][data];
> default:
>@@ -2497,7 +2506,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
> }
> }
> /*
>-	* In the TRM, pull-up being 1 for everything except the GPIO0_D0-D6,
>+	* In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
> * where that pull up value becomes 3.
> */
> if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
>--
>2.39.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
