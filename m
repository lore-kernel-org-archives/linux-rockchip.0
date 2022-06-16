Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93990C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9AhMovqM32OW08iJHarqaQQJP3ejwZ1RysNIAfUqII=; b=0z3qBXh6gBWAEn
	j66P24Z0GzyPouGYtR3E1Jhh3+yl/kyAs9kjfmqTdHeXmAAtVQEm2sW/Tv2ORdEfXK/LqvfomSD5U
	nPOkVTb5XPolWFEaxphHjoaB2V7Ewb6Ea1oERCNWNfa5FQNsz0lsEpWX5AOL75r9T9lZQEiZHh8Y9
	KwxElsJ9zzm/GMJgAMdLmoKxkNuGykK02Vv2Vy3oFImSofVZ6wgvh+HQ8bIv8mEh+ZTJ+eH+HvbNb
	gW3ml18ld0OjhXmbU5mBTmBKrQkqPXMhMZ/d+HPzxPhm70X/WpSY5NwgbgHW1/ZVPVIta1ZrcwwMr
	mf9f3pH2O18K1v3XK4Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1wHe-004C1t-Qj; Thu, 16 Jun 2022 20:40:06 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1wHc-004BzT-4u
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 20:40:05 +0000
Received: by mail-pf1-x435.google.com with SMTP id y6so2434556pfr.13
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 13:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JtBNgW1ARnpZB6Usfv9UpMfEN0Bux+WIpRpd7bK6hxQ=;
        b=OSvwT9JLcNTz2PhtzapCz8T4/EZ5bjSd/8SuAYqCmqs9XM+JGPsYPVpZ0Hs6+4PIuA
         a7bYZtU1CVgpeFZFwwMIZ7jZvcgSn8+4wedjyZZRF7y72wvf/W5QFky8iHWAP9FShTxx
         w/B5oRXmdgzFfKAcEI9wfz/+TXI16XsDH5fnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JtBNgW1ARnpZB6Usfv9UpMfEN0Bux+WIpRpd7bK6hxQ=;
        b=orLzUClSvmt9CqGYPR02VFJaEe2UmkH5UJpzyQw5+4t88ajFALr9d7AnlrczXYZQjk
         WBOnFP2wgfYGBLUNWhhO1t/SAxd2FbivknMmqOyMsu4kX8+S+6OqZYRwCFymZ8FBk9CT
         SZ6KWrSq9x/t6yN3RVXHHAvYUELGpXdNs8Xn1xWPSeP0vlsRfIrtzSapdgRoD7jKLrIa
         s5DjnC2ZEtKjs9BelOZB/WsJQvO+l+D5b4s0ZhAD/RLbpecYHl+cUMqK/xoRjzrzdS7A
         G9HeAmSmyfoMZr/hmocpM27fHaH8kzoQv73FMJsKdP0S1leym2ppakFKOvRMdd5uwycx
         TDKw==
X-Gm-Message-State: AJIora+uKUJNjpwvzkdyip8IrXXcOPsePf36a0y+87xcgFgHYbP475xu
	R5GuKR72yI70qhpfno93Hg+3LQ==
X-Google-Smtp-Source: AGRyM1t4XwzbfHdrXzUb66ogKwmRbMD2im+YephNe2bZ85fDvw0CEazfFrh+x12rE1Kl9iAlqYEZ5w==
X-Received: by 2002:a05:6a00:26cf:b0:4f6:fc52:7b6a with SMTP id p15-20020a056a0026cf00b004f6fc527b6amr6529975pfw.39.1655412001211;
        Thu, 16 Jun 2022 13:40:01 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:4709:a407:1ca6:24ea])
        by smtp.gmail.com with ESMTPSA id jc15-20020a17090325cf00b00168dadc7354sm2064393plb.78.2022.06.16.13.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:40:00 -0700 (PDT)
Date: Thu, 16 Jun 2022 13:39:58 -0700
From: Brian Norris <briannorris@chromium.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Message-ID: <YquVHsUoSbKfd2CS@google.com>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220616155836.3401420-3-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616155836.3401420-3-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_134004_235704_B86C93AB 
X-CRM114-Status: GOOD (  17.99  )
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

Hi,

On Thu, Jun 16, 2022 at 03:58:35PM +0000, Judy Hsiao wrote:
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
> 
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
> 
> This patch adjusts the device tree to allow BCLK to switch
> to GPIO func before LRCLK output, and switch back during
> LRCLK is output.
> 
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>


> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1662,9 +1662,10 @@ i2s0: i2s@ff880000 {
>  		dma-names = "tx", "rx";
>  		clock-names = "i2s_clk", "i2s_hclk";
>  		clocks = <&cru SCLK_I2S0_8CH>, <&cru HCLK_I2S0_8CH>;
> -		pinctrl-names = "default";
> +		pinctrl-names = "bclk_on", "bclk_off";
>  		pinctrl-0 = <&i2s0_8ch_bus>;
>  		power-domains = <&power RK3399_PD_SDIOAUDIO>;
> +		pinctrl-1 = <&i2s0_8ch_bus_bclk_off>;

It seems like 'pinctrl-1' may make sense after pinctrl-0, not here.
Perhaps you're interacting with my RFC PATCH that removes this
'power-domains' property?

https://lore.kernel.org/linux-rockchip/20220613183556.RFC.1.I9ca71105e505f024d53b7e0ba4462230813ebb8d@changeid/

But that most likely isn't landing upstream as-is.

Otherwise, this patch looks good to me:

Reviewed-by: Brian Norris <briannorris@chromium.org>

>  		#sound-dai-cells = <0>;
>  		status = "disabled";
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
