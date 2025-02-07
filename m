Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 967E7C0219C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 09:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a9xgXGgh3nMMT7JudYlbgGP+15P6gU7ETV/38saBX4=; b=LEihEo6Elf9R9x
	nqaBHGQj99valrKDFH9B3MBkSKVztTulW8G1xee5LPm+KeAHRRrOMrvI1kp6rHe1+o97zb8v8+h5+
	7maA0R5kjJhfIXSXC6FPb9/y7yBPtHgBG8TOt6rwBV9nXBtaVuZHCUCO5HRpSW15zUuXvsXUOxmMK
	//uYZgHxRNNq6O1oPbkQ/3AOTi5vsaGSlYvKqcbpUeP6INt2tr2uXEVn0897Pn7QpZpFYCcCCiB34
	GV8PRL7PnjMWJkdBtDM8Sobe06Lg9zlpIbGy42fzMGMxpd8LICW9d/L7fWMsR71NUxzW6p1PwJQjZ
	3/TQO4KRkPZhfvUrE4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgL8n-0000000982j-0gwN;
	Fri, 07 Feb 2025 09:59:17 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgL8k-0000000982E-3QrO
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 09:59:16 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e5b41ee3065so1108810276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2025 01:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738922353; x=1739527153; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gf0LrvYcosKWDvDGgr597DQ1T7Qoy8G5hPn243hyGLY=;
        b=OATXnEdu6fXDJH09b2jEJE4frFlvYStX7JfWbvBR6tZkby7bgKR7HuPyELX7Il97BG
         XmJEkOq2/l3+HfTM+sj2PHz9DviOe05Iku+edL7vKB3KZP6qSyOKjv7KTfxDMmwHYcQv
         OCKaAvGrjso34Go4zfiRePvL/1l+Qzr585xGyN7PqGDqNJrYcWLJi8q3ep3CEHxngOdj
         ZyYcCkMwb41DU0TH5z8cVYgPjKsDYGtuz1uN1e5Lgt7Ewlo57NONxccbXjQx/AeNh+qZ
         jR2a5HN0uSRbRX34SG+XcHnFQrmmpsuW2LqZHomg/T9anBivsDnsYml+p2hJDCFJ6FTV
         gHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738922353; x=1739527153;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gf0LrvYcosKWDvDGgr597DQ1T7Qoy8G5hPn243hyGLY=;
        b=sZ3zxsuGzLFk1oEN1MS9zs93fBt4dKXPhCGAC5I35QI4GtyqpWlXiBieKKvdW508yV
         RSOrfKQzbgkRU7ZEWXlqN3rg8oGJjDpse4fn+fQ6u3sLebk4U8mRLQe8SMNt7n3+PU8M
         cpKUSgUAGkt/DMUvub0o5h6bxEWbnMXjFhpAqHdSOooF5V2DBKl0sxP96kNzPIBsTbYr
         EhP+H08GAmbDvxR8MBLIV7nISyKtl1Z9BieHMQWdhVMaKZGv+1lAomxcOpUlfBMxj8sQ
         eAXwbmHv+MFEavHDSywLs+7ml5szyl4KmbRKqbFGg5XF0+C8klodmjA+NoMgoy/eeEmc
         XcBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcPozhskITkpthogo/0t9atgtG+srlZnRVUW4a5EzufnA04Q3R9HWgjwiHPSJTLo3qVPQHd06/gTwKJaZX7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxToIQ1lVzz9bA3n2gSw1/tJkzxbJ5x22ui+1H9aYXA9UVw/Njw
	6LjwGmy+OZ61zex+lDitVxjBi8UFDN5WMLTB0CeXUt0JddJALHaduyOohaSyVVrgN9a3dm7YQor
	xlxZurXHJ3u17fflt+TFEbmE50rkHBxeAuqT5hQ==
X-Gm-Gg: ASbGnctL2B2QIwzq4giyIXNX54uIk+nOCk/kiVwRA/k889y3JpwXPgr3QenHheuBKBs
	LyMPbIzwtQixIyngCP3IbE1IvFYrn8V9LjIYS8sDiTdaWDnwB0BEBeN//I18TEI7IOPhxXexP2g
	==
X-Google-Smtp-Source: AGHT+IH5KSvolicRfu4qOrJsdB4fniYks3xqRvcTzEfp0JhqQeemLBX3Vf8Ymk/fgFqeo0ozvHmgtS8YxYLWOpq57BU=
X-Received: by 2002:a05:6902:2843:b0:e57:442a:befd with SMTP id
 3f1490d57ef6-e5b4626d7b2mr1976472276.32.1738922353648; Fri, 07 Feb 2025
 01:59:13 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com> <1738736156-119203-5-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1738736156-119203-5-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2025 10:58:37 +0100
X-Gm-Features: AWEUYZl9lFG-fTMV-hDb24r-jQPgTOeukyKtawA9RdKYwhSFpnLRSC7wetD3j4A
Message-ID: <CAPDyKFrHtB=986QicwCLbRYRmwZg9fT+cYxCYgwRN37w=D4nPw@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform firmware
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_015914_865058_3AA66E23 
X-CRM114-Status: GOOD (  16.76  )
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

On Wed, 5 Feb 2025 at 07:18, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Inform firmware to keep the power domain on or off.
>
> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>
> Changes in v7: None
> Changes in v6: None
> Changes in v5:
> - fix a compile warning
>
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>
>  drivers/pmdomain/rockchip/pm-domains.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index cb0f938..49842f1 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -5,6 +5,7 @@
>   * Copyright (c) 2015 ROCKCHIP, Co. Ltd.
>   */
>
> +#include <linux/arm-smccc.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
>  #include <linux/err.h>
> @@ -20,6 +21,7 @@
>  #include <linux/regmap.h>
>  #include <linux/mfd/syscon.h>
>  #include <soc/rockchip/pm_domains.h>
> +#include <soc/rockchip/rockchip_sip.h>
>  #include <dt-bindings/power/px30-power.h>
>  #include <dt-bindings/power/rockchip,rv1126-power.h>
>  #include <dt-bindings/power/rk3036-power.h>
> @@ -540,6 +542,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>         struct generic_pm_domain *genpd = &pd->genpd;
>         u32 pd_pwr_offset = pd->info->pwr_offset;
>         bool is_on, is_mem_on = false;
> +       struct arm_smccc_res res;
>
>         if (pd->info->pwr_mask == 0)
>                 return;
> @@ -567,6 +570,11 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>                         genpd->name, is_on);
>                 return;
>         }
> +
> +       /* Inform firmware to keep this pd on or off */
> +       arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> +                       pmu->info->pwr_offset + pd_pwr_offset,
> +                       pd->info->pwr_mask, on, 0, 0, 0, &res);
>  }
>
>  static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
