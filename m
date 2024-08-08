Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD945C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5CYHODop5vxrnIMGyhSXOnV4QUPHydS9Hl8DgYxMK8=; b=OQDhGshQjf0UtF
	tPkN1gnBOof3A5dF3+LeJvE1lsEqgqfqXgPB3mJhse0g4lCfXZMcXq20FeXcmmbH7alrMeqO3QY5d
	FX24WmLKKsagz3qBFP2dYH+QMV2OF3Czo4R23qISmjImcFqgWJrze6tWGAgC3hjfSdXFRmygv17JW
	/rQjxTF7ZXiXe1WrUbcw3dC/D8vgweQpSoxUi1JDWm0x26cFs+RUgqjTBGc+0jS2SZDlhNBi+e0ia
	wBkamkpQXWD5E8XEWMIBH94pIy+y1V35lUZx8L/fBQRVvGMhFk3Lzopvc48oVY6Vnx+RmbuTWCpeW
	/GoqwwdTCQJYmjv6tI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6D9-00000008yoX-3e6a;
	Thu, 08 Aug 2024 16:41:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Ca-00000008ygu-1nnv;
	Thu, 08 Aug 2024 16:41:25 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sc6CN-0004h9-Q6; Thu, 08 Aug 2024 18:41:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Arnd Bergmann <arnd@arndb.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 2/2] pmdomain: rockchip: Add support for rk3576 SoC
Date: Thu, 08 Aug 2024 18:41:05 +0200
Message-ID: <17766579.lhrHg4fidi@diego>
In-Reply-To: <20240808163451.80750-3-detlev.casanova@collabora.com>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <20240808163451.80750-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094124_500452_EB7544DE 
X-CRM114-Status: GOOD (  19.93  )
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

Hi Detlev,

Am Donnerstag, 8. August 2024, 18:31:05 CEST schrieb Detlev Casanova:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add configuration for RK3576 SoC and list the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [rebase, reword, squash]
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 73 ++++++++++++++++++++++++--
>  1 file changed, 70 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 9b76b62869d0d..863f1ad6b9e11 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c

[...]

> @@ -175,6 +195,9 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3568(name, pwr, req, wakeup)		\
>  	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
>  
> +#define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, delay, wakeup)	\
> +	DOMAIN_M_O_R_G(name, p_offset, pwr, status, r_status, r_offset, req, idle, idle, g_mask, delay, wakeup)
> +
>  /*
>   * Dynamic Memory Controller may need to coordinate with us -- see
>   * rockchip_pmu_block().
> @@ -552,7 +575,10 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  			/* if powering up, leave idle mode */
>  			rockchip_pmu_set_idle_request(pd, false);
>  
> -			rockchip_pmu_restore_qos(pd);
> +			if (pd->info->delay_us)
> +				udelay(pd->info->delay_us);
> +			else
> +				rockchip_pmu_restore_qos(pd);

I still want this behaviour change in a separate patch with adequate
commit message please.

Going from always handling qos to allowing to just wait a specific time
needs explanation and is not part of "just" adding rk3576 support.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
