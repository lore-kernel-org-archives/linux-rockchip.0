Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A67A9C00528
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 15:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvpSa8K3LLCYGJbTAHll9WfHB7OByN5YX0gfxAiY1jQ=; b=Fe1aqIMR0CEv/T
	qY6A//KFFJtgVEqwRef9U7MFOQ8xqnGPYFt6TlE1ym2isYLvXT+B7n+5Iy1wgXVX8ISmeL/27ZWYT
	Kfgs2QrZn5RL0sJgcCrqK7J++ukwPcfFx7z72KJV3oucBxPoW1NMpYjDKSqIBXOMPCRqSN/GeWG7E
	psikJFnn5ANiJ1ZavwlaNLN5OhcU1EDMLzRlx0m0dW2pK4+1VsPwMXPWBRRUscYDCiH6aan3kVbWo
	EZY1CU0pp3sAGyr2xhxlxe2HEUo1s/wRXMMgu9T70B9pZ9d8Cb+qZCYYep1mmGc26WFi05fLehinU
	p9d2E8xtKVCilOk8dbSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH4ol-00GOiC-2W;
	Wed, 05 Jul 2023 15:53:23 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH4oj-00GOg4-2c
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 15:53:22 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98df3dea907so815177366b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jul 2023 08:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688572395; x=1691164395;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vh477yDSd+xSa/Mg5e8k0mjyTlNnNDL3Odj1uMreL9w=;
        b=FyE+JH8rQS/3AwHo2bDBieRlA0uAn7fhn54l+1mD2m1KmtyrGneCNZpeF/gaEvTOFQ
         qulUr+gqI6H1vBbOOjzVf/kWCOpMLY6Mely4jQ04rvNp9OovZVaQwpjDRM2A4tyOof90
         0hqy15xEiM5iZ08gk60+G1mCnVFB+vRVfJAIFt/XDf3NfXVmbA++mkm9KjDtozo8lyQj
         dwM6SeQ1NiWgoJw9sekEgZDNhNdn/tsAvYE7Q03rflmt2vZ8C+wwESAGZxyINNoUyppW
         EkyZn8LIhMkkgoCpcbzrBWiwYh2pBJ3mqLFau3fQoPjGH8tm7WX3cAnz2QY3NtaW3xF/
         f8jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688572395; x=1691164395;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vh477yDSd+xSa/Mg5e8k0mjyTlNnNDL3Odj1uMreL9w=;
        b=I568rjiLuTI+/Ot5XFZSWEga0tjKVBMzTIsHNeH5HSIFhLFjE1IguECVmRcNucUH3c
         rwB4GuBMq2TtlRJUrldaorVoobIYEJRW8Jh44vJWBNFYRkBm3dO1usckDz+a5MgkXvGL
         OJBiCVsN91EFIYYDFcByNNa7BBc77nl5MCm6arx2EZdGVbES8q2Qyq1uq8xK3NMR6XuD
         DDROa40waAoUxT4cE0L4RMo0U5mw0WlKkPjIACE4R6H0GQHjpvwphWiL/3B3x2sPOtT7
         ng80lB1cEXq4r3zRp66+xpby6voL3L2KMW4yvZI+F+yjGyb0bZYQXwid1flYSqpfu0c5
         rHuw==
X-Gm-Message-State: ABy/qLaQ4Fvy9Hvabt9jJpELR5pd1qNsWUDEXJVkPmAsG/84Fre7JLFR
	qi2iBpaHXn8UR3B1KE1bfAKSFA==
X-Google-Smtp-Source: APBJJlE4PgcJ7V29VNYZD2/t4XcW0wr66Eo22nZ/3iI3L9HTkt5yMStE/CU7ZF2DnujfWvJy+dxuUA==
X-Received: by 2002:a17:906:1914:b0:98e:2b01:ab97 with SMTP id a20-20020a170906191400b0098e2b01ab97mr11790132eje.68.1688572395674;
        Wed, 05 Jul 2023 08:53:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id t14-20020a170906948e00b009886aaeb722sm14726472ejx.137.2023.07.05.08.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 08:53:15 -0700 (PDT)
Message-ID: <b573535b-25f8-8986-3d5d-2e8d4b4c5ca1@linaro.org>
Date: Wed, 5 Jul 2023 17:53:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 3/3] arm64: dts: rockchip: Add Radxa ROCK 4SE
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maya Matuszczyk <maccraft123mc@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705141011.111568-1-chris.obbard@collabora.com>
 <20230705141011.111568-4-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230705141011.111568-4-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_085321_847006_43298198 
X-CRM114-Status: GOOD (  11.03  )
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

On 05/07/2023 16:10, Christopher Obbard wrote:
> Add board-specific devicetree file for the RK3399T-based Radxa ROCK 4SE
> board. This board offers similar peripherals in a similar form-factor to
> the existing ROCK Pi 4B but uses the cost-optimised RK3399T processor
> (which has different OPP table than the RK3399) and other minimal hardware
> changes.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
> 


> +
> +&sdio0 {
> +	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <1>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;

I just send a patch to fix this in some files, so let's try keep it
good. Use proper interrupt type, not none.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
