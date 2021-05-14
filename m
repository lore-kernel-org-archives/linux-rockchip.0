Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36385C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:07:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEF1661451
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:07:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BEF1661451
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RQmqAUK7oNG439iZi57iYl7HkiW276DvTop63TTKFso=; b=T6LCM/a0NIrqgRQDmY1O2RURF
	G2dXb6SPNkzVyKZMBmgG84grhyeIYL/X9Ls+LxCP4i6zxL9RXmXrZ92cChHioyZiJCmv9H3eQe5Gs
	TDLd3rEB2nwVHBUH0QaG7jd4M1EKc24TDRIf30ZuGHUI67VTK3xmoGyfrmKrK75oDPaAgjzkTHgKh
	+sFwFUnFDtY2hwz3UDPn91XCXxpssi3TDTD7e3nXyGsSHc8+ddiX63sCZmOeh/ODr8lJJJ51FB7JO
	oMFKMvA7ghwBIA+1Dz0FRyGR1hNFcoHKRGpOTyYV+zd9zu0CIJmSwgRFakcA6SL0fX8r1xl0cnVc6
	JqH6UzTPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhUj2-007jPd-1f; Fri, 14 May 2021 10:07:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhUio-007jNY-FB; Fri, 14 May 2021 10:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=Hd5DQUxNI1yAI6Q0oyaRDpsRJtfrtO9x5rU4anWM5qg=; b=0J/3tNnWhXfIHxSf0P8Zn4CM6B
 B1xfpYTpwOzGUg0XOuMdRRKzx7dZHSTEk6MiDC1ubOLvGGvvjgInjudtk2/q/PFuGYVQu4UELFx2j
 ETb8VlOFT9xabSo5jyzib/NB69RgmY1TnH/YQD4QuyYUkR2hriJEYoB3U+Y9tovmM9QSkXoHle+u3
 JpIXbmCpV67x23e0tyi/KWRPjrHjlBHgv3fB0OOKZWgsI+iYR6Vl+MsU+/7GRv4n3xPSPiVmWBQaU
 IUYQIwdTCBdvRl6OkIIwEvKX4U3e2C+LgEQExdX8+vCReSTYo3ab1LUYiVV30/1lBhspyyyqfz6rh
 iC8PnVdg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhUil-00Bt2W-Tq; Fri, 14 May 2021 10:07:05 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhUia-0001yI-9m; Fri, 14 May 2021 12:06:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: cl@rock-chips.com
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, cl@rock-chips.com, wim@linux-watchdog.org,
 linux@roeck-us.net, jamie@jamieiles.com, linux-watchdog@vger.kernel.org,
 maz@kernel.org
Subject: Re: [RESEND PATCH v4 06/10] dt-bindings: gpio: change items
 restriction of clock for rockchip, gpio-bank
Date: Fri, 14 May 2021 12:06:51 +0200
Message-ID: <5026524.44csPzL39Z@phil>
In-Reply-To: <20210513064606.18397-1-cl@rock-chips.com>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210513064606.18397-1-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_030703_997739_570BC9DC 
X-CRM114-Status: GOOD (  15.21  )
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

Hi,

Am Donnerstag, 13. Mai 2021, 08:46:06 CEST schrieb cl@rock-chips.com:
> From: Liang Chen <cl@rock-chips.com>
> 
> The clock property need 2 items on some rockchip chips.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>

this patch should definitly move over to Jianquns gpio driver series,
as it introduces the usage of these new clocks.

Also while the single-clock variant definitly doesn't need it,
I think we may want clock-names "apb_pclk", "debounce-ref" for the
2-clock variants?


Heiko

> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index d993e00..0d62c28 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -22,7 +22,10 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: APB interface clock source
> +      - description: GPIO debounce reference clock source
>  
>    gpio-controller: true
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
