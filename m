Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939CDC531DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 04:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rQCIb/eL1W+WO+56shHa2kJ8VYPJM0kNFzIqLOn9RM=; b=boUnXyXZUcwr1P
	v3vyVsnBVmpjotzf+0mtO8KpMbJif7K5JFlYbdXHQSy5uy6IMFLyYLpf2pQZ55jl061PtnuVZ4Fzi
	hg0c0UEr1iINZ5QTJ99k7NQZF2TT7bQNE3JoojrZj2tGBNZJ1hdj9grCZ95ZHUDRHPqpxSdQp380x
	0cC5qnCEq74y0/WHeLzBfEVpEBJsQ1rQdUlAcw/opvKS5bjpBFGWezbsbena3tvsBhP0l+w+CNET0
	ndJoiNfgtFbo9G62gci6OncJXQ3TDpKYxy2LdentwJ230yk17z2Oi3CTbzOd/iRMQGCeXYFU88XJu
	kiYzF1kzoYNGC5TI85vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgGb5-00000003mXX-0u1a;
	Tue, 20 Aug 2024 04:35:55 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgGaN-00000003mP2-1nnr;
	Tue, 20 Aug 2024 04:35:12 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-81f95052c2cso308169639f.0;
        Mon, 19 Aug 2024 21:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724128510; x=1724733310; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9RWb2cOqQnTHsOkbjJVH6LqZJsj5oebESRUFajL+E9E=;
        b=BCkItAZ0UIch2oCDcg50wy/5XXqjWeb1yO5CELdqyeGAlG+178YJnUO6zkTiWClt3N
         3qxhky5nrwbb/8qqUBIrgpMUscSU+W9zh3ibXUdksXTm17pQIcDtYIDUsyqBVUge4uv2
         N7pqeAp7rNLWLbwD6ufaW9mT5zm/URqUWJkbcreguWGKkf9pqPrIwebYL1+JIsuqTYuj
         gVFI6SxwHL/YnX6ZCJArrQpbO1HmmCC+75AgP1lqbH8pqi4ouC/TqiivHxMKDNKFx7+q
         4WcxmOwlEx4k79+jWW0/wK7t/6cPWjuYfYEv1Q5gUK9VdG7kGqK4SwYNU7W0rOIr0D8+
         QiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724128510; x=1724733310;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9RWb2cOqQnTHsOkbjJVH6LqZJsj5oebESRUFajL+E9E=;
        b=ba0LcnvOsgBTGb5UchfanqzbHFDbvl0UH7u9tfGL16nWNmdO+gXGKmiPsrJUnOwWhh
         I2NnIL2Hgp2KUh1iepyAqSzyYX4AElZ2xTcrKlGdAgpYImq44LL/MSVZWNBWwJd1qeEb
         1BJAb1OA5IofYep0dTvLpmQkmwOkIrMr/UiH2lRql6YeKkQSjX9MxrK9BZX3/K+XXy5m
         K89PqGqxSob8oynvGKOb07gJ40ZirWJyHiCkUd4WaZKSJhYEUME9sMuhhJvjzFF2Cyqb
         4sELelFSI3+5RcpPWRF8JNUb26ANwh1ZP14dxR1DSG5OrV8vyQU7C2T1u9UCK+0hevTq
         8Xrw==
X-Forwarded-Encrypted: i=1; AJvYcCWTxNsKMaZfOw2slDCtF5VUgxSUCPHsjgBn1S0VkNUZQde4scZNN6t3au8I1YeAT9S1sOeQnKbu/DTlfAMF3w2F@lists.infradead.org, AJvYcCX1+ll1ruTvxDYA1rKd3S67gaQ8oqlbCQYqkpRF4bHdTdSk3Eugw5EOcQ7ysCWq6lvom2+s0H4x3/PJOqhl/vU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1EW+yiakkTOpbxYyUbUHyTvacM+bvDZSucbFphUn0EgUj5y5m
	o2TRnpxBkUvM4JajDpdv4dnIA3Akpp5J5hUfaKRVO0TOQ/3sRK0XhJik9g==
X-Google-Smtp-Source: AGHT+IFgXm2jo5dhmI2RXTx2h3U0EmkRtDJU4E+HT/XrlMRq2RzGucNvBgE4VHNU+OWyzPD3IPnOIA==
X-Received: by 2002:a05:6602:6d1b:b0:81f:cad4:c6e7 with SMTP id ca18e2360f4ac-824f271f4cfmr1890735739f.15.1724128509735;
        Mon, 19 Aug 2024 21:35:09 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-824e98ed8c6sm368220539f.8.2024.08.19.21.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 21:35:08 -0700 (PDT)
Date: Tue, 20 Aug 2024 00:35:06 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Huang-Huang Bao <i@eh5.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Richard Kojedzinszky <richard@kojedz.in>,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] pinctrl: rockchip: correct RK3328 iomux width flag for
 GPIO2-B pins
Message-ID: <20240820043506.GA17134@localhost>
References: <20240709105428.1176375-1-i@eh5.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240709105428.1176375-1-i@eh5.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_213511_503422_F6D84B53 
X-CRM114-Status: GOOD (  26.63  )
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

On Tue 2024-07-09 @ 06:54:28 PM, Huang-Huang Bao wrote:
> The base iomux offsets for each GPIO pin line are accumulatively
> calculated based off iomux width flag in rockchip_pinctrl_get_soc_data.
> If the iomux width flag is one of IOMUX_WIDTH_4BIT, IOMUX_WIDTH_3BIT or
> IOMUX_WIDTH_2BIT, the base offset for next pin line would increase by 8
> bytes, otherwise it would increase by 4 bytes.
> 
> Despite most of GPIO2-B iomux have 2-bit data width, which can be fit
> into 4 bytes space with write mask, it actually take 8 bytes width for
> whole GPIO2-B line.
> 
> Commit e8448a6c817c ("pinctrl: rockchip: fix pinmux bits for RK3328
> GPIO2-B pins") wrongly set iomux width flag to 0, causing all base
> iomux offset for line after GPIO2-B to be calculated wrong. Fix the
> iomux width flag to IOMUX_WIDTH_2BIT so the offset after GPIO2-B is
> correctly increased by 8, matching the actual width of GPIO2-B iomux.

Thanks! My rock-pi-e stopped being able to read a mcp3002 with the last
update. Works again with this patch.

Tested-by: Trevor Woerner <twoerner@gmail.com>

> Fixes: e8448a6c817c ("pinctrl: rockchip: fix pinmux bits for RK3328 GPIO2-B pins")
> Cc: stable@vger.kernel.org
> Reported-by: Richard Kojedzinszky <richard@kojedz.in>
> Closes: https://lore.kernel.org/linux-rockchip/4f29b743202397d60edfb3c725537415@kojedz.in/
> Tested-by: Richard Kojedzinszky <richard@kojedz.in>
> Signed-off-by: Huang-Huang Bao <i@eh5.me>
> ---
> 
> I have double checked the iomux offsets in debug message match iomux
> register definitions in "GRF Register Description" section in RK3328
> TRM[1].
> 
> [1]: https://opensource.rock-chips.com/images/9/97/Rockchip_RK3328TRM_V1.1-Part1-20170321.pdf
> 
> Kernel pinctrl debug message with dyndbg="file pinctrl-rockchip.c +p":
>   rockchip-pinctrl pinctrl: bank 0, iomux 0 has iom_offset 0x0 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 0, iomux 1 has iom_offset 0x4 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 0, iomux 2 has iom_offset 0x8 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 0, iomux 3 has iom_offset 0xc drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 1, iomux 0 has iom_offset 0x10 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 1, iomux 1 has iom_offset 0x14 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 1, iomux 2 has iom_offset 0x18 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 1, iomux 3 has iom_offset 0x1c drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 2, iomux 0 has iom_offset 0x20 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 2, iomux 1 has iom_offset 0x24 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 2, iomux 2 has iom_offset 0x2c drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 2, iomux 3 has iom_offset 0x34 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 3, iomux 0 has iom_offset 0x38 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 3, iomux 1 has iom_offset 0x40 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 3, iomux 2 has iom_offset 0x48 drv_offset 0x0
>   rockchip-pinctrl pinctrl: bank 3, iomux 3 has iom_offset 0x4c drv_offset 0x0
> 
> The "Closes" links to test report from original reporter with original
> issue contained, which was not delivered to any mailing list thus not
> available on the web.
> 
> Added CC stable as the problematic e8448a6c817c fixed by this patch was
> recently merged to stable kernels.
> 
> Sorry for the inconvenience caused,
> Huang-Huang
> 
>  drivers/pinctrl/pinctrl-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 3f56991f5b89..f6da91941fbd 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3813,7 +3813,7 @@ static struct rockchip_pin_bank rk3328_pin_banks[] = {
>  	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
>  	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
>  	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", 0,
> -			     0,
> +			     IOMUX_WIDTH_2BIT,
>  			     IOMUX_WIDTH_3BIT,
>  			     0),
>  	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3",
> 
> base-commit: 4376e966ecb78c520b0faf239d118ecfab42a119
> --
> 2.45.2
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
