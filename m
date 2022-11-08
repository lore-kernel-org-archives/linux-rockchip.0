Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C74F2C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 18:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mt6fh3uCQK4yEMKeoSbLdR3aQd04C4b0ap07QbdujVs=; b=KlVXX5fbTjOySU
	us1bEjcHVMmsgGwi+mCP+PmFT65OeiL8V1ze0dhqinr+Z5D1G6ftD4XRaNZb/OSmDqBvxUFbnEnCs
	owJMY83qGSDJWrChNL7DBCGAVVSvkKr6YCFaP04u6fE+aGYOtIzF2WS64z1nkIp6fevDmzfiMhwnt
	K9GcrEillCe5rTi7Ow5xnIRO+52BDB072DAT4RLiW7C/jKhScVmwLVCZtrEO8v6K6X/8IALOEWCto
	L4DzRHQGQyKWjqRD9pQRwPe7CXmO+BAuLLWhxDHewBiIUKuJWVS4noPKGa8Y/uZhGn/91qSd185tS
	P6LMw6D9y+WUP7KZ7WUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT2a-007MQa-Pm; Tue, 08 Nov 2022 18:09:40 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT2Y-007MPS-Fm
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 18:09:39 +0000
Received: by mail-lj1-x22b.google.com with SMTP id z24so22319448ljn.4
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Nov 2022 10:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iNCXKrMAkXs2BI3AZ7/yGd4vcUJUTzN3Vd6P6Ds6uzQ=;
        b=yJMFCyD4siO4pgW5hcXM3+TeI1/HP2PR9lxzr8ZtrieeouwlJ+EzmyjrhABEaNCJw8
         7cEVxbnJdpgxpRiOSgjqOjsMMYWjc4x9PbWafIGl0KREngAN5d9UZpG7E07S/swf0HzR
         4JFoILUxV6b63XYf5Nau0sRMmmHkialf2sA0s/luWQJmZQ33KE6CUbf6yhx+sqh/JtL4
         M+iCog5MVyiKbvz40/TQBIEW3ad2TuZzBWdWkEjnrP/9eknsZ0V46FfxJIMaQULyOMCZ
         dxwor2ndjkssEANari81+gbT/JqaRFw/h3RJdYyvwIAstwbK1SlnGZnnisb0oZmVAf/1
         pADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNCXKrMAkXs2BI3AZ7/yGd4vcUJUTzN3Vd6P6Ds6uzQ=;
        b=4r9SC6I0Rj6nyUuTy9Kiqja4rSyMyXj2AO/NkoCTkAbyTjravnSllXDxJLDCI0shB7
         L4Wkmkor0tmJ47GHxudIvqb4/8CQgbcPTNK0Y9hGKGhWklRjpF/5AU+UODo9kgfm0K5e
         G53FBpnWHzjKKTG7mtyFXDzHXAhV/nHIuYJ51pd/TI8iIf2zpSjPJnSp1ubML4WnqpmK
         K1qHjf6SlpgR2+AGM4KVk9l28cXONJnNVabGT/PpDJylf54NpTFHk+aJ+8P9MvAWnZPJ
         ncUZ3ET+Y40Viv3LA5us+hMRhdCRxv4y+G6ZwvrtLHugZ03D2D/SPokHSY/M7sSO0mFF
         se4g==
X-Gm-Message-State: ACrzQf0DgQ1Z53/QOkxMG7ucCU3UM6y7DpvskdGH31KrEjsWnUbjyVlz
	VJmDSk1T0opqC50klS4fjcJJZA==
X-Google-Smtp-Source: AMsMyM5RorrExuMeriCEuLO1zVGFWCDPXI1TU14nSAWzhhyrFcpwZiVom1Hruz0t5OAfxkXEzGyLtQ==
X-Received: by 2002:a05:651c:506:b0:277:6da2:da7a with SMTP id o6-20020a05651c050600b002776da2da7amr12845719ljp.93.1667930976342;
        Tue, 08 Nov 2022 10:09:36 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id q10-20020a056512210a00b004a478c2f4desm1867700lfr.163.2022.11.08.10.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:09:35 -0800 (PST)
Message-ID: <a3a4f449-534b-f17f-6ff0-353a14f86700@linaro.org>
Date: Tue, 8 Nov 2022 19:09:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 02/10] dt-bindings: mmc: rockchip-dw-mshc: Add
 power-domains property
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-3-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-3-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_100938_549432_13DD345C 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Document power-domains property in rockchip dw controller.
> 
> RV1126 is using eMMC and SDIO power domains but SDMMC is not.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
