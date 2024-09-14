Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B829DC02194
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 11:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKDA5L0KzYT6VkUPeCa+1XOtR+eATOe4zZeuVAz/Phc=; b=wz/btYKv4G3ELL
	/Jzn3ikAYwrCtI6wd+DlT/p1FmTd1K8w8cPUCNw9D/WS8fiws3XYpny8qF9auBbYq2b9c0W8DyrlG
	2sffjouOBsUU7uh8Zi5pvnb9ioyb/aelH4lPgEPA9Eja+yo1K8VTJPBCCFPxEgwuhwqRMxb7XaF8I
	oOVcf9E7Cxzx4QqUsC/nUt/rE6LTOmCZzYndMz6lXHiqHfFOiHMs5C00ERyPIQOsJMST1bRysY4pL
	e7zij+GzPW+CZa7+g+MFMWd03LWBDgqlC+MhNyijesPxDG6nlfoiC8drBwz+FzOD/0HqyYPhMq2ij
	0DFUFKzvz/+HyIgUOalg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spRKW-00000000dUR-0GWA;
	Sat, 14 Sep 2024 11:52:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spRKS-00000000dTv-45F0;
	Sat, 14 Sep 2024 11:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JMlYom8FcCA2dWJkTLSCkHY6YrKnhlwr8nNq9Iy+Jik=; b=JlJIyRWLqr5n+VG1fxF1P4qHWc
	tLrfVEw4jDFiCMDfrKcbLa0gF0LOiKZxmDmvCi2uYck1Wy2ZRz4eUKrdx44pmSSmw7ukc6oMHCuHd
	WFiMEg6zWT1e+mGl4F4806ujcawN5w+I6ifuVqDYhAD3pHuvraC72dIY7IoKnxDjRWaj07JQcU9EJ
	QIAyc4BsJjzJsIZFpvEQvRgBUBGKiw0kwJoqDl47Z8UmQRaVBI+ioVw/hy2fwF/V5pnZCffdWa/EF
	HDE+LF6qxhlCrmgu5xhhm8nAc43OH9bSJioM5CtoHGEPodM2EAEwlQzCUf5VunTdaLqpcnma0e0Yh
	9VyZv2oA==;
Received: from i53875af6.versanet.de ([83.135.90.246] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1spRKK-0003Qy-U9; Sat, 14 Sep 2024 13:52:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
Date: Sat, 14 Sep 2024 13:52:32 +0200
Message-ID: <4920950.GXAFRqVoOG@diego>
In-Reply-To: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_045241_075570_4D68327C 
X-CRM114-Status: GOOD (  24.57  )
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

Am Donnerstag, 12. September 2024, 09:26:14 CEST schrieb Kever Yang:
> In order to make the SD card hotplug working we need the card detect
> function logic inside the controller always working. The runtime PM will
> gate the clock and the power domain, which stops controller working when
> no data transfer happen.
> 
> So lets skip enable runtime PM when the card needs to detected by the
> controller and the card is removable.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

So for the change itself this looks good, i.e. it fixes an issue for baords relying
on the on-chip-card-detect.


But for boards doing that, the controller will be running _all the time_
even if there is never any card inserted.

So relying on the on-soc card-detect will effectively increase the power-
consumption of the board - even it it'll never use any sd-card?

> ---
> 
>  drivers/mmc/host/dw_mmc-rockchip.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index b07190ba4b7a..df91205f9cd3 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -345,28 +345,39 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
>  	const struct dw_mci_drv_data *drv_data;
>  	const struct of_device_id *match;
>  	int ret;
> +	bool use_rpm = true;
>  
>  	if (!pdev->dev.of_node)
>  		return -ENODEV;
>  
> +	if (!device_property_read_bool(&pdev->dev, "non-removable") &&

It would be nice to add a comment here about the fact that this will
disable power-management for the controller.

Also shouldn't non-removable already work, making the case above not
necessary?


Thanks
Heiko

> +	     !device_property_read_bool(&pdev->dev, "cd-gpios"))
> +		use_rpm = false;
> +
>  	match = of_match_node(dw_mci_rockchip_match, pdev->dev.of_node);
>  	drv_data = match->data;
>  
>  	pm_runtime_get_noresume(&pdev->dev);
>  	pm_runtime_set_active(&pdev->dev);
> -	pm_runtime_enable(&pdev->dev);
> -	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> -	pm_runtime_use_autosuspend(&pdev->dev);
> +
> +	if (use_rpm) {
> +		pm_runtime_enable(&pdev->dev);
> +		pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> +		pm_runtime_use_autosuspend(&pdev->dev);
> +	}
>  
>  	ret = dw_mci_pltfm_register(pdev, drv_data);
>  	if (ret) {
> -		pm_runtime_disable(&pdev->dev);
> -		pm_runtime_set_suspended(&pdev->dev);
> +		if (use_rpm) {
> +			pm_runtime_disable(&pdev->dev);
> +			pm_runtime_set_suspended(&pdev->dev);
> +		}
>  		pm_runtime_put_noidle(&pdev->dev);
>  		return ret;
>  	}
>  
> -	pm_runtime_put_autosuspend(&pdev->dev);
> +	if (use_rpm)
> +		pm_runtime_put_autosuspend(&pdev->dev);
>  
>  	return 0;
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
