Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1958CC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 08:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5QXB4iJeLXcJtycLWqSafcxjj/tjZNoT1nXnF+alZo=; b=tgaD2vne7yyZOO
	1m2wkTj+L0w9RgwgCSrJjl1j1Q3tLvLPW/9jkYhMXRbZijRlGGb0dHwE3QJz1JQYSbyDXvXaRaB25
	so3joK8Hl1JMxJrMuQQ/cPs5vlnYdSUGVE0+OyGaU5Em1m5FOcOt468JF0wbkStsamanvt4Mw4mgC
	KW6DUQ8u5VDEhR8ZBBNqZF73ZYAphlz5f2Xh/EN/CsxFV8Qes1R5rg8QLfKBANtkiXMhQMuKcTOnw
	+6ntlsuECksInkWoyC67IDoLtQocl1DNBSQBQWLeszaA4MtJqgtJr4L9ITAeK+VTWqo3+VBIXCbZC
	Fo8fGsbAX2mTeRvftpbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkfSj-0000000BWz5-23Hc;
	Wed, 19 Feb 2025 08:29:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkfGr-0000000BSkv-3Op2
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 08:17:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kUTRJU/6XNS+Ziltnvt01u6UQNfGdBBiYXmQdZRzoKc=; b=yKzgy0y2gAUniVCffgsMaAlieY
	RgtUVaZdAgHkhZ22gN3unHMqX8CSzxq6ZDh23ZS3RrRZOyQ7UvQJ71dCagPOhobaEiocDelZ1XuSk
	18eZDvf8XhL0HTC51PQluB5yuCjZkzFJW8qm7pwivbGVW+g7l7e8loo3VwVHNVz/5AUaJ2abKuFaV
	AkJ26Ce8u4+lRas6UpBlwGWylk+SCQpyI47beiS1pWMmq/fopepUJR5qIx93v/PHnJLTl58D+N1bw
	OAixcrgZEHxMD/VzB1/hjtgcbSSifwLMFBPnVd0Mxjwex/xqbolkJO92ASWnJZ9YhcczicVKDd6mE
	tWOwlt1w==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tkfGn-00077N-H6; Wed, 19 Feb 2025 09:17:25 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
Date: Wed, 19 Feb 2025 09:17:24 +0100
Message-ID: <3600260.V25eIC5XRa@diego>
In-Reply-To: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_001729_877444_0C6584E8 
X-CRM114-Status: GOOD (  17.87  )
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

Am Mittwoch, 19. Februar 2025, 01:58:09 MEZ schrieb Shawn Lin:
> Non-existent trusted-firmware could lead smcc calls into some
> unset location which breaks the system.
> 
> Reported-by: Steven Price <steven.price@arm.com>
> Cc: Steven Price <steven.price@arm.com>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Fixes: 58ebba35ddab ("pmdomain: rockchip: Add smc call to inform firmware")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

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
>  }
>  
>  static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
