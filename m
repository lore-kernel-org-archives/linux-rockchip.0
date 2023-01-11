Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A128BC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jd4OvvB9iFpnKR8kGMT+SmJEqtg8DSlsUViuR0WwJsM=; b=M8l4if7birIcsw
	QG9gPF6IZuoxDjJMbtJpCrpnkHOF/vGfO0UPaoUZBXy+kbA4OIVo7rveBhbRmgkOG1ONynk/yD8oK
	PPezKYAs0fgl5Dsc41pzS/TmeL/KUhuM21SjzYxAB9JPkPUWsRbrNUisYaKbyV+ALrElpSeUbSUL0
	kkc75y7v8WCGFPkD5IZIWOy4DiJXdm7R4/LFK80UHPHlWkNxRERtKGiaytEZ25KiKk7RBbdBaiPEz
	TTC11zgJeWCV6qbPnTpAdV3EnTmcC0OyvUuOyyWetLUl3v3AuCtQcdK22VStkpeHSAiparufMwx2u
	iQusYBb7WnuLKUgPF8NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYbk-00AsFQ-IZ; Wed, 11 Jan 2023 10:45:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYbh-00AsDG-DA; Wed, 11 Jan 2023 10:45:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYbb-0004VK-0N; Wed, 11 Jan 2023 11:45:15 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, "linus. walleij" <linus.walleij@linaro.org>, "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: linux-gpio <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] pinctrl: rockchip: fix reading pull type on rk3568
Date: Wed, 11 Jan 2023 11:45:14 +0100
Message-ID: <3490318.N7aMVyhfb1@diego>
In-Reply-To: <2023011118261820881054@rock-chips.com>
References: <20230110172955.1258840-1-jonas@kwiboo.se> <2023011118261820881054@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024521_477231_8B0318F3 
X-CRM114-Status: GOOD (  19.56  )
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

Hi Jay,

Am Mittwoch, 11. Januar 2023, 11:26:18 CET schrieb jay.xu@rock-chips.com:
> Hi Jonas
> 
> --------------
> jay.xu@rock-chips.com
> >When reading pinconf-pins from debugfs it fails to get the configured pull
> >type on RK3568, "unsupported pinctrl type" error messages is also reported.
> >
> >Fix this by adding support for RK3568 in rockchip_get_pull, including a
> >reverse of the pull-up value swap applied in rockchip_set_pull so that
> >pull-up is correctly reported in pinconf-pins.
> >Also update the workaround comment to reflect affected pins, GPIO0_D3-D6.
> >
> >Fixes: c0dadc0e47a8 ("pinctrl: rockchip: add support for rk3568")
> >Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >--- 
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Did you want one of

- Reviewed-by:
- Tested-by:
- Acked-by:

instead?


Heiko

> > drivers/pinctrl/pinctrl-rockchip.c | 11 ++++++++++-
> > 1 file changed, 10 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> >index 849d5fa2a362..5eeac92f610a 100644
> >--- a/drivers/pinctrl/pinctrl-rockchip.c
> >+++ b/drivers/pinctrl/pinctrl-rockchip.c
> >@@ -2436,10 +2436,19 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
> > case RK3308:
> > case RK3368:
> > case RK3399:
> >+	case RK3568:
> > case RK3588:
> > pull_type = bank->pull_type[pin_num / 8];
> > data >>= bit;
> > data &= (1 << RK3188_PULL_BITS_PER_PIN) - 1;
> >+	/*
> >+	* In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
> >+	* where that pull up value becomes 3.
> >+	*/
> >+	if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
> >+	if (data == 3)
> >+	data = 1;
> >+	}
> >
> > return rockchip_pull_list[pull_type][data];
> > default:
> >@@ -2497,7 +2506,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
> > }
> > }
> > /*
> >-	* In the TRM, pull-up being 1 for everything except the GPIO0_D0-D6,
> >+	* In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
> > * where that pull up value becomes 3.
> > */
> > if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
> >--
> >2.39.0
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
