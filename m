Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 039E0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 11:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9scIp1OQdGWe95tINU0JmLdgHgcJcXQQe6OHDH9kH+8=; b=GFEZI1DxnWz/F0
	OfWNQMQwabyFqdKIiThg8kCHzjt7fs6B3cPk3MQmqFA1v3Yka9hx58WwAP9zawWasECweFiDzFYWS
	VxYjG6lFAutByVPxblJS1d0W5g1Kdyr9V3LmG6Qvo6xayoYpP9UU1Z58r0sadJWpl3XGgu4lGXh2M
	ul66IPk5vxCvOvVyi++3If7MzfuLRWPNFlncONlJJQ3lhwEjJscUg5MscgSw7XIENk2NVszKpYK3n
	FFVEFKGcvfHVE0owR2DHhHRDWjWCdJSs3ot+REF9RPiCqje1FovQDozviEAj16wqH5GCnpFNWtRsA
	pFX7WWZpq4DsbS0fX8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSHEg-00Cfsr-5u; Thu, 10 Mar 2022 11:45:38 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSHEd-00Cfrw-UM
 for linux-rockchip@lists.infradead.org; Thu, 10 Mar 2022 11:45:37 +0000
Received: by mail-ej1-x629.google.com with SMTP id yy13so11492225ejb.2
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Mar 2022 03:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m07EgktoRQs6UQmv9zKT1/mya3AqZllVKUfN19jmQgg=;
 b=kdI+prJ6PXdVNIht+xMeK9cJ4WWNcJtL7nIDKCiJKtl2SSYNk671+wCueM5j3ohM1C
 90hA+K5hl2NhlI3/ojxkFFUATO59aXEfFgPpHLlCFC33AtHSnh1WBaXtqxrTaTmM/5Jr
 J3rHSb827XsOFb5KAIeGyc3xBL9ud9lO7hRvWVNtUbT4VvDPwpQRN0aOYU8wK1+mrWOn
 ss9ktOkXBqMZmyGePsPhT3I8lnOS6SfcEjzshse28YcbQP1QblTSEi0MWDnJBadx6Oes
 oEMJaPuzFVTfeOK5jRfvEXIMy2tydR8vexzubllSzX6gl02JLU3PAmPS3T0UYsWFL8/J
 pD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m07EgktoRQs6UQmv9zKT1/mya3AqZllVKUfN19jmQgg=;
 b=viEsiXP0G0rfCkvUSR8cRuv9D9PNbFVL86UhQp42ZiOVcGm6ywIBAdfq8gVdbreRTb
 A2jhzXyTVfoibdoWZmUeBDSYIvTeCpSkq07Nh8Ww/sTN2SJiHFCuCst809J3NLJ8UYcg
 tcolRomcvaZ09qgpT9bqlNOHBtkbMcCbXMb+iPymtXVKWQPTke2UXXALH5o86hVhgbId
 j2JX/SXxpId271OvA+6HV6UFNzupXJjLApVyN2fkkhMWLKXME2XKIUusG2a/9Jw7gtEp
 I7HmSdmM4g5PdRdLZfszGtyHBvd9V+ESGaGp9ra2+nTsmI2QYUKAgm5wyA0eMUNhZS4E
 jOwg==
X-Gm-Message-State: AOAM531jgoe89E4aoq8cfEQXrjYL4IFcjLRlzf/n3U5DK/+0hEl/DljQ
 Yx6nXYn7AoTHXdPEf77sGN/P9hTLtPYq/5Wv/XkoGtJkRps=
X-Google-Smtp-Source: ABdhPJwGJscjSOK/9D2RzsFjYvf1Lfz1beMZMg/DT4cmzSthWajIGqNDbKodxyDCQxXiAyfGMCnKA645g0s2/sNhEao=
X-Received: by 2002:a17:907:9703:b0:6da:6412:508a with SMTP id
 jg3-20020a170907970300b006da6412508amr3956317ejc.77.1646912733650; Thu, 10
 Mar 2022 03:45:33 -0800 (PST)
MIME-Version: 1.0
References: <20220308061935.2441447-1-jay.xu@rock-chips.com>
 <20220308061935.2441447-3-jay.xu@rock-chips.com>
In-Reply-To: <20220308061935.2441447-3-jay.xu@rock-chips.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 10 Mar 2022 13:44:57 +0200
Message-ID: <CAHp75VenbfJLOmavP8p8gqfka-n1xvni23g_vT7vg=wrJK5Erg@mail.gmail.com>
Subject: Re: [PATCH 2/4] gpio: rockchip: get irq support for both dt and acpi
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Tao Huang <huangtao@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_034536_013663_4F4FBAC4 
X-CRM114-Status: GOOD (  11.58  )
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

On Wed, Mar 9, 2022 at 1:06 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Get the irq of gpio controller with fwnode apis, support for both dt
> node and acpi.

DT
ACPI

...

> -

Stray change.

> +#include <linux/acpi.h>

Probably you wanted property.h.

>  #include <linux/bitops.h>
>  #include <linux/clk.h>
>  #include <linux/device.h>
> @@ -639,10 +639,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  {
>         int id = 0;
>
> -       bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> -       if (!bank->irq)
> -               return -EINVAL;
> -
>         bank->clk = of_clk_get(bank->of_node, 0);
>         if (IS_ERR(bank->clk))
>                 return PTR_ERR(bank->clk);
> @@ -668,6 +664,24 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>         return 0;
>  }

...

> +       if (np)
> +               irq = irq_of_parse_and_map(np, 0);
> +       else if (has_acpi_companion(dev))
> +               irq = platform_get_irq_optional(to_platform_device(dev), 0);

Why can't this work for the DT case?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
