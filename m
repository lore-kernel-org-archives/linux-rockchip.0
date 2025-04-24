Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93A1FC369D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Apr 2025 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W++/9kApqBlIVFXgYNhYtBdd5zbsDPHzw6e/OA7SRkE=; b=NjK3FM+4DZdRxF
	EqRHxpUuHHk9WJgzkfN8K5oZyZ6CNS86jFxyIwy6X8+/DRsks2iH5d28SFlOU6TknPTsydOqzs4aj
	PCsyZRuhVUJzmkJKZdnm+bUmGW2po9byWXEmC4bGJvpbIGnwG/RjlLyyDoVDjoDJRze2SAYDF2PhL
	LlvIcsTVzmkbwfkE/bInbjLnSE1XcIB1m+bbLpLKECjCfVoYIU3DRtM8k1SpPMpOLkjgORz0jHITF
	xcdAnt5vvrrh2vNIIOCD82ZWZxgdQhwhyzCwWHaAHMr0Cn91j0Ikx7kzNcnChFFjNdIsg1rWzSLFR
	GEzrobotpSHN/auLVIpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u807d-0000000Er7U-2oxW;
	Thu, 24 Apr 2025 17:12:25 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ztT-0000000EpSz-34Z6
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Apr 2025 16:57:48 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6fece18b3c8so13344787b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Apr 2025 09:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513866; x=1746118666; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cMFtwR0cjY9A1szP289YoQESj54wwE6Rq8FAwxVKpA4=;
        b=Ak4qJZHABKbS3M7gvd/VI0vhX4IBie9HUImE5SCSytwbO33ODhJn0S2dZCSrKJQldu
         PtYmsjbxWnBPaDhT70XYgUb2MZ7myiWXntywMyTLUWTaozj84SwENe4ozmQLFx2oB3fH
         ynLacanJEMQidW1pwDLQkTy8QsIre9gBHeRqUOYxAxkVoHt5Htt2mbAU/APQ/IQ0+rbB
         I2UzEueMPK1bKeTQrqbzTJSTHNKKNwrYAP8ZJv16v14GfQQflNHF4E1XqG61V8wCHlic
         46WHAfADrCq3mekq2Wa/GzGgzybjzdxtt68KbQwjSlUqBorAoJsb7+khJfrl44xuee+G
         XWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513866; x=1746118666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cMFtwR0cjY9A1szP289YoQESj54wwE6Rq8FAwxVKpA4=;
        b=WcT1Wm4QOpKmGVAeHfx2FKYOlwYbwxDlajxPq0qJoKxcHqYz9+Imo4KRbtGgWUNzZw
         M4YaqBQdYHmN9J6y6NWmTveDBjXQqm0KuT3JUdGB280w2t4NtzwEu/xOu/TvFTyHtZwy
         T3C0wLkKHT9Mgohd5xYlslvYimQ9eC+ps1UGJueZItZNu57AJvgHcnjMB7EAQkaQIQ62
         Z+1x/J1M6yqWwEXzJscvFzxfvHgsNHFQ4dXl/j9K6NRnVroMu5PH9uNVzMjGEq1m9Lyi
         duICpHN+OY6ecyuUFTCNROGCreLwsE2q2NALqPlAQitCWEGF2wsZ/aHdtBI9wrL2mT9I
         r7nA==
X-Forwarded-Encrypted: i=1; AJvYcCVNGfsXswvQvafWz/3vxnSIoI/p2TvsDzJDEODMwd5fJALD+/iJuaJJi+0Ov9P1kzxSc7MyvIMqQuxtu+MikA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYlmdCve1Qs7TjnjMVk45fBk3KdpUpOmVTewWtnJ1aPHfzcrCX
	ECdFczJQFYx0KUQtItquDpzJzzb6i4IuR8uLldZJZjt/QnHKrHAuN+HRQk+LVKlLZLvQskXI4cp
	jctFd7JaZiheRpZVnXV5QP2zWOqVtyCW7WsRWjg==
X-Gm-Gg: ASbGncvmCWel0cGvo2PgBHZ3cn1WTkl6AzmFx4N422cgGHD3G+q0W0v3dDsFA8SaxA8
	EVdr+OipRfsQU/nWatl3wtA6YRGmHBKiRm+lHgj9XPLqVlldpMxLaAqBS/msgZnzpYksDGVP/fW
	AaNt2h47THOD08vA7KFoicL+k=
X-Google-Smtp-Source: AGHT+IH5p9xZ9JTlIabjNlX7tQHJrcaoNt4NdS4YrEPTAAfSSCwMBfEDdWwaxwxD2TzmAUDKr0gH0wiBCRrqHBSYDNU=
X-Received: by 2002:a05:690c:385:b0:6fd:2feb:eb6e with SMTP id
 00721157ae682-7084f129df8mr7111907b3.28.1745513866588; Thu, 24 Apr 2025
 09:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250415032314.44997-1-kever.yang@rock-chips.com> <20250415032314.44997-2-kever.yang@rock-chips.com>
In-Reply-To: <20250415032314.44997-2-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:10 +0200
X-Gm-Features: ATxdqUHaEq5VBCeeWj8VtNYyErWM1Dmw22DJsOkuoLiPj5dVBYs62HJ1VPg7Ulw
Message-ID: <CAPDyKFqLQsG-rNeYgHT4g2mCWjPzkF2nkktUXxAL95tM7g+Smg@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] soc: rockchip: power-domain: add power domain
 support for rk3562
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-pm@vger.kernel.org, 
	Detlev Casanova <detlev.casanova@collabora.com>, linux-kernel@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Peter Geis <pgwipeout@gmail.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_095747_772090_4F0E3592 
X-CRM114-Status: GOOD (  21.91  )
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

On Tue, 15 Apr 2025 at 05:23, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> From: Finley Xiao <finley.xiao@rock-chips.com>
>
> This driver is modified to support RK3562 SoC.
> Add support to ungate clk.
> Add support to shut down memory for rk3562.
>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Applied for next and by amending the commit message header, thanks!

Kind regards
Uffe


> ---
>
> Changes in v4:
> - rebase to v6.15-rc1
> - update patch author and Collect review tag
>
> Changes in v3: None
> Changes in v2:
> - update the header after rename
>
>  drivers/pmdomain/rockchip/pm-domains.c | 48 +++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 03bcf79a461f..4cce407bb1eb 100644
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
>  #include <linux/arm-smccc.h>
> @@ -35,6 +35,7 @@
>  #include <dt-bindings/power/rk3366-power.h>
>  #include <dt-bindings/power/rk3368-power.h>
>  #include <dt-bindings/power/rk3399-power.h>
> +#include <dt-bindings/power/rockchip,rk3562-power.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/power/rockchip,rk3576-power.h>
>  #include <dt-bindings/power/rk3588-power.h>
> @@ -135,6 +136,20 @@ struct rockchip_pmu {
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
>  #define DOMAIN_M_O_R(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, wakeup, regulator)  \
>  {                                                      \
>         .name = _name,                                  \
> @@ -201,6 +216,9 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3399(name, pwr, status, req, wakeup)          \
>         DOMAIN(name, pwr, status, req, req, req, wakeup)
>
> +#define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)             \
> +       DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
> +
>  #define DOMAIN_RK3568(name, pwr, req, wakeup)          \
>         DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
>
> @@ -1197,6 +1215,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
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
> @@ -1398,6 +1428,18 @@ static const struct rockchip_pmu_info rk3399_pmu = {
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
> @@ -1496,6 +1538,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
>                 .compatible = "rockchip,rk3399-power-controller",
>                 .data = (void *)&rk3399_pmu,
>         },
> +       {
> +               .compatible = "rockchip,rk3562-power-controller",
> +               .data = (void *)&rk3562_pmu,
> +       },
>         {
>                 .compatible = "rockchip,rk3568-power-controller",
>                 .data = (void *)&rk3568_pmu,
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
