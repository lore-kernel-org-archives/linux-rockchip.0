Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C42AC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 08:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u/dDA0L0PQiqeRgWUCzne5zSN2AZfhF+Sv+1K3dajU=; b=ikE+wFFJyZUM4d
	KLLPK9xJyM+JOygz5KvvQHZSWY0v+WGJFz0qRmVN4Lnm3VgIXKVRqWJ6lbgyu6XTOcjzYgxfjdPKW
	Zynwu1Y/EPAKJwXilqfyTbDqPQ0uxEBufX5PSvq/fD+W5iGcXswUYqIjRbDoeKDZv24g2zm7flh6k
	3rzKUy6j7r9F0gehOfmWn2NeCejTCc3tpXMEHqD7+LSncDBMYcYH/WW4WC5fSdkdsi7iz8KRDU9L+
	utZpSs7LUdNwrP90a9/RGfhcGiQnb3+5Ok3XNlUmmBAaJ1lXKmSmA5jwxc0E9y2iauts7BzUiGIeq
	sfX/aN100QD4bod0WzQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8czx-00522V-Oe; Fri, 23 Dec 2022 08:01:45 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8czr-0051yG-6n
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 08:01:41 +0000
Received: by mail-lf1-x12d.google.com with SMTP id p36so6093796lfa.12
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 00:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y0SKEwCyHfX0yFKW2qHUZ9Zbc8M71iXHGI6rK3mbnnQ=;
        b=fhndfpnhRpc2Dpf55KMB2KDbdgRTyjg5exBII7NgXgsuEz7yGIVhvlWanVQZYRFZmn
         /uIgbZAhnGkw+hPCBVmxzjpAIak+WYwCpyW6pmZnALGtO0qpB7elmsg3odCLxTQdOQHL
         +SRAo1qNUSSMyub+fhz41fri+OMRShDW9zFUnaRuV82ixOHoY/jcG5vRfnRHtJ9CQb2U
         pT+OdsRIfgu8DQLbRdihU0nAKxH2lU2xHMMn6XadX9ZIbc/SObAwwvuAXrcOCw2Ednxb
         YsAX9HobAU1tlvRKVyFW2zYSUpnWbAzQgd7JN6Zc+8/bYA/viURjYJsTiij2cYddQijH
         w1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0SKEwCyHfX0yFKW2qHUZ9Zbc8M71iXHGI6rK3mbnnQ=;
        b=FkTGTUcRPna9bB8D6AAqIlhKPIoIm9Gc6OtsPeDVxmOJYebzUsf9GpJbV4/1WTBy9l
         RyXyKQBlSwV71+90BsOREVOt+DAwQPZVpI+MSllOujb3j4zucd49Gl63FEAyKa3XEY8e
         t3QYybME1FfSOJ4r3Qd0ybsvE+C2dUz171JAXS94x/v4cl06llqaty2Jgi2kPTilRIiX
         EPlBL/KQhI8CMfGO7nd6XAhFjwUa3w5WK0/dRt9F4fL5bxSj50Wihyjour06NTEWXTIE
         aOpy3mxgVPb6fLZxYQLpQLu0FQtnBzc5PQVKldG28CtpFHTWxXCjeCb599ge/zSyVwvI
         zfqg==
X-Gm-Message-State: AFqh2krhded2g9mYbfKVer15Lu5uaY6I8Z4ISH+r0HX8xn7R3WuOLpiU
	4poCRutCcMOWIrZsM3LwzoCYyg==
X-Google-Smtp-Source: AMrXdXt56ZsGzGO2qHXpQ3Bw3Ra1zTT+0LKkRdE3Jyeq21f+T1SN0Q6qfterQiy36FN1NbrUwIF5LQ==
X-Received: by 2002:ac2:514f:0:b0:4b1:862b:5e71 with SMTP id q15-20020ac2514f000000b004b1862b5e71mr2026659lfd.33.1671782497249;
        Fri, 23 Dec 2022 00:01:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v14-20020a2ea44e000000b0027fb4086834sm13907ljn.15.2022.12.23.00.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:01:36 -0800 (PST)
Message-ID: <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
Date: Fri, 23 Dec 2022 09:01:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
References: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_000139_307591_4F1B3A24 
X-CRM114-Status: GOOD (  10.71  )
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

On 23/12/2022 04:17, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> Add devicetree binding documentation for the EmbedFire LubanCat 1.
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
