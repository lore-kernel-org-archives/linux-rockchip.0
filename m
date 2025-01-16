Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA620C02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 14:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILcs1KTrl7sHdkeNIdSupZpAZQLzLC6b0Kqg+csiwek=; b=ADSgSIS1OiiBsy
	FAnwD5QPRdbOPY3/Ro/EitNDXsvxBElxC6sYDBRS7B9RzsAGlRkz7fUHMRuLs099g1cDBMROltb/k
	lfqG2wnaVnHlU2GwbZfo2eIP6AxaZaOlAokQRJ0TgCIxFN787iFRkgVk8vhnQmJOuSnHeR5GMPZdV
	Ulodn1mCw43NBjxXZHns//OLRYaqy8Hd+JaQnalj0GouJAEoq72EgppAJy5yj5qFd2kol3t+IBWUf
	5jhWMgXxtGxYotIPJggrXiL7IBQgX0kXgR0Cvah6kG64YAd3Ma6bpdtJ0ISGhP55LG5R9VF9SQAnE
	tjKEeksl4fxJl50KXgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYRAJ-0000000FDyv-3sGH;
	Thu, 16 Jan 2025 14:48:11 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYR93-0000000FDl3-1BEG
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 14:46:54 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e53a91756e5so1882713276.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 06:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737038812; x=1737643612; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+m1G7PofLTIXji56NSz1j24b2b2T3MuG3/CntqxLBBw=;
        b=EiGGEymabOEsk6Y15F+uHzMe6ZUiylM+016+khoOR6EHpvYL6dKZFL/7wKtBvC21pN
         GZYwn0POG508kY1oKwx/Vt7Mqe+Pgwpq0Gt1bSFwW73se3jbByN/iiGpcrb1qsIWzNtT
         xXDtfdqt2lt+ACZ9dyQTZvG2NuG4imrb2xDzBkTDnnhQIDcbFvMBvm/GNuJrZO45WHUr
         J5bweJvwl+BPUyjIhBMEFdWswzZmOxCEVW0Sono+wQKMKuBshRMMF8P+F9Ys//ZZKbo8
         gglhIF/IfyOSgK7tyoslNh7VNwSSfRBisEGnTTU8wSMunpkojRmqiEaUb+jnA1KrF96x
         jpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737038812; x=1737643612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+m1G7PofLTIXji56NSz1j24b2b2T3MuG3/CntqxLBBw=;
        b=O34EZYJ1+IcO7x0/f0nVXg5HlAszqkvQJTWC65OEJeyvR9ZxdMgVL1s84Zq+UNTGIp
         ITBIo7PmdEtLztBPgrkThhidAaOKqs/FRKQaHOuDXxjyhayPi0Mc+0AvD+vx60Tfduza
         CgAQMgckEKbE4vSoIPKAim/dDd4EndQGY1cVPYanpdq5TZM1zp7tzJSFZvOxOgdg8JPy
         cJiEgf76/POqZTSRePIhkHJfJOBBVRf2bNG+Bogve7WKb8sYl8ORtuKmD0Hyt6bYgNFa
         qBeEmbaK/Umnh4PKnxCZ0MXqABoGWDM3ZJHNdVPeifvaTKqzTnGaDj5rRpffqIeQ8d83
         UKtA==
X-Forwarded-Encrypted: i=1; AJvYcCUUCxO8HF7ZxXSSMVOh80ASquMxilg/3AN4ZqiFXlDerSRtlAVwi/dPMr0AI5Lzc1Qcstr1F5J2+uCdy3XaDQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxoUAWA4ZVibh1og0AgV8SYgCKE13xmH6adlFV32xYouLaZz63H
	XaH3Wh6C0CJGjMCGh93oa7Cfv75BxagSDztGYM6phSOZRNsv4TpuU87gsNF7gFtFmVNLu6dO6bL
	V5XB0604fGhO8u2g1Oz0W9uOVRgPfp9qtKgWC5A==
X-Gm-Gg: ASbGnctE6oMxUCLK1RksYhfyU9PP8JO+FwccfZjdxN0HUQDXrg2aR8rfPHNWS4JkoYR
	Wx3kX17tmW4cC+0nd2gdCm6y5AARzP5FF/O27Xro=
X-Google-Smtp-Source: AGHT+IEgtTusJYrVZnLJqpkMnaQW6PKvqXaBdJ1qWB4u4sYFRvuNXZZiCbeAuzNh5mb57/Q5o/7WHYssJXuaOMTG558=
X-Received: by 2002:a05:690c:4d81:b0:6ef:7f34:fe08 with SMTP id
 00721157ae682-6f531224a36mr294371267b3.18.1737038812063; Thu, 16 Jan 2025
 06:46:52 -0800 (PST)
MIME-Version: 1.0
References: <20241224093920.3816071-1-kever.yang@rock-chips.com> <20241224093920.3816071-2-kever.yang@rock-chips.com>
In-Reply-To: <20241224093920.3816071-2-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 16 Jan 2025 15:46:16 +0100
X-Gm-Features: AbW1kvahorrlWkjwCiv7wkTLlUP8_JyQ26Uq7qZus2JotVO1Pyr02DSo-fK3yF0
Message-ID: <CAPDyKFqYjTsWsqf-C+iHJz3x-RKdsm2-2cPm-HMeH=WBNzcSLw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] soc: rockchip: power-domain: add power domain
 support for rk3562
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-pm@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_064653_324393_05C462CE 
X-CRM114-Status: GOOD (  20.98  )
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

On Tue, 24 Dec 2024 at 10:39, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> This driver is modified to support RK3562 SoC.
> Add support to ungate clk.
> Add support to shut down memory for rk3562.
>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>
> Changes in v2:
> - update the header after rename
>
>  drivers/pmdomain/rockchip/pm-domains.c | 48 +++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index cb0f93800138..d05ec0a009a0 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -2,7 +2,7 @@
>  /*
>   * Rockchip Generic power domain support.
>   *
> - * Copyright (c) 2015 ROCKCHIP, Co. Ltd.
> + * Copyright (c) 2015 Rockchip Electronics Co., Ltd.
>   */
>
>  #include <linux/io.h>
> @@ -32,6 +32,7 @@
>  #include <dt-bindings/power/rk3366-power.h>
>  #include <dt-bindings/power/rk3368-power.h>
>  #include <dt-bindings/power/rk3399-power.h>
> +#include <dt-bindings/power/rockchip,rk3562-power.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/power/rockchip,rk3576-power.h>
>  #include <dt-bindings/power/rk3588-power.h>
> @@ -129,6 +130,20 @@ struct rockchip_pmu {
>         .active_wakeup = wakeup,                        \
>  }
>
> +#define DOMAIN_M_G_SD(_name, pwr, status, req, idle, ack, g_mask, mem, wakeup, keepon) \
> +{                                                      \
> +       .name = _name,                                  \
> +       .pwr_w_mask = (pwr) << 16,                      \
> +       .pwr_mask = (pwr),                              \
> +       .status_mask = (status),                        \
> +       .req_w_mask = (req) << 16,                      \
> +       .req_mask = (req),                              \
> +       .idle_mask = (idle),                            \
> +       .ack_mask = (ack),                              \
> +       .clk_ungate_mask = (g_mask),                    \
> +       .active_wakeup = wakeup,                        \
> +}
> +
>  #define DOMAIN_M_O_R(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, wakeup)     \
>  {                                                      \
>         .name = _name,                                  \
> @@ -194,6 +209,9 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3399(name, pwr, status, req, wakeup)          \
>         DOMAIN(name, pwr, status, req, req, req, wakeup)
>
> +#define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)             \
> +       DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
> +
>  #define DOMAIN_RK3568(name, pwr, req, wakeup)          \
>         DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
>
> @@ -1130,6 +1148,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
>         [RK3399_PD_SDIOAUDIO]   = DOMAIN_RK3399("sdioaudio", BIT(31), BIT(31), BIT(29), true),
>  };
>
> +static const struct rockchip_domain_info rk3562_pm_domains[] = {
> +                                            /* name           pwr     req     g_mask  mem wakeup */
> +       [RK3562_PD_GPU]         = DOMAIN_RK3562("gpu",         BIT(0), BIT(1), BIT(1), 0, false),
> +       [RK3562_PD_NPU]         = DOMAIN_RK3562("npu",         BIT(1), BIT(2), BIT(2), 0, false),
> +       [RK3562_PD_VDPU]        = DOMAIN_RK3562("vdpu",        BIT(2), BIT(6), BIT(6), 0, false),
> +       [RK3562_PD_VEPU]        = DOMAIN_RK3562("vepu",        BIT(3), BIT(7), BIT(7) | BIT(3), 0, false),
> +       [RK3562_PD_RGA]         = DOMAIN_RK3562("rga",         BIT(4), BIT(5), BIT(5) | BIT(4), 0, false),
> +       [RK3562_PD_VI]          = DOMAIN_RK3562("vi",          BIT(5), BIT(3), BIT(3), 0, false),
> +       [RK3562_PD_VO]          = DOMAIN_RK3562("vo",  BIT(6), BIT(4), BIT(4), 16, false),
> +       [RK3562_PD_PHP]         = DOMAIN_RK3562("php",         BIT(7), BIT(8), BIT(8), 0, false),
> +};
> +
>  static const struct rockchip_domain_info rk3568_pm_domains[] = {
>         [RK3568_PD_NPU]         = DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false),
>         [RK3568_PD_GPU]         = DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false),
> @@ -1331,6 +1361,18 @@ static const struct rockchip_pmu_info rk3399_pmu = {
>         .domain_info = rk3399_pm_domains,
>  };
>
> +static const struct rockchip_pmu_info rk3562_pmu = {
> +       .pwr_offset = 0x210,
> +       .status_offset = 0x230,
> +       .req_offset = 0x110,
> +       .idle_offset = 0x128,
> +       .ack_offset = 0x120,
> +       .clk_ungate_offset = 0x140,
> +
> +       .num_domains = ARRAY_SIZE(rk3562_pm_domains),
> +       .domain_info = rk3562_pm_domains,
> +};
> +
>  static const struct rockchip_pmu_info rk3568_pmu = {
>         .pwr_offset = 0xa0,
>         .status_offset = 0x98,
> @@ -1429,6 +1471,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
>                 .compatible = "rockchip,rk3399-power-controller",
>                 .data = (void *)&rk3399_pmu,
>         },
> +       {
> +               .compatible = "rockchip,rk3562-power-controller",

I couldn't find the corresponding DT patch where this compatible is
being documented. Can you please re-send and keep me posted for both
the DT and pmdomain patch?

> +               .data = (void *)&rk3562_pmu,
> +       },
>         {
>                 .compatible = "rockchip,rk3568-power-controller",
>                 .data = (void *)&rk3568_pmu,
> --
> 2.25.1
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
