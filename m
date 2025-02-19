Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D12C021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 10:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXUwWOqXuU5GQQ3KNVeq3Q/23xu3PydfyCV7QWmeRJ0=; b=49DJGs9aWFEY8e
	YtTvvYAy5oEjSpHsBtD/QAgQwvsiM5G4HmeEwGKBdrTEIJEp9/4+mbO5V7r6eCwWT50RNdohjCBWL
	qqthyz27Cqw3w16X5+r3V3NcURg6GenFieFP65vaQVug6dAoxDCgfvTeF865EmjnhUzAA26ry3Mlt
	M1NKypCKRZEMGh5bcBKKpctJp//blqiIYHvc5z+zo79k0J0ONk9ddD8cnrkYZEYDBesqA81S5JuvF
	1qhn3m8SqReyrNlx0utQ0428NgX47Hmq9Z97CT5+ov7hPXh4IMQdG8L+ANQNI2HBI3o4PN1YghJwl
	WaFY63z+lNavt/LY02iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkh0d-0000000C3to-0RUZ;
	Wed, 19 Feb 2025 10:08:51 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkgTl-0000000Bu46-29Wr
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 09:34:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7202312FC;
	Wed, 19 Feb 2025 01:35:09 -0800 (PST)
Received: from [10.57.84.90] (unknown [10.57.84.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3F423F59E;
	Wed, 19 Feb 2025 01:34:49 -0800 (PST)
Message-ID: <a0b41ce7-4ab8-4baa-adee-8b5717326729@arm.com>
Date: Wed, 19 Feb 2025 09:34:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 "Rafael J . Wysocki" <rafael@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_013453_599708_938DA46D 
X-CRM114-Status: GOOD (  17.62  )
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

On 19/02/2025 00:58, Shawn Lin wrote:
> Non-existent trusted-firmware could lead smcc calls into some
> unset location which breaks the system.
> 
> Reported-by: Steven Price <steven.price@arm.com>
> Cc: Steven Price <steven.price@arm.com>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Fixes: 58ebba35ddab ("pmdomain: rockchip: Add smc call to inform firmware")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Tested-by: Steven Price <steven.price@arm.com>

Although one note below...

> ---
> Hi Ulf, this's a follow-up patch fixing the issue Steven saw.
> 
>  drivers/pmdomain/rockchip/pm-domains.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 49842f1..27a5c68 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -572,9 +572,10 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>  	}
>  
>  	/* Inform firmware to keep this pd on or off */
> -	arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> -			pmu->info->pwr_offset + pd_pwr_offset,
> -			pd->info->pwr_mask, on, 0, 0, 0, &res);
> +	if (arm_smccc_1_1_get_conduit() != SMCCC_CONDUIT_NONE)
> +		arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> +				pmu->info->pwr_offset + pd_pwr_offset,
> +				pd->info->pwr_mask, on, 0, 0, 0, &res);

Note that if the conduit is SMCCC_CONDUIT_HVC then this will still
attempt an SMC. I'm not sure if this situation can happen in practice.

There is a (horrifyingly complex) macro arm_smccc_1_1_invoke() which
will automatically use the correct conduit, and even copes with the
SMCCC_CONDUIT_NONE case (by simply failing the call).

Steve

>  }
>  
>  static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
