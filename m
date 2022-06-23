Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B01DC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 09:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI4c8NsYmcsYcUiuVlfg/hW5at8x5K/T6o8YD1h5dyw=; b=j1pleSXMwAf6js
	URoorXvwupISYbZ6qMSUoGAwd7MmCSU+FmmhMNiRBANI8DxmEtJr8j64DNhUaopG0rx50qufnKpeh
	D/WhSKYa475c9nMqaILybyyW8/G3tV5a9AgSMmQpfGJJ70yDhKQ5Y5pBA8tK15hI8qEMDLDnO065C
	3s6ugFPrsoTTli0J8ksieJmeLSTar1efoRgWpozWGKwT1ftMA3LY+ojKw86New+fbswEfMed7Kx3D
	utXwpQlt99olr+ZFpMdK53sdV1dgos+UaWYLcpAdtUuQPRSAGnMIp+3zvw22FE/b5du473mPCFSgu
	RBWrZY+6uo2ZxzMbKhvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Iwb-00EHyj-Vj; Thu, 23 Jun 2022 09:16:10 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4IwO-00EHuc-No; Thu, 23 Jun 2022 09:15:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 434D012FC;
	Thu, 23 Jun 2022 02:15:54 -0700 (PDT)
Received: from [10.57.85.4] (unknown [10.57.85.4])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63DC93F792;
	Thu, 23 Jun 2022 02:15:52 -0700 (PDT)
Message-ID: <4bec03b5-c496-ec0d-b968-d4d0e5d2e782@arm.com>
Date: Thu, 23 Jun 2022 10:15:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v5 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Content-Language: en-GB
To: Judy Hsiao <judyhsiao@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Brian Norris <briannorris@chromium.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220623021153.587423-1-judyhsiao@chromium.org>
 <20220623021153.587423-2-judyhsiao@chromium.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220623021153.587423-2-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_021556_911534_1A582996 
X-CRM114-Status: GOOD (  12.55  )
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

On 2022-06-23 03:11, Judy Hsiao wrote:
[...]
> @@ -736,6 +799,20 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
>   	}
>   
>   	i2s->bclk_ratio = 64;
> +	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(i2s->pinctrl)) {
> +		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");

If we're still reworking this, it might be good to set i2s->pinctrl to 
NULL here, and similarly free and clear if we fail to get the states in 
the other path, so that everywhere else could consistently have just a 
simple "if (i2s->pinctrl)" check rather than the "IS_ERR() || 
IS_ERR_OR_NULL()" mess.

> +	} else { > +		i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl, "bclk_on");
> +		if (!IS_ERR_OR_NULL(i2s->bclk_on)) {
> +			i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl, "bclk_off");
> +			if (IS_ERR_OR_NULL(i2s->bclk_off)) {
> +				dev_err(&pdev->dev, "failed to find i2s bclk_off\n");
> +				goto err_clk;
> +			}
> +		}
> +		i2s_pinctrl_select_bclk_off(i2s);

FWIW it seems a bit odd to call this in the case where we didn't even 
get "bclk_on".

Robin.

> +	}
>   
>   	dev_set_drvdata(&pdev->dev, i2s);
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
