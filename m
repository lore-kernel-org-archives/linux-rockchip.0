Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB957C77B62
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 15:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/mDe8rIQTRFL4wp+6T8BXJITPvmkqBRN8i0oB065BA=; b=y597FCUfPbX21e
	DRzOmBip102GOufDEsWonYpbH5qSdG52gBjOJpspBZPt9FDj6RmJ+pS6IBW7DcgzRHtjgU3gYFIZN
	KE52tMInXzZkeJntRO3OHAinTkDMg43TE2TJnTxjmxmNvM6ywxp5B8zwGS8jW87cle5p/V8xutZlE
	r97DTW+su2CblH1S2lPHmfCB3g3hrF41nbiMOnVg+x3Va0+2fOKYLuk6HKg4MZTGx3b7oADMhjtEB
	AEEBEblfmv/++eXkHfoqW/ooTsu7m1qi1yM07MEMEN2cqHqw3eAogoOKehY/VWA/IDN2EdaP8QHly
	CH3I0m4wRsHAu1SMB7DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phB2K-00EtGy-2p;
	Tue, 28 Mar 2023 15:15:00 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phB2H-00EtFq-12
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 15:14:58 +0000
Received: by mail-wm1-x332.google.com with SMTP id n10-20020a05600c4f8a00b003ee93d2c914so9329853wmq.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 08:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680016493;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PiMcWrRifwEUskuyIQFulIGS7kWqc1dpRYsMeE3Bnt8=;
        b=lkLswlCp30qWwFIoG0VhbwpbY4a6zCPS1qSMwqwqeiFFRzUZmaUPXzqNBgLn9KbnZA
         EjRMoSidmm0G1ZqXLco7qoaIeAGtEqy9CzCmGT113ZV9pZlOZXo3Q4EQCvl5QeTp1+07
         kEIka5g6iNZos2U6DbuOOzeSxbQ/cJ+Ymvhn4t6dwcq9C/hnxbYylLgrMYJp0a4BoA9y
         E8vCYfeNd7p3wsnJmXtnAPbXhT/qlhRza6jRb6elaW6Yp0GEpqkFB2A/bwALWysQ5g6S
         Q6c0Hr9njtIXFUbe4cyCN9r+vmJFm9YuhFp7Q/rjIsMdNApQtZJ3QRPehh/ts8+0ft+2
         zzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680016493;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PiMcWrRifwEUskuyIQFulIGS7kWqc1dpRYsMeE3Bnt8=;
        b=8M1P2a0j6U74jmrDduSxrYu2bhGLxuYTDtaKQ/LI6OOXwUmGrmPnyBAJTU582NdPs4
         kZLGRDXBzZxe0XwAdCsqbpacJaB5bhWnkVp7tQYXJyQ00jcvT6Xhq1+OSIqJPPCXuRoR
         0Evd1VRgvF4jQVjmsnzt3baiTcoyuumTAbJ/RQ9IB08YVNZzR2hOva+z+Ws4BymWTaep
         F4tMgF2lgpdJCFeezPQTuJTDKkYC7BCN80SHqe1dynDXwpTzO4rIoy8mZl8+GrnaJL6N
         FKBuVcw/DTjK9Ma6TmvsIgfdrExpE/439XnIENMdDJuhsS08KwvCQzzIVvCw2giQeqWZ
         AoCw==
X-Gm-Message-State: AO0yUKWJefqOo99rrU+955k8rT2Bbl2wzwJ1dzdCvm8gF79U5vHSBdjt
	Jzm6x5inUR0g5PtUJkOsGxUc/A==
X-Google-Smtp-Source: AK7set95wY5EE0YNtfyvHTheORBSmDzHYguznEV+XEbkUnM0uVPMSwFMBcmsjKdakudAhAOmOYBvCQ==
X-Received: by 2002:a7b:ce08:0:b0:3da:1f6a:7b36 with SMTP id m8-20020a7bce08000000b003da1f6a7b36mr12456491wmc.0.1680016493494;
        Tue, 28 Mar 2023 08:14:53 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.91])
        by smtp.gmail.com with ESMTPSA id v4-20020a05600c214400b003ef62deb830sm11354391wml.25.2023.03.28.08.14.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 08:14:53 -0700 (PDT)
Message-ID: <48f1ee32-a030-8188-3a9d-612888b9678f@linaro.org>
Date: Tue, 28 Mar 2023 16:14:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH -next] spi: rockchip-sfc: Use
 devm_platform_get_and_ioremap_resource()
Content-Language: en-US
To: Yang Li <yang.lee@linux.alibaba.com>, broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230328062118.86336-1-yang.lee@linux.alibaba.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230328062118.86336-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_081457_490100_59884C48 
X-CRM114-Status: GOOD (  16.90  )
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



On 3/28/23 07:21, Yang Li wrote:
> According to commit 890cc39a8799 ("drivers: provide
> devm_platform_get_and_ioremap_resource()"), convert
> platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_get_and_ioremap_resource(), as this is exactly
> what this function does.
> 
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/spi/spi-rockchip-sfc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

If I were you I would make a single patch addressing all the drivers
from SPI as this is a single logical change. You get extra points as you
avoid polluting the log.

> 
> diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
> index 4fabd2e0439f..6830ecaa270b 100644
> --- a/drivers/spi/spi-rockchip-sfc.c
> +++ b/drivers/spi/spi-rockchip-sfc.c
> @@ -576,8 +576,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
>  	sfc = spi_master_get_devdata(master);
>  	sfc->dev = dev;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	sfc->regbase = devm_ioremap_resource(dev, res);
> +	sfc->regbase = devm_platform_get_and_ioremap_resource(pdev, 0, &res);

No, you better use devm_platform_ioremap_resource() as res is not used
afterwards. You'll get rid of the local variable too.

>  	if (IS_ERR(sfc->regbase))
>  		return PTR_ERR(sfc->regbase);
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
