Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7AD3C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AOZYVP9zUxYBdw3i7pmBBuET71m+EQq5xxlipskrz0=; b=MVMfpGhJDnuFsD
	Cxc5/KYAVwf7DTEh7vB2seKi+S0rMrbLJVsWDaKWZ4a3bgmo/7Pl8VQNIePTtbQEUQ2dOkOwOyzHc
	kc4zycW+42AYGi8Wl8GVLhtbQpF1rRlInAFy/ee2xyu8PspPglVJcm8DV1WL1glNujUIOLvczcU1r
	7yVz6DWp9pROGSrqu4IibuLKAo6/xMhpXwcuKI0Kx/YjuPu6c2ofqdi7Wmjmg/yrnInMb66HjtHw2
	H+Zn46tVKNwUvwzCcklUipB8Nw2Vr6qnv0xWGu7WHVBhKihzb8UMZl5vhz8n9uxcjNS8vndyG4zSg
	lPFA8Lf3McQ2JEUJEyUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEUG-009Qty-1b;
	Wed, 17 May 2023 10:34:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEUD-009QsH-0G;
	Wed, 17 May 2023 10:34:26 +0000
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E931C6605877;
	Wed, 17 May 2023 11:34:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684319663;
	bh=WNx8LLXM7GrSvGNzhmchbC8fi2zZZqQ5I2UjKhrGGnk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WZkkZirENmeTVBmQY446rlfa84uVjYBkWt+dROBYuMcyyCuEaPrIAzRLhTEhEOQGI
	 mML+974y2O57rEfmGDPLAwK3KSP1JHzyaMmFWbgL2L1bypjdPdYVhcUC4f6pmqJdns
	 lF6+8OV2hDL5baF979nIELWLTlNx/txSs7mnMbFQaEfNnx9iF7w6FvY9G5oWfbi8ZZ
	 594RhHf6D5U6k3lCbM/4GFM8QZFrBmt+0mfVeK6Ka3yIsILEfaAuQnVV7Gi7OdbbM6
	 GNSLQLHuAI16L5U4JjRBvopXwDzblmiaPq5p8EmiumkJwEwQPIZrbWau1pV4RGijO9
	 f96Y3njwE+v0Q==
Message-ID: <f8f4c224-0070-6dc5-665c-ad75f0306d72@collabora.com>
Date: Wed, 17 May 2023 12:34:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 4/7] iio: adc: rockchip_saradc: Match alignment with open
 parenthesis
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
 <20230516230051.14846-5-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230516230051.14846-5-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_033425_245048_0F954992 
X-CRM114-Status: GOOD (  14.75  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 17/05/23 01:00, Shreeya Patel ha scritto:
> Match alignment with open parenthesis for improving the code
> readability.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com

> ---
>   drivers/iio/adc/rockchip_saradc.c | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 05ea823a8f16..5e1e8575bc76 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -144,7 +144,7 @@ static void rockchip_saradc_power_down(struct rockchip_saradc *info)
>   }
>   
>   static int rockchip_saradc_conversion(struct rockchip_saradc *info,
> -				   struct iio_chan_spec const *chan)
> +				      struct iio_chan_spec const *chan)
>   {
>   	reinit_completion(&info->completion);
>   
> @@ -387,8 +387,7 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
>   }
>   
>   static int rockchip_saradc_volt_notify(struct notifier_block *nb,
> -						   unsigned long event,
> -						   void *data)
> +				       unsigned long event, void *data)
>   {
>   	struct rockchip_saradc *info =
>   			container_of(nb, struct rockchip_saradc, nb);



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
