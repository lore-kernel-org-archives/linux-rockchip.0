Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7AEC761AF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLEyDqSDCkET7V2w3kBCDpjIZV6g9y7KJs9O7eS26hk=; b=LqUt5Lj4On0Vdr
	ktXySyGLmX3BhpFlb+5ASbcF1em/HdttMiKMmucJ6jJi49P9/wTU4sYRxnlEN94VTtB8g5GcqJUV4
	UAtHk02CqYXY9LmwNB2sby6cCHYkb8+M4vfkQ8ug9FyO1vKQwQnUXw8gxq8RUoUQl33/PGDPmeXhc
	FIETaHICvHPmjy0RyQlf7awVOsaDdi9xq8ZfK7rRpKjiUsj3I99QlT/1lsq/SkwFJs/fofX91hrDI
	/YInkICXyOakkNpBqzw37MY08J3q//xy3VGjMz9pTT9prYd4/41YPaCFf8k03gu6wzvoR/fxD2k5E
	HNq7Bb4V44PE+II4+LhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phQAO-00GuDy-0I;
	Wed, 29 Mar 2023 07:24:20 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phQAK-00GuCV-1Y
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Mar 2023 07:24:17 +0000
Received: by mail-wm1-x32c.google.com with SMTP id bg13-20020a05600c3c8d00b003ef90adc168so1162852wmb.5
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Mar 2023 00:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680074652;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sJp2+W37XxsAR/L6gGNJ3ZD77wku21AF7kwE0n4c81Q=;
        b=lncXY2Fu/NQVZPrp9FfpHHADHD8T2yjdWoYJtL3Ksx8jTjZ0iUo93eI7kMYBGTfgZr
         nFDNmtdF4F9LQuvRC1KHbvi15E4RqpdDHUA5As/kMPWKu7WEKixGKfoE6RrdXKazfbya
         xPnzAiJghsYWQsWhYxpeLh/Qgz7wt55VpzbOouL/XtLLz3F0XCCTmKsOfM8u4L0PXYvW
         lpszWhw+ISvZmyDSyNMNbJWsNoIPWmmnW1IgwEpisNj5VRLsgMucSYw2bN0LmDk+SM8y
         /yUs37sLZwyhW/c1D5HhnbbLmHPAkUhGpDsU3BIvFi+bSW91hU33Qws/xuoemVuNcvIX
         W07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680074652;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJp2+W37XxsAR/L6gGNJ3ZD77wku21AF7kwE0n4c81Q=;
        b=kagPIGVJlyfBJSPiwlTTkrQN85qJYAw1Py4MkorvrVjZcNMPWvKhgMdscqMW17XMBj
         PF8kzbwFqkPxTq999rD8eq+fRLDjWqerlEWKmi910oc7//k3sPgG5jEyKIlVvPEUCmSK
         /zQOHIQsw1H8Mn4TC+1HRasVSU3YOHlP6ReGVjjrgDwP2a3ynEjRzuaTCfxc9u6kkAJb
         0XGmldHZZiv2TPt76NAVCCHDcyGk+R81G6GsHIeVbCkhb3Zt5nhccJWxjtzT11FELBzt
         6XSbmLAanlTaFKQltGKS/WeIgROUaX1CFSGR/hV8NrOaDCXC2jlNkEnGXQj2gz97MUb3
         Yagg==
X-Gm-Message-State: AAQBX9dWThiqT0kMp8e3gbs6Aa65GdQ52ct0r5g6U0a+LSetmoF8XSr1
	9tZlDMYZjEMD8nJ6ZgykdXzGgA==
X-Google-Smtp-Source: AKy350Y9eJHsBt9yYeOW4vaIiBR0qmrFdBShLK6Q0MVPxomqT1AP3as8a/i3/dZXLUVlLEdjMFOJtw==
X-Received: by 2002:a05:600c:244:b0:3ef:76dc:4b92 with SMTP id 4-20020a05600c024400b003ef76dc4b92mr3755411wmj.28.1680074652535;
        Wed, 29 Mar 2023 00:24:12 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.91])
        by smtp.gmail.com with ESMTPSA id n18-20020a1c7212000000b003eafc47eb09sm1153882wmc.43.2023.03.29.00.24.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 00:24:12 -0700 (PDT)
Message-ID: <4df2d9a2-a2f3-e4a8-edfa-4efc441624c2@linaro.org>
Date: Wed, 29 Mar 2023 08:24:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH -next v2] spi: rockchip-sfc: Use
 devm_platform_ioremap_resource()
Content-Language: en-US
To: Yang Li <yang.lee@linux.alibaba.com>, broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230329062450.58924-1-yang.lee@linux.alibaba.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230329062450.58924-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_002416_527991_89CEF320 
X-CRM114-Status: GOOD (  17.91  )
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



On 3/29/23 07:24, Yang Li wrote:
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_ioremap_resource(), as this is exactly what this
> function does.
> 
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

I still prefer a single patch per subsystem, but Mark is going to decide:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> 
> change in v2:
> --According to Tudor's suggestion, use devm_platform_ioremap_resource() and
>   get rid of the local variable too.
> 
>  drivers/spi/spi-rockchip-sfc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
> index 4fabd2e0439f..b370aade11b4 100644
> --- a/drivers/spi/spi-rockchip-sfc.c
> +++ b/drivers/spi/spi-rockchip-sfc.c
> @@ -558,7 +558,6 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct spi_master *master;
> -	struct resource *res;
>  	struct rockchip_sfc *sfc;
>  	int ret;
>  
> @@ -576,8 +575,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
>  	sfc = spi_master_get_devdata(master);
>  	sfc->dev = dev;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	sfc->regbase = devm_ioremap_resource(dev, res);
> +	sfc->regbase = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(sfc->regbase))
>  		return PTR_ERR(sfc->regbase);
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
