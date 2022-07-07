Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46120C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 13:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E97DR3CIbP31cFHS/GGLfUpgAb8CwKUAQz73rSKi3VY=; b=ldDp7gWz/rJcUy
	Q5qPcg9FHVvUvNM4i3wpfCQE4BS+G9SI9BXMwLECFKfR51kGHrxZH5AJMLSpLDe3yEoJ+FMMRcnFr
	Y0QMBH7N07HF4n7s89CjQjWfr0jdHakojO/rqm/T+TIlvok2vbtSMqDPjsWFfT89uahYZkYTVbrXp
	UO61X/J8FP/vCXQlPIzdiywsuOBL7XxFbwMdReO6xAXHkFwTXIwMW+jLeLl9WMrgPcF5jwO4XJY4e
	VDnS9VZUs3PnJyybmkMpQdMTRzUuKpnZ/L5hpJUoqx9xd5eh4pD9nCdNAOAHXfD0kge8RTwdySfb2
	IP6CVoNh999LeqRKGIhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rj5-00GIZ0-QD; Thu, 07 Jul 2022 13:39:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rj3-00GIY2-KP
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 13:39:27 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B4675D00;
	Thu,  7 Jul 2022 15:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657201164;
	bh=9o5f52gj+OiuUlbsS6G+FJFbB78gobFdd6/cQ9WKYak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mmu6GSuIV4ZrsOD2oy0uDCOF/Xs726kLM7+mVyPIs4RevktzmDX2Iz2IAuWnugrgH
	 DtkEEya//2qlqkVb3opOMRsHyfZZSJcCDz/uAPAeYj56fAoj86RhatcelUPYnNy6ML
	 YMWdoZZ1Iw9d7STUAgvQNH9Vg3dTojXGs/1yAWcc=
Date: Thu, 7 Jul 2022 22:39:14 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 07/55] media: rkisp1: Read the ID register at probe
 time instead of streamon
Message-ID: <20220707133914.GJ3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-8-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-8-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_063925_861951_31384B17 
X-CRM114-Status: GOOD (  16.04  )
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

Hi Laurent,

On Fri, Jul 01, 2022 at 02:06:25AM +0300, Laurent Pinchart wrote:
> There's no need to read the ID register every time streaming is started.
> Do it once, at probe time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 10 ++++++++++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c |  4 ----
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 248f0172ca62..ba773c0784fb 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -467,6 +467,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	struct v4l2_device *v4l2_dev;
>  	unsigned int i;
>  	int ret, irq;
> +	u32 cif_id;
>  
>  	match_data = of_device_get_match_data(&pdev->dev);
>  	if (!match_data)
> @@ -509,6 +510,15 @@ static int rkisp1_probe(struct platform_device *pdev)
>  
>  	pm_runtime_enable(&pdev->dev);
>  
> +	ret = pm_runtime_resume_and_get(&pdev->dev);
> +	if (ret)
> +		goto err_pm_runtime_disable;
> +
> +	cif_id = rkisp1_read(rkisp1, RKISP1_CIF_VI_ID);
> +	dev_dbg(rkisp1->dev, "CIF_ID 0x%08x\n", cif_id);
> +
> +	pm_runtime_put(&pdev->dev);
> +
>  	rkisp1->media_dev.hw_revision = match_data->isp_ver;
>  	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
>  		sizeof(rkisp1->media_dev.model));
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index a97c145bad98..bc94a51124b0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -473,12 +473,8 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
>  /* Hardware configure Entry */
>  static int rkisp1_config_cif(struct rkisp1_device *rkisp1)
>  {
> -	u32 cif_id;
>  	int ret;
>  
> -	cif_id = rkisp1_read(rkisp1, RKISP1_CIF_VI_ID);
> -	dev_dbg(rkisp1->dev, "CIF_ID 0x%08x\n", cif_id);
> -
>  	ret = rkisp1_config_isp(rkisp1);
>  	if (ret)
>  		return ret;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
