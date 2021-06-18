Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36ADFC48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 07:02:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B68CF6100A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 07:02:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B68CF6100A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1v3Z74osIuHNtc9Tx9QwxXO7Vwcb1ZnKv3idWfTvKA=; b=tkPQPAeDiRQJ6J
	FbJWtNP72J7j0Rflp3Wbx7CQzeNfl61JL1mmTNHLJrwFtB2ItcJT8RoncZsMqpnViJr9n92GqQvZL
	VU55ERhJ6GNLDSzy8XcVSCfkxMoDGT9jJSY5YmzecmUYw/yO1LgNuBZ+3zMQ+3ntGynzJfciGJijr
	RFLjMLzFc5wq53EGtlK6o/myMMy/7NRVNmXWvkuMWvA2dMCV5TjrqUIE9+SkKqwsmDieNy5SRy0KC
	kCFm0Xl9icoeB/dSKPQSpt8Tlk31S2m8KtS5+JBxYUoB+1497HrNDaEgkyd185Z6JGWfPz1ZbdtEw
	FX5U4fvFh2+68nZsGhWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu8WX-00D0iP-MH; Fri, 18 Jun 2021 07:02:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu8W5-00D0bt-JG; Fri, 18 Jun 2021 07:02:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lu8Vs-00006s-P5; Fri, 18 Jun 2021 09:02:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl <cl@rock-chips.com>, "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: robh+dt <robh+dt@kernel.org>, jagan <jagan@amarulasolutions.com>,
 wens <wens@csie.org>, uwe <uwe@kleine-koenig.org>, mail <mail@david-bauer.net>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 jensenhuang <jensenhuang@friendlyarm.com>,
 michael <michael@amarulasolutions.com>, cnsztl <cnsztl@gmail.com>,
 devicetree <devicetree@vger.kernel.org>,
 "ulf. hansson" <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 gregkh <gregkh@linuxfoundation.org>,
 linux-serial <linux-serial@vger.kernel.org>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 =?utf-8?B?5p6X5rabKOW6leWxguW5s+WPsCk=?= <shawn.lin@rock-chips.com>,
 =?utf-8?B?5ZC06L6+6LaF?= <david.wu@rock-chips.com>,
 zhangqing <zhangqing@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>,
 cl <cl@rock-chips.com>, wim <wim@linux-watchdog.org>,
 linux <linux@roeck-us.net>, jamie <jamie@jamieiles.com>,
 linux-watchdog <linux-watchdog@vger.kernel.org>, maz <maz@kernel.org>
Subject: Re: [RESEND PATCH v4 06/10] dt-bindings: gpio: change items
 restriction of clock for rockchip, gpio-bank
Date: Fri, 18 Jun 2021 09:01:59 +0200
Message-ID: <3493815.vrqWZg68TM@diego>
In-Reply-To: <2021061814414460293612@rock-chips.com>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <5026524.44csPzL39Z@phil> <2021061814414460293612@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_000213_716931_F846FFB9 
X-CRM114-Status: GOOD (  22.67  )
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

Hi Jay,

Am Freitag, 18. Juni 2021, 08:41:45 CEST schrieb jay.xu@rock-chips.com:
> Hi Heiko
> 
> --------------
> jay.xu@rock-chips.com
> >Hi,
> >
> >Am Donnerstag, 13. Mai 2021, 08:46:06 CEST schrieb cl@rock-chips.com:
> >> From: Liang Chen <cl@rock-chips.com>
> >>
> >> The clock property need 2 items on some rockchip chips.
> >>
> >> Signed-off-by: Liang Chen <cl@rock-chips.com>
> >
> >this patch should definitly move over to Jianquns gpio driver series,
> >as it introduces the usage of these new clocks.
> >
> >Also while the single-clock variant definitly doesn't need it,
> >I think we may want clock-names "apb_pclk", "debounce-ref" for the
> >2-clock variants?
> > 
> Okay, I think it's very good idea, 
> but is it possible to post the reg-name patch after these dts serial and gpio serial patches ?

You're already creating a new binding when changing the max-items.
So when we change that again later, in theory you'd need to support both
cases (with and without clock-names)

So I'd really prefer to get the binding right the first time and
identifying multiple clocks by clock-names instead of an implicit ordering
is way better in the long run as well.

Heiko




> 
> >
> >Heiko
> >
> >> ---
> >>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 5 ++++-
> >>  1 file changed, 4 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> >> index d993e00..0d62c28 100644
> >> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> >> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> >> @@ -22,7 +22,10 @@ properties:
> >>      maxItems: 1
> >> 
> >>    clocks:
> >> -    maxItems: 1
> >> +    minItems: 1
> >> +    items:
> >> +      - description: APB interface clock source
> >> +      - description: GPIO debounce reference clock source
> >> 
> >>    gpio-controller: true
> >> 
> >>
> >
> >
> >
> >
> >
> >
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
