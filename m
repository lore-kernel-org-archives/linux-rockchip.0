Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A92FC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:14:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1757C600D3
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:14:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1757C600D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7/9kEXVS811ZmQ3/1HJafFWVhCw+Ro5b83ts1CXWV0=; b=qJ0xdozovIftJb
	8pGP6lqZYkU07jSUkfpPxSX4XLVY7BXYmcgxoYI0NSzO3TYxJojjbGVegDzqA0VIItqCA4C2y5Z3q
	2kuyCfOsShH7OduSkZJtcWdzOSbFot/sEJO7ExwUIjZOs9M8ZC3MUzNv7kLT/m1FUdNve6SNEwn0r
	WPib2Kmp9IKpPZctKkJu2f/dk3a916i7qPAyLLmNHxZUOieHJn0RToeglEMmQt5kWRqzxySsCEccM
	LMEMvr1Z3aacpWZOCwQgy0hxRGkAlfjzcE+sWJOymzdrRWoLvDU3GrQsu3a34mN0BxpJikuFX/nvJ
	wrNdggsV0M+u2/234+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI9mC-00GzJX-A1; Mon, 23 Aug 2021 13:14:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI9kw-00Gycc-Fu; Mon, 23 Aug 2021 13:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=R97OqEZrNIno3qkz/yEO15JnSxGdGN4h7p8yY0hMHwo=; b=afmSgNDbGN2kxE3baeeycUc2vK
 5PjTv0O5GELDC4z1max4Rr0WgApJp8VTP8XwTUPqxrUIH43Y1FIrgI1VBkj2nDE2irirslz0ec8zz
 5mHr6ZOKqZmpEA0tCmkUKMWINvZ6DY6Y345LJT0PXqOZMy92MphJPmaVqtJphy0iP6cLAdk9G3Ihp
 3+WErlr7QbD8VD40mHBIUFwnLoTnRabCelDBlHoOWcS/EjyfHF23iHS8esj/KJdG1ccV92lVW4nun
 WmQsX00kI4kQeZcLALzXhJivzVvke46SU59OiFGO8LKu3eWARripAMsy/4mvHlYD2N23+01T8ZrgX
 vPOoPRrQ==;
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI9kg-00CJdr-Jv; Mon, 23 Aug 2021 13:12:36 +0000
Received: by mail-yb1-xb36.google.com with SMTP id z128so33928128ybc.10;
 Mon, 23 Aug 2021 06:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R97OqEZrNIno3qkz/yEO15JnSxGdGN4h7p8yY0hMHwo=;
 b=R4QpTqGpG1d4yXhFwmfMpVQdsXOHi+n+oBn9IzTtt8NW7mkaaY2XTjRmek3GoDtpr4
 Bf2YE0BRpVMDh1CNKutuBiiG1Wea6UZ++awb2BnekU/3LRJwqccoH8bj+C+Ds24Yl3oG
 7Rb0q7nXkE4GOvJwHabez+wnqBLZUg3u+L5JwFVyEDIwor9Vpb6SVEvAGqMudGOz2PjD
 02Y/tVYZ11ci4yasfp9OYpzmb8g+G5XOrOFme2ymCSAN5kGcZTVF2MU50TMRLyIvW77N
 oNfMgyaMrCeFIdukNmuYbfdjkbSL+IOGgL/m9Fsgmfwi9wntr6QUMa50oylVNy9ZgiiV
 Iv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R97OqEZrNIno3qkz/yEO15JnSxGdGN4h7p8yY0hMHwo=;
 b=QPPWwUIS1XDflur1ojsMoHKWuguy2EDqSTlHRqUqNYl5lqDrKAhEJcq/NGp4f+PjPn
 5S2LePv6btShVRqjTwooBgGx3BiafKfm+L2kqkR30iG4L8VIyL2qhwi3BdOzVp653y2P
 84Bxy1VmggQMVf1k6fcnAuxKth/smOXmY7C3uwL+e873OnlK9epgXxo84T9bIYrMbav9
 w6+FBqbgnhGj0crdtITG3t+j/da/fX5I92KgM4LktY4whauFofGxqfT21eaoZdIKtIfI
 4o9CphgBjZqMJUmrfzxCn8p1BZREKSePyRQXaZpERp1C9bbImPTSlQKjip48zl91wgf5
 SV/w==
X-Gm-Message-State: AOAM533MBW36onVItiriP4LOThRqA2KHXkohxMbwsbgBZLbpGZUnbWQY
 3XKMVO6oGF7HZR8ElARDuuhiADw/g3RFnCgl3rI=
X-Google-Smtp-Source: ABdhPJw+vICRTODnbzvLttDb0NknD91cihfl7QBAuVDbaw46UeMABTy/M8I/01k3C7LjLMGIStqQ0IyMMsq13Xt8PpM=
X-Received: by 2002:a25:3108:: with SMTP id x8mr42681800ybx.386.1629724341797; 
 Mon, 23 Aug 2021 06:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210823123911.12095-1-michael.riesch@wolfvision.net>
 <20210823123911.12095-2-michael.riesch@wolfvision.net>
In-Reply-To: <20210823123911.12095-2-michael.riesch@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 23 Aug 2021 09:12:10 -0400
Message-ID: <CAMdYzYr4ZTXvfJaeMejuRHBkBAVKcEUseskhEVqLMSYR+Dv4uw@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: add missing rockchip,grf
 property to rk356x
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_141234_786777_9C408996 
X-CRM114-Status: GOOD (  18.17  )
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

On Mon, Aug 23, 2021 at 8:39 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> This commit fixes the error messages
>
>   rockchip_clk_register_muxgrf: regmap not available
>   rockchip_clk_register_branches: failed to register clock clk_ddr1x: -524
>
> during boot by providing the missing rockchip,grf property.

Good Morning,

This was fixed by commit: 6fffe52fb336 clk: rockchip: drop GRF
dependency for rk3328/rk3036 pll types
which was merged in -next. I don't believe it's going to be backported
to 5.14 due to 5.14 not being able to fully boot.

Very Respectfully,
Peter Geis

>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 23949e79d8ce..0a1d07c96b2e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -233,6 +233,7 @@
>                 #reset-cells = <1>;
>                 assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
>                 assigned-clock-rates = <1200000000>, <200000000>;
> +               rockchip,grf = <&grf>;
>         };
>
>         i2c0: i2c@fdd40000 {
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
