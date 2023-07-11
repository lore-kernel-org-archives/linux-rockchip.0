Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC18CEB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 13:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWwmmJc+FHE21gLj48m/q6wMpdJmD86NRY3oDEknx/I=; b=I/XAlgdbV0nJ2a
	tsMY5zFrBvuqd/MoOwHuDYvstwM7g217oJLtFIlTfW3HtcbiQjX8E7NUbLKRtcucavaD1eaHty2q7
	qVnwqSc0B5E9EhywDFvEWpanPMB2dN77sAW8t1Y1Em7ahtpiZ7d16ZuZ0QnUBoTKjHeK88BENrKFG
	dx0vDhLnjYre5zkTklO1u6UlR5mxWThJ2x7+oE/7jQwgkydoRqLtkJsc70vHmw/g/7/+7jiB1hBGV
	nLz0Yqrh2vAjtQ1FAb0Ig5sVa+Anl53klzv60lzkBnjHlBjSjDb3w00e3kJ50r2Fe/dDKi2Cm3EUU
	YQr0TSzZiWLdrto9E16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDab-00F0NU-2F;
	Tue, 11 Jul 2023 13:39:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDaY-00F0M1-07;
	Tue, 11 Jul 2023 13:39:35 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJDaT-0008Kg-GE; Tue, 11 Jul 2023 15:39:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Yangtao Li <frank.li@vivo.com>
Cc: Yangtao Li <frank.li@vivo.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: rockchip: phy-rockchip-typec: Use
 devm_platform_get_and_ioremap_resource()
Date: Tue, 11 Jul 2023 15:39:28 +0200
Message-ID: <4152701.ElGaqSPkdT@phil>
In-Reply-To: <20230705090126.26854-2-frank.li@vivo.com>
References: <20230705090126.26854-1-frank.li@vivo.com>
 <20230705090126.26854-2-frank.li@vivo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_063934_076064_C1B4CABE 
X-CRM114-Status: GOOD (  16.79  )
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

Am Mittwoch, 5. Juli 2023, 11:01:24 CEST schrieb Yangtao Li:
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_get_and_ioremap_resource(), as this is exactly
> what this function does.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Though I guess we should check if the res variable can be removed
too.

devm_platform_get_and_ioremap_resource() checks for its "res"
parameter to be not-NULL. So if nothing in the driver itself
is using the actual resource, res could be removed and get
replaced by "NULL" when calling devm_platform_get_and_ioremap_resource()


Heiko

> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 8b1667be4915..4efcb78b0ab1 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -1116,8 +1116,7 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	tcphy->base = devm_ioremap_resource(dev, res);
> +	tcphy->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
>  	if (IS_ERR(tcphy->base))
>  		return PTR_ERR(tcphy->base);
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
