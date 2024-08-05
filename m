Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E44FC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 09:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8Mu+Mf/8B9p9t0zhkwowjwCzu7wtgSx2FHJoJrn6iY=; b=kB/juY0VgfLX9x
	5kclB29m/r4FC+635Oqix099akmXmKLwvgOqKuxqRMj75jEXdB+OY2W6qzk9ZufY124R3zgUHuPnn
	nOKxOZZHACqC2FCIV44dZlYiDll9EAcmXlRUBlf1O4ZEDSrSeMd/rjBhw0Eouaqw9iSxsdRm/hJc6
	P4D2OuAlzMgmKu/GBLZ08BppW2waybeGTeoESmyWvV3w1g50SeF1sp86bQuDpiQHBCSvJ766cHj6e
	WMWBmj5VdlL+TRMHRK+s0b/P5V00uU8YOP6guhIgm31Cr04CQ3yXi0/4pk8M7xli0TpUd3uw2kEps
	KPm6rlauDy7vXz+1ZhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauBK-0000000FMHG-1IOu;
	Mon, 05 Aug 2024 09:39:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau9B-0000000FKqb-0J0W;
	Mon, 05 Aug 2024 09:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KNR8GgxZCqYzjbKBwZWIUoydo2N1AJIxO8v0mVVSeCQ=; b=qkSWUmHlQVCAhZmE7AiP6TOf6W
	84wCE8qMEmcWr9uWVuYQ8BU9wa2FomVRqY06Fk84C4Xq1il3vIoajiZlTWy4CRyh+yleIxUdEGek/
	NibBVddz0aIZg7ezEG2bXWYbnPDStMnGMRvC1nmsq7BAisHrb/fs6bXMlUupNyW/gaj4/5DeTDcCZ
	lIdaMgc+hvgMI1j35abdxanQ3MkgLBNY/FU8z1tW7Tvyvjz4VzFdMiN3tsrir/31VBzZxVmYij6FY
	V9vUv37dGeopEOZAemBRFSC3/J8d8QMuj+UO4fJbIPwp1gqA9OuewNcw/g3HF8B6mwWY9kPy6kQeY
	JrpQ6dgg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau97-00000006EFE-1q42;
	Mon, 05 Aug 2024 09:36:55 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sau8v-0000TX-UA; Mon, 05 Aug 2024 11:36:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/3] soc: rockchip: power-domain: Add power domain support for
 rk3576
Date: Mon, 05 Aug 2024 11:36:40 +0200
Message-ID: <12859392.hYdu0Ggh8K@diego>
In-Reply-To: <20240802151647.294307-4-detlev.casanova@collabora.com>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
 <20240802151647.294307-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_103653_660101_AFAB94F4 
X-CRM114-Status: GOOD (  17.70  )
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

Am Freitag, 2. August 2024, 17:15:00 CEST schrieb Detlev Casanova:
> From: Finley Xiao <finley.xiao@rock-chips.com>

with the power-domains now living somewhere else, the patch will need
a different subject I think.

> 
> This driver is modified to support RK3576 SoCs and lists the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>



> @@ -552,7 +574,10 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  			/* if powering up, leave idle mode */
>  			rockchip_pmu_set_idle_request(pd, false);
>  
> -			rockchip_pmu_restore_qos(pd);
> +			if (pd->info->delay_us)
> +				udelay(pd->info->delay_us);
> +			else
> +				rockchip_pmu_restore_qos(pd);

the whole delay thing needs its own patch please. I.e. you're changing
the inner workings of the driver here by not handling the qos settings
and just waiting for a specific time.

So I expect a lot more explanation on why that is the case and needed
instead of it just happening when adding the soc-specific pieces.

Does the rk3576 not have those qos settings and if so, why is there a delay
necessary.


This is not meant to disallow it, just that it needs its own commit with its
own descriptive commit message :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
