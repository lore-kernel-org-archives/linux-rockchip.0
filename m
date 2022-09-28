Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E04C6FA82
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMbBI9aOZRNHcpS5JoBDMAEU4dYe+mtOmzvWrT7vtdk=; b=4+p0TOp/5J7+8r
	A3+2bAQb0Rr9VrPLuNbx355TEKJfAtEMx7+Tni9b3YQVxZUWp6OEziKrwwTm4TFhO7fqaL6NrLdF8
	TeO5AiDiGStM1oq+MKDTCXVB2XsJHo1zo2z1ah83SSTd5cReQzeza4N2upREjwIVcsD2aLJT51YKD
	RiUm7KEGWbY5/5Wz4BmhLrWJ136JI+OO7Z1Wx8wOZ43L49eqFNUZM+0lV6iBUa0ZiKT3Wv/VRYv7a
	ApyZ1Cr3vy7N2zfudXIxsKACHXNs+4ObVIQWN6hgh4HbxiHLAau/1Its8xwrm7EEvIZkc6DtEEjfp
	koAL50SasrQe1rrSNZ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBb-00FZM0-Ao; Wed, 28 Sep 2022 10:21:03 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBS-00FZDv-S9
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 10:20:57 +0000
Received: by mail-wm1-x32f.google.com with SMTP id i203-20020a1c3bd4000000b003b3df9a5ecbso899365wma.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 03:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GFQac9gO9FQMIhxZMc9yIAZ5HmmuhpzjnFHF+mwBd1o=;
        b=cOwMIx8FxttrUzn9dBbAViamkb7w+FHyYaqn5yvISTTi7kg3YhWVQK1hPkf0h3vX0h
         RdthR5Hu0En4NVTyvNk7V4OZyU4TkbySRTI91B8/dSe9Pg2DDxQLe0VIOjpVF0I2TPuj
         AHv9OmV8KUNAoQ/xZmuRfr4G/iqNMqZYAb0TQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GFQac9gO9FQMIhxZMc9yIAZ5HmmuhpzjnFHF+mwBd1o=;
        b=Y6jS/OQL2zHNlYZ3BvgqhbJZsFggGgSTG9aEOQyiqlAbk7mYuxIDSrPAtL+43X9t3I
         uRmfCmCY6Sp0+FNuAdsMPI0i3W/ukKiQ+8pZCGUyC3VoUHo9c4o6qxrqpLDQwe+BE4WS
         mEL/Bh3ZbR6Vvrzo1uoQ4TZDmYVfLoRTu7KA4DZUhMcSwQSRKmdCQSsd7JLsgDLhHDty
         qxTEcmWKhSaVJMWW1+NQpOgmZBESRDP5o4zXPO47XMKRtWQ4hSL5522B581jjsjkHjes
         N8bw9X7enXAxwx8cmHLiWN/XdB6EUxEyJVuf/xUW7c1RrHQzAv9ZJxhqRrmfwRnTEfyT
         TJRA==
X-Gm-Message-State: ACrzQf2amBPl4yGae2AAXpuKfMx8MvQ0DlhZY86jRm0JPOp4ilbTKM10
	e6TsAOLzZ604VN37s/oZbg85V0wjx1r2gia/sacbtMWqLds=
X-Google-Smtp-Source: AMsMyM718D0cn7whxrXJERhktZtxjKKXQxlBV5H31XYCz6OjsO96cy+FOL9I0L0H1qUzidiaIYamZmgilqCcu6SJMxU=
X-Received: by 2002:a05:600c:5254:b0:3b5:99c:9be1 with SMTP id
 fc20-20020a05600c525400b003b5099c9be1mr6343655wmb.172.1664360447416; Wed, 28
 Sep 2022 03:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220922064704.1740759-1-hanetzer@startmail.com> <20220922064704.1740759-3-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-3-hanetzer@startmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 28 Sep 2022 04:20:35 -0600
Message-ID: <CAPnjgZ1vDvV6MBbDmnird5QfMyLrB_WOQJYxEbRzoQ-7OMO=Yg@mail.gmail.com>
Subject: Re: [RFC PATCH 2/4] rockchip: rk3288: enable uart2->usb redirection
To: "Marty E. Plummer" <hanetzer@startmail.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Johan Jonker <jbx6244@gmail.com>, 
	Philipp Tomsich <philipp.tomsich@vrull.eu>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_032054_933809_1098BE07 
X-CRM114-Status: GOOD (  18.74  )
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

On Thu, 22 Sept 2022 at 00:47, Marty E. Plummer <hanetzer@startmail.com> wrote:
>
> Code snagged from rk3188's u-boot implementation and the linux kernel's
> implementation of rockchip.usb_uart=1
> Tested on rk3288-veyron-speedy
>
> patman/checkpatch.pl doesn't like my indentation here and I can't quite
> figure out what it actually wants.
> Complaint is:
> arch/arm/mach-rockchip/rk3288/rk3288.c:95: check: Alignment should match open parenthesis
> arch/arm/mach-rockchip/rk3288/rk3288.c:99: check: Alignment should match open parenthesis
> arch/arm/mach-rockchip/rk3288/rk3288.c:101: check: Alignment should match open parenthesis
> arch/arm/mach-rockchip/rk3288/rk3288.c:108: check: Alignment should match open parenthesis
>
> Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
> ---
>
>  .../include/asm/arch-rockchip/grf_rk3288.h    | 41 +++++++++++++++++++
>  arch/arm/mach-rockchip/rk3288/rk3288.c        | 20 +++++++++
>  2 files changed, 61 insertions(+)
>

Reviewed-by: Simon Glass <sjg@chromium.org>

(see below)

> diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
> index 894d3a40b0..d94cd9a27a 100644
> --- a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
> +++ b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
> @@ -1152,4 +1152,45 @@ enum GPIO_BIAS {
>  #define GPIO_PULL_MASK 0x3
>  #define GPIO_PULL_SHIFT(x)  ((x) * 2)
>
> +/* GRF_UOC_CON0 */
> +enum {
> +       SIDDQ_SHIFT             = 13,
> +       SIDDQ_MASK              = 1 << SIDDQ_SHIFT,
> +
> +       UOC_DISABLE_SHIFT       = 4,
> +       UOC_DISABLE_MASK        = 1 << UOC_DISABLE_SHIFT,
> +
> +       COMMON_ON_N_SHIFT       = 0,
> +       COMMON_ON_N_MASK        = 1 << COMMON_ON_N_SHIFT,
> +};
> +
> +/* GRF_UOC_CON2 */
> +enum {
> +       SOFT_CON_SEL_SHIFT      = 2,
> +       SOFT_CON_SEL_MASK       = 1 << SOFT_CON_SEL_SHIFT,
> +};
> +
> +/* GRF_UOC0_CON3 */
> +enum {
> +       BYPASSSEL_SHIFT         = 7,
> +       BYPASSSEL_MASK          = 1 << BYPASSSEL_SHIFT,
> +
> +       BYPASSDMEN_SHIFT        = 6,
> +       BYPASSDMEN_MASK         = 1 << BYPASSDMEN_SHIFT,
> +
> +       TERMSEL_FULLSPEED_SHIFT = 5,
> +       TERMSEL_FULLSPEED_MASK  = 1 << TERMSEL_FULLSPEED_SHIFT,
> +
> +       XCVRSELECT_SHIFT        = 3,
> +       XCVRSELECT_FSTRANSC     = 1,
> +       XCVRSELECT_MASK         = 3 << XCVRSELECT_SHIFT,
> +
> +       OPMODE_SHIFT            = 1,
> +       OPMODE_NODRIVING        = 1,
> +       OPMODE_MASK             = 3 << OPMODE_SHIFT,
> +
> +       SUSPENDN_SHIFT          = 0,
> +       SUSPENDN_MASK           = 1 << SUSPENDN_SHIFT,
> +};
> +
>  #endif
> diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
> index 3ad2887575..d9bb1add87 100644
> --- a/arch/arm/mach-rockchip/rk3288/rk3288.c
> +++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
> @@ -89,6 +89,26 @@ int arch_cpu_init(void)
>         rk_clrreg(&grf->soc_con0, 1 << 12);
>
>         rk3288_qos_init();
> +
> +       if (IS_ENABLED(CONFIG_ROCKCHIP_USB_UART)) {
> +               rk_clrsetreg(&grf->uoc0_con[0],
> +                       SIDDQ_MASK | UOC_DISABLE_MASK | COMMON_ON_N_MASK,

S shold line up with &


> +                       1 << SIDDQ_SHIFT | 1 << UOC_DISABLE_SHIFT |
> +                       1 << COMMON_ON_N_SHIFT);
> +               rk_clrsetreg(&grf->uoc0_con[2],
> +                       SOFT_CON_SEL_MASK, 1 << SOFT_CON_SEL_SHIFT);
> +               rk_clrsetreg(&grf->uoc0_con[3],
> +                       OPMODE_MASK | XCVRSELECT_MASK |
> +                       TERMSEL_FULLSPEED_MASK | SUSPENDN_MASK,
> +                       OPMODE_NODRIVING << OPMODE_SHIFT |
> +                       XCVRSELECT_FSTRANSC << XCVRSELECT_SHIFT |
> +                       1 << TERMSEL_FULLSPEED_SHIFT |
> +                       1 << SUSPENDN_SHIFT);
> +               rk_clrsetreg(&grf->uoc0_con[3],
> +                       BYPASSSEL_MASK | BYPASSDMEN_MASK,
> +                       1 << BYPASSSEL_SHIFT | 1 << BYPASSDMEN_SHIFT);
> +       }
> +
>  #endif
>
>         return 0;
> --
> 2.37.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
