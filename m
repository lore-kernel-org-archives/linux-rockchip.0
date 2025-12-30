Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A284E94121
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 14:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMhTqUsS9JO0VBmUUAE2mcCvNdY/Q1pcVoiB/5UFgVQ=; b=jCKCCjUF0M7rb3
	8ZkC0cWTlfY64cghrMQVmz+v+XnYDWUnsu+txAMuruJDE8tswU1A/kfElVR9Pnpb/EdzLoWYSwt0A
	DLRLpfCdPNFEBXjCmbiyH73QS6vNlTdxUEFAnUcjD1yKbGPhvECQd4nM2v1tyfaIA2qTdfCEJb8gr
	zOQ3KXs97Fl6/YR7m6ians7Pne1Efy6NYSbH/ZWS5x3zw8jQTOPFnyN/JAQc2vdnT/WoNSgZ3CKvE
	5syMyLMpwWnF5c4oEMfr40v8EiVc6vmil4f8SlzKpT9iwIL7kTRSoL92x1MLVNcTjOUcR/nnay1eA
	KGAMh0Ps4I5BWIFmTbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaOY-00000004uqg-3tZH;
	Tue, 30 Dec 2025 14:08:18 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaOW-00000004uqE-1koR
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 14:08:17 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-59583505988so15474528e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 06:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767103694; x=1767708494; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VyJApu1LEoZShSyHFwCDEnHWsxopeMuohegEMjDmgz8=;
        b=Zzl8iYXUNr/xWTUnHZ7Vq1gWZgN63ogNxW5qF7L2aNuIEg//Wm/Dxp+IwkHAXLIlbj
         qW+FZZ5tE8fO13lQC7ttAwZBbxhATzXn+WNjjhFyYdIZ5TrKGObNRcTm/YDL3MSLY6nv
         tpEz2uGQxU2vGwI89B9SHPYLZZFwfZuRSaNPonGfGosohdFe7GuRvHn8PzSevFmRSW9j
         T5Kb4Ic4sli9ACp0AZmog4KKoy2WwukqSTrwQISKESwZjkKJTpvGz+IYSfygukD2Swmg
         SX33XmrKkVbhsGHheIvl2TxmL28nCwtqB0HA/TK1MIVjrzezjXAGaG67QuaDY5pkprOo
         vBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767103694; x=1767708494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyJApu1LEoZShSyHFwCDEnHWsxopeMuohegEMjDmgz8=;
        b=Gi99m9dFbnxt6/JOlXxfE8U8KAv+9gfn5/ZFUG0SDricZOXukpDKOUha2SBfMwRr7J
         bSRjsBNMyBSNaiJso8tR4qFwVTWd1ET8alij26qZr/+3AeGxadXj2UUOabGdxKOvlxmF
         +vZF9qkm1/u0uPhpS7RD4ZpzXwVZhuIjn8SA5bxiQqTo68zU9CdaUuJBkfe1J6Jdd2NB
         cyVCnFV7VKL/KbdHA1PIGBy1gQP75/1kdLH/LSoi19gISwq0XaVAGFEAVTsTkCTc+hum
         2XKsGrNDf6eI9ZKIkKtrZBVdscwsp2eAHo4e424x9n1dhABWjlrNDnZnMSzZGBPq8qvf
         R4/w==
X-Forwarded-Encrypted: i=1; AJvYcCVRx/gBvKPURhzVP6MBBkAMdvWoXJpNDCUTEDLgxqVQz3DaFCmshNKUaB8axE79UCCOHk3c7GGDBVWoOnloyw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIHN4Vgbx8ghxrp98rYt4My9oulhQelpojsiUIuW/AFemjw7st
	eLu2PwL62Sf75Y0FfavKfSoxelW3vB/2n4xLkaZvVSWo/90KDT+15ZTx6zkGBGo3lFGRlwEEDtx
	snoLjPhjWhM98/xshW/71vGspXD8kqFWiCLymrKxvEuB59BG7/yV8vXI=
X-Gm-Gg: AY/fxX5fVDYHUnkVrJ2dBGyd09/U7Hf4+qu6fEPV8J0U7WJeOxz6h+Qy4O0tGhRCM5N
	GO3a4Qu9HpYKSdpjEn2cSwFk5/QzNgqMiesYfiuN9fzMWuRARAT/ZqJooTQgea7Pl4YvfZys7F8
	ZeX/9pcmQLl9OIaaidu5XC7ohJ3D0yY5UqXh2gvR9jvj3VQOijahYUE46sl4wIoJKo07Lmu9/2j
	GdWND2atHTtRsdTa9+ZQjbBgBwx+349vNf8N0EGjPhxkPAL1p4ih467ssdny7z1wq9Z8C+wjlgP
	Utc2jOc=
X-Google-Smtp-Source: AGHT+IE5fYKXYm6s7wg7VCYj3x3U8vGECYHQuPDTbdIUhcnUk9fct3+MvwocLHBZETGEXghR/RioxsyFpqqrT1jVOi8=
X-Received: by 2002:a05:6512:3d9e:b0:595:7d7c:59a9 with SMTP id
 2adb3069b0e04-59a17d6bb20mr12422984e87.22.1767103693612; Tue, 30 Dec 2025
 06:08:13 -0800 (PST)
MIME-Version: 1.0
References: <20251216055247.13150-1-rmxpzlb@gmail.com>
In-Reply-To: <20251216055247.13150-1-rmxpzlb@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Dec 2025 15:07:37 +0100
X-Gm-Features: AQt7F2pCXsP1gwfFRKDfAs1-CtV1ujaercDhCS5Kpm883EIuOK5DFfbTj1RsrhE
Message-ID: <CAPDyKFpx-hxv4QVW+zp8Zbd=-9vvmwsVJ2adem6V1gWLQteYsQ@mail.gmail.com>
Subject: Re: [PATCH v2] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
To: Frank Zhang <rmxpzlb@gmail.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, chaoyi.chen@rock-chips.com, 
	sebastian.reichel@collabora.com, quentin.schulz@cherry.de, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_060816_490022_0B5408DE 
X-CRM114-Status: GOOD (  19.69  )
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

+ Nicolas

On Tue, 16 Dec 2025 at 06:53, Frank Zhang <rmxpzlb@gmail.com> wrote:
>
> RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
> rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
> driver register, it will resume rknn_iommu.
>
> If regulator is still not ready at this point, rknn_iommu resume fail,
> pm runtime status will be error: -EPROBE_DEFER.
>
> This patch set pmdomain to off if it need regulator during probe,
> consumer device can power on pmdomain after regulator ready.
>
> Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
> Tested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>

The problem with the child-domain using a regulator has been discussed
before [1] between Nicolas, Heiko and me. That said, I have looped in
Nicolas to allow him to share his opinion about this too.

My view on is that I would prefer that we try to address/fix the root
cause, rather than trying to paper over the problem as what seems to
be suggested in the $subject patch. Or at least I need Nicolas/Heiko
to confirm that they are fine with the $subject patch, before I pick
it up.

Kind regards
Uffe

> ---
> Changes in v2:
> - Simplified the regulator check logic, trun off pmdomain if need
>   regulator.
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 4f1336a0f49a..997e93c12951 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -879,6 +879,16 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>                 pd->genpd.name = pd->info->name;
>         else
>                 pd->genpd.name = kbasename(node->full_name);
> +
> +       /*
> +        * power domain's needing a regulator should default to off, since
> +        * the regulator state is unknown at probe time. Also the regulator
> +        * state cannot be checked, since that usually requires IP needing
> +        * (a different) power domain.
> +        */
> +       if (pd->info->need_regulator)
> +               rockchip_pd_power(pd, false);
> +
>         pd->genpd.power_off = rockchip_pd_power_off;
>         pd->genpd.power_on = rockchip_pd_power_on;
>         pd->genpd.attach_dev = rockchip_pd_attach_dev;

[1]
https://lore.kernel.org/all/CAPDyKFr=GwJ+cO3cW4Ed_LsS=q_JtuuQPDweDpLgDO4hBLFXUA@mail.gmail.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
