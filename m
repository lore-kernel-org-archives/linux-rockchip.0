Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E46C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIG7CZxCbyQtFCZ68yRSPOnExLbkdQ6K9SuyXT3BCbI=; b=rzSvQ//q6QTSR1
	2SeAoU0QRxcHXU3Y1zO0KUrSMDhbNzEWVIqoopLs5zxTtJdWAeoOIow5xaDKY3w3RAc5P7mq8eet5
	dFB5lYPvw5y3374AHWO7OYuMl53AwKnjoxNX9nd/FEWilxTqFrsSUNFQtkRgmhJA37jZFuTr6K+O/
	dSzS+XTyXNnIgO2N3+p6gaZcKkGonbcNbMao9CwPVI0dfpUMEKAnzQ9ag1XoZGUtZzc0+zlwpidqX
	8pmtk4AaWsHNgUJNvUZBCM2UBSOgiM4MyA/Je9+HA0AL5LGm1dg2cDiXHApzKVbNxBCkjPMJdKtXs
	R49Dg4yYR9IKEtqB5ALA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7KVj-00HAiM-4i; Mon, 19 Dec 2022 18:05:11 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Iek-00FnVe-Av
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 16:06:25 +0000
Received: by mail-lj1-x229.google.com with SMTP id s25so9616996lji.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 08:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M+4tYd3CxbSvf8zH5cdwJjhDf6cj78jW8dlV2PwZrO4=;
        b=Yj7JXHUtphgN5jXsu6UmBBLgfBUgb81AY/LintM9iY/2MITDq+AFIJw0IzqFvv0jhP
         1pcvfDrD8Qoue5N3wzPh5TiGnVYxkhv1w0R87fNVBlBsSt9DpjqUECy5mE0D5/6s68kc
         Epq8DBgT+ozFUCyQ/+6SyX3e/jllfUaRDYszAOzcL3JR20/XKBkkWRu+4CHH4E6CzHD5
         uo88eKrjzRwHEmkm3QbErdaBsVAFZ/C5b1LsGMSxx8QKPuFRm5BKYzwFrTcoN0PiUedI
         AiCdtOvLuzIIV2EL6ofK2pGAED1Iq0HbnBHUKFmFSRxJdeTMgv/hVUYber1CRSzKglue
         ig3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M+4tYd3CxbSvf8zH5cdwJjhDf6cj78jW8dlV2PwZrO4=;
        b=ZcYVXD/dUr05Xzc9fe3wS7fq/bvfBkDmreEPqh+YoyUkcOXaEVLGGf5DXvW1HSSRpq
         OYf/67b6gVjQePMhtRflTdzN7+Mg0jEvJRjdu7SAcv5bQvx3iXqp/HUYvotW5t2J8UGN
         uc09TRSQelwZ1aczf4WksQIFsSOQTpWadK14xAaFCR8ZwyrcxtqO2/7dbpGaXNQeEZIa
         BnmI1xkNzrARkMkPcHgQaj2zhc6xXmdmjwKZazeyOGv9Qpj5MET4djtzHRy6wF34br1p
         oP2+EydoOPbX1j2weqHSdA9yk6JTer0unK33bbavCjD7ZDcvJoFccN0QFPDWtTM9QamS
         +1OQ==
X-Gm-Message-State: ANoB5pnfDMFpr7BNXpSQPUKs/nwaSt6tO3t1ZpLgEydbbwSOHj4wusUK
	81aWGPyDRzAfWENw81+OtEA8hg==
X-Google-Smtp-Source: AA0mqf6bOLXKFRkGnajgbY32B8ChnrA0jqtigotJ2lGx8ta88YSyTO2ePQaOpALU7q1z+4AB2xZx1Q==
X-Received: by 2002:a2e:a5c5:0:b0:277:360c:f95e with SMTP id n5-20020a2ea5c5000000b00277360cf95emr12010169ljp.31.1671465976704;
        Mon, 19 Dec 2022 08:06:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b3-20020a2eb903000000b0027c8bc7d6fcsm742840ljb.136.2022.12.19.08.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:06:16 -0800 (PST)
Message-ID: <15146b26-438b-698a-9e17-cb4ef2318420@linaro.org>
Date: Mon, 19 Dec 2022 17:06:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 1/9] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-2-benjamin.gaignard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221219155616.848690-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_080622_547297_2EFD0BEE 
X-CRM114-Status: GOOD (  11.27  )
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

On 19/12/2022 16:56, Benjamin Gaignard wrote:
> Add compatible for rk3588 AV1 vpu decoder.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index 6cc4d3e5a61d..8454df53f5cb 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -24,6 +24,7 @@ properties:
>            - rockchip,rk3399-vpu
>            - rockchip,px30-vpu
>            - rockchip,rk3568-vpu
> +          - rockchip,rk3588-av1-vpu

Why "av1" suffix? Is there another type (different device, different
programming model) expected on rk3588?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
