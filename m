Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE7BFC021A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 07:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTi6iSg6ycO5V08N+4OAm3G8BuUG1IXvHKH5hP3QVFA=; b=PnJhA+3MWjm76u
	RPj4T9aTP8AzHkpXVnyNufgK7XBFZtK3YRt6EKk1OyY16922q+rDUWvqFcA42vyco9EqoDiPhTq9+
	RaLqa4ixv5DtGEw21gsbZfaBDwjHUmDs1RKvQ19DwJQRwfiMSiFG6ykrk/+1g1C47MKv0WqDNAbeB
	boXlgxlI8lnyryycwHGMFkjxhJYaurHuFVFaG8f8ad74Tr1zTMjYK7a0SfytzA4cv63t0QDDCPI4Z
	MWvk40p7gChDXeEVXVKtCXBIi28nSfXU/ZmfksSx1LR1QUplMCnon4aBa+PjPNlJihMzBx7hfx1Os
	HX5Vh+t5tQZ2G9fjKpSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thkoX-00000002qhm-3LMT;
	Tue, 11 Feb 2025 07:36:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thkoV-00000002qga-08GL
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 07:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OYk0p+JMseG7FVlttgOde/7MHMJ97BiQKK6RiBx2sNQ=; b=sf8OOezD7oVeV666W8vv/CGJxC
	qjpRpwEMd/yyYNm5Uj4tDClgnclKv2bC+kbxrWj/NN30KF8uy1pPScMuhnel1PZdHo0OZZOqnZKJz
	Bom1SPQSOUhYpRpmb47LUTUOT9g+kvVTKF4kFl8BcgT3jvzl8ZcvhjwTnITYeI8kCMeFnfgaJDZqx
	RGIhiaMT+cVHb16KykoJ8foZAzgJuiViuzspYy2UnMjbKX615w4s1mqvWYNPxrCiJGscWJW40Kdc8
	qNtx3577HJWYg9ci/DSsv2Dg9uI2tJHx+W3MyD+2vnvx3xEhpfEB7EwDwH7ENhC4Mi12nZ87+4VhI
	83tWFyig==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thkoJ-0004nq-Qy; Tue, 11 Feb 2025 08:35:59 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform firmware
Date: Tue, 11 Feb 2025 08:35:58 +0100
Message-ID: <14847271.RDIVbhacDa@diego>
In-Reply-To: <1738736156-119203-5-git-send-email-shawn.lin@rock-chips.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_233611_074741_494BA076 
X-CRM114-Status: GOOD (  18.91  )
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

Am Mittwoch, 5. Februar 2025, 07:15:53 MEZ schrieb Shawn Lin:
> Inform firmware to keep the power domain on or off.
> 
> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>


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
>  	struct generic_pm_domain *genpd = &pd->genpd;
>  	u32 pd_pwr_offset = pd->info->pwr_offset;
>  	bool is_on, is_mem_on = false;
> +	struct arm_smccc_res res;
>  
>  	if (pd->info->pwr_mask == 0)
>  		return;
> @@ -567,6 +570,11 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>  			genpd->name, is_on);
>  		return;
>  	}
> +
> +	/* Inform firmware to keep this pd on or off */
> +	arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> +			pmu->info->pwr_offset + pd_pwr_offset,
> +			pd->info->pwr_mask, on, 0, 0, 0, &res);
>  }
>  
>  static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
