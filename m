Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9601C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 12:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzgbB9t4fP/mzaehFppL1BI7u/6cEQeb55CwBdmbIOE=; b=NRbKOQRNV7RVUU
	zOev4jIr/9tQ7+VV5kS3M4wx9r4CSnRHmQNKHXyNeb6CW3n2BsLrTyY2t0kCvvXm2ICwv2DGjBY4Y
	2mDcfxdI6wuqLqSsyZGYdeyWAUXht1wVoNHGVKHFHxmbEOyPWMlDOYIQUJu/J96MJuUW/xS1Ur4wF
	zpgvHDG2WDajEV9doVhJsjprgKRwarR3Z3txt4aIqEuvarvzkT8foTdZxm04V4Kv/y/Hmx+qA9ZUc
	yZpI4UtIXOtjcU0RQ3edlUG3a6dHLcujsLCZge1HdWZlZ5HbYOXNlMe7844NxSsRcYgXzSLL6B8O4
	hMCR8kHm1PWMXKBC441Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qme-0000000ASMJ-0Hje;
	Thu, 10 Apr 2025 12:13:28 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qkp-0000000AS6M-2Voa
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 12:11:37 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-70433283ba7so7581107b3.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 05:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744287094; x=1744891894; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GODg1sr3TqhQ4Fv9FuUuLx/OAO/e6m30LtMeN+DvF4U=;
        b=cwPvQDx7ZfYfHpFFLT3edIJzzXCvRV+T/wPD1p3AaBP1PkatqqisHA7mzoazdEnOPi
         kLQu/CsuWzu8cAvxyTXDaQNppfXQVK5tXjjDQZcTNsL7cbrfvYvhg+8PD/MrF48jbUfV
         OF9EWPdELipGIQnkM2+LwMd8YxtelrGHdz8LPagQCPbSONBR7w6v+w+x0bS9o5Z+3sd5
         qI/0SikJMWPOGBJdleK3jWQR01dFLimtQe3HnTowYNn8HJNGCtPgq47MceOCX/MLe6M7
         vLAGPAaibgiHBia9J9c3CAyUnm4L+NQkn1qM0wchhzhbhYcgqg5oA0MCbpKRRaG99eBj
         +xEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744287094; x=1744891894;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GODg1sr3TqhQ4Fv9FuUuLx/OAO/e6m30LtMeN+DvF4U=;
        b=Q3aJH6L40fgqqlfJ6lLXiGDL5hiXcVhtr+9k5GCDkAxKSe9dd516S1kShE17L5yF7B
         Ej6/ZpVZLOEmbXBNhak3pvK10j5pJug8jMSu6BDQ0vlN2oXD673nYx9GPNEkCxaJIaRf
         Lk6SxFzUnFdnZ0Q5fSWPw45C7DQbQ9NhLhPh5pmAzYscF2zHJJKr5x/qQwdQlH4Uy3VZ
         G/WPXnPUWyt2MwbDy2DsI4bP+tcoOjJDFrsW6spffs31pG1vIhZa6vG/0ox+6UDMFSzO
         zhpJJ1fiRTWc1nSm4RH9VZgUxN4S22vZC2PFBPyIP0Psh8SVy+aHLCjsLEDhX1BEaZTJ
         zQnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCbYcb+aqo2cz5RIKZbG1We/qqT4e663fmVkaaNshwlJnPEkVJBUU19vdm3Dj5ZpAndH/GV6BUrQ5WE0qLQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOj1RJU9opQ616309lPyMc9D3XL5CSvnfIcuREemqnaTf6NiMN
	atb8SzdGDq4Oey+5aIkPQKGI82RgbxS1ZPxOsk1NyxVMcXpOSfGywCxvlTchzNYUOFHkVi0qdRL
	seFV66yxy/23qaa7bnRimC7MtkNSTvtc0VJsuZw==
X-Gm-Gg: ASbGncuzlKnvu4VpZlguxFexUEP6sffHcW537GjDvN8QHhwXNkHGxdO4GzTjir6CLR6
	JJ6hNFG3fM3kXImxIYaSdKSSxkP4GkD/Rcx9oOFIXg0q4ybNWBWIEk5msEE077tQmtfX1ynTeNq
	xoMNVTb2bt12Zs+iISTRqqGTg=
X-Google-Smtp-Source: AGHT+IEaAeZFUU5jdkuXuZMt+wySNJzy/MbvrsIxEGoiN0HFj4u/P3fiO7lMq3uDeVM1C0fZkbV6FE5PdU8taEvK7Qs=
X-Received: by 2002:a05:690c:6f8d:b0:6fe:b88e:4d9b with SMTP id
 00721157ae682-7054a15b480mr44757647b3.27.1744287093826; Thu, 10 Apr 2025
 05:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250408-rk3576-emmc-fix-v1-1-3009828b1b31@collabora.com>
In-Reply-To: <20250408-rk3576-emmc-fix-v1-1-3009828b1b31@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 10 Apr 2025 14:10:56 +0200
X-Gm-Features: ATxdqUEalVIVr_OHHu142XIyjmkdERRsYFQFdtoD5ul8ceb6Np50IJHki8j6pTQ
Message-ID: <CAPDyKFpw=qXT6Qh_Gyub7L3ELdODPkyEZVtALvnJZ3OZQeS76w@mail.gmail.com>
Subject: Re: [PATCH RESEND] pmdomain: rockchip: keep PD_NVM on RK3576 always on
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_051135_630592_9CD160E5 
X-CRM114-Status: GOOD (  26.21  )
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

+ Shawn Lin

On Tue, 8 Apr 2025 at 17:28, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> Due to what seemingly is a hardware bug, PD_NVM never comes up quite the
> same after being turned off once. The result is that the sdhci
> controller will lock up the entire SoC when it's accessing its CQHCI
> registers.
>
> The downstream kernel hacks around this by setting
> GENPD_FLAG_RPM_ALWAYS_ON in the mmc host driver, which does not seem
> like the right place for this.
>
> Set GENPD_FLAG_ALWAYS_ON in the pmdomain driver for PD_NVM. I'm using
> the non-RPM version of the flag here because I have my doubts a
> suspend-resume cycle will fix it. Suspend-resume currently seems busted,
> so I couldn't test this.
>
> Fixes: cfee1b507758 ("pmdomain: rockchip: Add support for RK3576 SoC")
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Shawn Lin recently made some changes [1] to make UFS work for this
platform, as you probably know of. In particular the changes affected
how to handle the UFS controller from the power-domain point of view.
Could it be that something similar is missing for NVM too?

In any case, I am happy to apply this as a fix if you still think it
makes sense.

Kind regards
Uffe

[1]
https://lore.kernel.org/all/1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com/

> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 48 ++++++++++++++++++----------------
>  1 file changed, 26 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 03bcf79a461f5db14173b35c0d110541e6d3f760..2b220b7c77b3d292f49cbc60338d3925146fb211 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -48,6 +48,7 @@ struct rockchip_domain_info {
>         int ack_mask;
>         bool active_wakeup;
>         bool need_regulator;
> +       bool always_on;
>         int pwr_w_mask;
>         int req_w_mask;
>         int clk_ungate_mask;
> @@ -154,7 +155,7 @@ struct rockchip_pmu {
>         .need_regulator = regulator,                    \
>  }
>
> -#define DOMAIN_M_O_R_G(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, g_mask, wakeup)   \
> +#define DOMAIN_M_O_R_G(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, g_mask, wakeup, _always_on)       \
>  {                                                      \
>         .name = _name,                                  \
>         .pwr_offset = p_offset,                         \
> @@ -171,6 +172,7 @@ struct rockchip_pmu {
>         .clk_ungate_mask = (g_mask),                    \
>         .ack_mask = (ack),                              \
>         .active_wakeup = wakeup,                        \
> +       .always_on = _always_on,                        \
>  }
>
>  #define DOMAIN_RK3036(_name, req, ack, idle, wakeup)           \
> @@ -204,8 +206,8 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3568(name, pwr, req, wakeup)          \
>         DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
>
> -#define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup)      \
> -       DOMAIN_M_O_R_G(name, p_offset, pwr, status, 0, r_status, r_status, r_offset, req, idle, idle, g_mask, wakeup)
> +#define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup, always_on)   \
> +       DOMAIN_M_O_R_G(name, p_offset, pwr, status, 0, r_status, r_status, r_offset, req, idle, idle, g_mask, wakeup, always_on)
>
>  /*
>   * Dynamic Memory Controller may need to coordinate with us -- see
> @@ -846,6 +848,8 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>         pd->genpd.flags = GENPD_FLAG_PM_CLK;
>         if (pd_info->active_wakeup)
>                 pd->genpd.flags |= GENPD_FLAG_ACTIVE_WAKEUP;
> +       if (pd_info->always_on)
> +               pd->genpd.flags |= GENPD_FLAG_ALWAYS_ON;
>         pm_genpd_init(&pd->genpd, NULL,
>                       !rockchip_pmu_domain_is_on(pd) ||
>                       (pd->info->mem_status_mask && !rockchip_pmu_domain_is_mem_on(pd)));
> @@ -1210,25 +1214,25 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
>  };
>
>  static const struct rockchip_domain_info rk3576_pm_domains[] = {
> -       [RK3576_PD_NPU]         = DOMAIN_RK3576("npu",    0x0, BIT(0),  BIT(0), 0,       0x0, 0,       0,       0,       false),
> -       [RK3576_PD_NVM]         = DOMAIN_RK3576("nvm",    0x0, BIT(6),  0,      BIT(6),  0x4, BIT(2),  BIT(18), BIT(2),  false),
> -       [RK3576_PD_SDGMAC]      = DOMAIN_RK3576("sdgmac", 0x0, BIT(7),  0,      BIT(7),  0x4, BIT(1),  BIT(17), 0x6,     false),
> -       [RK3576_PD_AUDIO]       = DOMAIN_RK3576("audio",  0x0, BIT(8),  0,      BIT(8),  0x4, BIT(0),  BIT(16), BIT(0),  false),
> -       [RK3576_PD_PHP]         = DOMAIN_RK3576("php",    0x0, BIT(9),  0,      BIT(9),  0x0, BIT(15), BIT(15), BIT(15), false),
> -       [RK3576_PD_SUBPHP]      = DOMAIN_RK3576("subphp", 0x0, BIT(10), 0,      BIT(10), 0x0, 0,       0,       0,       false),
> -       [RK3576_PD_VOP]         = DOMAIN_RK3576("vop",    0x0, BIT(11), 0,      BIT(11), 0x0, 0x6000,  0x6000,  0x6000,  false),
> -       [RK3576_PD_VO1]         = DOMAIN_RK3576("vo1",    0x0, BIT(14), 0,      BIT(14), 0x0, BIT(12), BIT(12), 0x7000,  false),
> -       [RK3576_PD_VO0]         = DOMAIN_RK3576("vo0",    0x0, BIT(15), 0,      BIT(15), 0x0, BIT(11), BIT(11), 0x6800,  false),
> -       [RK3576_PD_USB]         = DOMAIN_RK3576("usb",    0x4, BIT(0),  0,      BIT(16), 0x0, BIT(10), BIT(10), 0x6400,  true),
> -       [RK3576_PD_VI]          = DOMAIN_RK3576("vi",     0x4, BIT(1),  0,      BIT(17), 0x0, BIT(9),  BIT(9),  BIT(9),  false),
> -       [RK3576_PD_VEPU0]       = DOMAIN_RK3576("vepu0",  0x4, BIT(2),  0,      BIT(18), 0x0, BIT(7),  BIT(7),  0x280,   false),
> -       [RK3576_PD_VEPU1]       = DOMAIN_RK3576("vepu1",  0x4, BIT(3),  0,      BIT(19), 0x0, BIT(8),  BIT(8),  BIT(8),  false),
> -       [RK3576_PD_VDEC]        = DOMAIN_RK3576("vdec",   0x4, BIT(4),  0,      BIT(20), 0x0, BIT(6),  BIT(6),  BIT(6),  false),
> -       [RK3576_PD_VPU]         = DOMAIN_RK3576("vpu",    0x4, BIT(5),  0,      BIT(21), 0x0, BIT(5),  BIT(5),  BIT(5),  false),
> -       [RK3576_PD_NPUTOP]      = DOMAIN_RK3576("nputop", 0x4, BIT(6),  0,      BIT(22), 0x0, 0x18,    0x18,    0x18,    false),
> -       [RK3576_PD_NPU0]        = DOMAIN_RK3576("npu0",   0x4, BIT(7),  0,      BIT(23), 0x0, BIT(1),  BIT(1),  0x1a,    false),
> -       [RK3576_PD_NPU1]        = DOMAIN_RK3576("npu1",   0x4, BIT(8),  0,      BIT(24), 0x0, BIT(2),  BIT(2),  0x1c,    false),
> -       [RK3576_PD_GPU]         = DOMAIN_RK3576("gpu",    0x4, BIT(9),  0,      BIT(25), 0x0, BIT(0),  BIT(0),  BIT(0),  false),
> +       [RK3576_PD_NPU]         = DOMAIN_RK3576("npu",    0x0, BIT(0),  BIT(0), 0,       0x0, 0,       0,       0,       false, false),
> +       [RK3576_PD_NVM]         = DOMAIN_RK3576("nvm",    0x0, BIT(6),  0,      BIT(6),  0x4, BIT(2),  BIT(18), BIT(2),  false, true),
> +       [RK3576_PD_SDGMAC]      = DOMAIN_RK3576("sdgmac", 0x0, BIT(7),  0,      BIT(7),  0x4, BIT(1),  BIT(17), 0x6,     false, false),
> +       [RK3576_PD_AUDIO]       = DOMAIN_RK3576("audio",  0x0, BIT(8),  0,      BIT(8),  0x4, BIT(0),  BIT(16), BIT(0),  false, false),
> +       [RK3576_PD_PHP]         = DOMAIN_RK3576("php",    0x0, BIT(9),  0,      BIT(9),  0x0, BIT(15), BIT(15), BIT(15), false, false),
> +       [RK3576_PD_SUBPHP]      = DOMAIN_RK3576("subphp", 0x0, BIT(10), 0,      BIT(10), 0x0, 0,       0,       0,       false, false),
> +       [RK3576_PD_VOP]         = DOMAIN_RK3576("vop",    0x0, BIT(11), 0,      BIT(11), 0x0, 0x6000,  0x6000,  0x6000,  false, false),
> +       [RK3576_PD_VO1]         = DOMAIN_RK3576("vo1",    0x0, BIT(14), 0,      BIT(14), 0x0, BIT(12), BIT(12), 0x7000,  false, false),
> +       [RK3576_PD_VO0]         = DOMAIN_RK3576("vo0",    0x0, BIT(15), 0,      BIT(15), 0x0, BIT(11), BIT(11), 0x6800,  false, false),
> +       [RK3576_PD_USB]         = DOMAIN_RK3576("usb",    0x4, BIT(0),  0,      BIT(16), 0x0, BIT(10), BIT(10), 0x6400,  true,  false),
> +       [RK3576_PD_VI]          = DOMAIN_RK3576("vi",     0x4, BIT(1),  0,      BIT(17), 0x0, BIT(9),  BIT(9),  BIT(9),  false, false),
> +       [RK3576_PD_VEPU0]       = DOMAIN_RK3576("vepu0",  0x4, BIT(2),  0,      BIT(18), 0x0, BIT(7),  BIT(7),  0x280,   false, false),
> +       [RK3576_PD_VEPU1]       = DOMAIN_RK3576("vepu1",  0x4, BIT(3),  0,      BIT(19), 0x0, BIT(8),  BIT(8),  BIT(8),  false, false),
> +       [RK3576_PD_VDEC]        = DOMAIN_RK3576("vdec",   0x4, BIT(4),  0,      BIT(20), 0x0, BIT(6),  BIT(6),  BIT(6),  false, false),
> +       [RK3576_PD_VPU]         = DOMAIN_RK3576("vpu",    0x4, BIT(5),  0,      BIT(21), 0x0, BIT(5),  BIT(5),  BIT(5),  false, false),
> +       [RK3576_PD_NPUTOP]      = DOMAIN_RK3576("nputop", 0x4, BIT(6),  0,      BIT(22), 0x0, 0x18,    0x18,    0x18,    false, false),
> +       [RK3576_PD_NPU0]        = DOMAIN_RK3576("npu0",   0x4, BIT(7),  0,      BIT(23), 0x0, BIT(1),  BIT(1),  0x1a,    false, false),
> +       [RK3576_PD_NPU1]        = DOMAIN_RK3576("npu1",   0x4, BIT(8),  0,      BIT(24), 0x0, BIT(2),  BIT(2),  0x1c,    false, false),
> +       [RK3576_PD_GPU]         = DOMAIN_RK3576("gpu",    0x4, BIT(9),  0,      BIT(25), 0x0, BIT(0),  BIT(0),  BIT(0),  false, false),
>  };
>
>  static const struct rockchip_domain_info rk3588_pm_domains[] = {
>
> ---
> base-commit: 64e9fdfc89a76fed38d8ddeed72d42ec71957ed9
> change-id: 20250317-rk3576-emmc-fix-7dc81a627422
>
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
