Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13B5AD2FEDD
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 19:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9CWczMBzyVrbZPhxM8sblJbrjf4LgfInvmhRVjjD9Y=; b=ktAJ4kYUYX/iD5
	IW7jYOxzgRhv7+T65vnse/zruPq/G3YJ55dfhRsm5LX1AJRPnrjreiETpnSRJts/ZW/z2PW4ZIq7B
	J+wt4xihLsSzz8sEZYVK/yzlTKYEMLjWBbRFBHegyMe06QOi9KEH2Sh1DN6CyDlS6E9tfjQ/RmPXE
	24jqVv4hhN2DSX7bLzfQjduuWDcNnACuX25CZs+8riJjIv4jJ2W4D3vOj0cACjeAur6j7zLjvUw/z
	wbwAan27/hOh1sLMEAO6ec8fnMWc/z0QtcQL2DJrS2Fklo/nfl7p98nkmEJnRwEsR5KNarWm5i8Fj
	qYynqkRJw2FE9ApJ24Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkp5M-0000000Ey88-04y1;
	Tue, 27 Jan 2026 19:50:48 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkp5J-0000000Ey50-3EhQ
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 19:50:47 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1769543440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FIWz0cFC3kNnEI7/yXdApj0ciiRcwdKXj/WVen8D0bA=;
	b=HIAQ+L2lkvYC5AwtPv7bhliGR3xmGTYTdFvJyZIfXOSgLayBWK2vOJzdCSBX/buFplVgHj
	QAJqrnq4X8KxZgSSojNdbyOzVNVXfPfUuwmfI9Yjibfs8YZVL8H3etQ2TQiGCzs2bDav40
	T2qPTGBdHBgdaP38vRLdtXgQLPu2gqM89K4uI5ILVFDrXLiMjYxnBZOwX/pLYJMIVb+da9
	zWWJLevNNC/Vc/i1vfvIvGl4SVPs07m1euIEc0zUP9MSZwQ8W1pfHBEwwc0D6+7Q9t89Tl
	+fF3FEGw/icDBAdU4r/yDuU3cm4cKSCl35DNn5FjrHL5i2tr90LCf8PCGKo/cQ==
Date: Tue, 27 Jan 2026 20:50:37 +0100
Message-Id: <DFZMSOLXYNIO.16HKO1E3C0Z2Y@cknow-tech.com>
To: "Chris Morgan" <macroalpha82@gmail.com>,
 <linux-rockchip@lists.infradead.org>
Cc: <linux-pm@vger.kernel.org>, <jonas@kwiboo.se>, <pgwipeout@gmail.com>,
 <finley.xiao@rock-chips.com>, <kever.yang@rock-chips.com>,
 <shawn.lin@rock-chips.com>, <sebastian.reichel@collabora.com>,
 <heiko@sntech.de>, <ulf.hansson@linaro.org>, "Chris Morgan"
 <macromorgan@hotmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: quiet regulator error on
 -EPROBE_DEFER
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20251119161250.60885-1-macroalpha82@gmail.com>
In-Reply-To: <20251119161250.60885-1-macroalpha82@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_115046_435816_A90C633F 
X-CRM114-Status: GOOD (  17.37  )
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

On Wed Nov 19, 2025 at 5:12 PM CET, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Change the dev_err() to dev_err_probe() under rockchip_pd_power_on()
> to prevent errors early in the boot process when the requested
> regulator is not yet available. This converts errors like the following
> to debug messages:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: Failed to enable supply: -517

I noticed I had a LOT (33 to be exact) of these errors on my Rock 5B.
After building a kernel with just this patch added, those were all gone.
So feel free to add:

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Rock 5B

I don't know if it's a logical consequence or just luck, but I'm no
longer getting the following error either:

  rockchip-pm-domain fd8d8000.power-management:power-controller: 
    Failed to create device link (0x180) with supplier spi2.0 for
    /power-management@fd8d8000/power-controller/power-domain@12

I'm still getting the following error though:

  rockchip-pm-domain fd8d8000.power-management:power-controller:
    Failed to create device link (0x180) with supplier 1-0042 for
    /power-management@fd8d8000/power-controller/power-domain@8

Those error msgs are broken up for readability, but they are on one line
in dmesg.

Thanks!
  Diederik

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 1955c6d453e4..3c84a65de1a5 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -688,7 +688,8 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
>  
>  	ret = rockchip_pd_regulator_enable(pd);
>  	if (ret) {
> -		dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
> +		dev_err_probe(pd->pmu->dev, ret,
> +			      "Failed to enable supply: %d\n", ret);
>  		return ret;
>  	}
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
