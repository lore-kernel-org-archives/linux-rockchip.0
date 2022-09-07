Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F8AC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 11:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYrtB3YXPGAVtsIrQ2XQgzQkLpeofDMH6MEK/f99Hcs=; b=cqCqwFYzXuRbYM
	FCa5nyat9ND4zebUN3HiCoNbOZHAlBDHsu1Jxvum2B5c/vcSTwHL8zRh9XiQ2LHoZnp6qPAmq13dV
	6X09DxZGB951UhtMcwGLMJgVW1x4sBTTi4PLrsV7PIfQMZu54ixWfCxQdfRSJ4fCtV3N5D4yh9Yxr
	h+cgppmUdAoUf3Gih2xa5g47aom5F4gZAOscFP3iytQZ2XuhX7L8/JhQr1EgQwO0dleRNj+dASddU
	HW5zmWwAvkQy4IQUZZAXLpA584XgH1dSANq8A6Vq1WsSmOCx/sjGGCCLXU/qFq86rtpArdT3NmYJX
	Tix9ih7f2qfFcOqnpZ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVssP-005Vz9-HC; Wed, 07 Sep 2022 11:05:49 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVssA-005Vry-CD
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 11:05:35 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i26so6113275lfp.11
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 04:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=RheaanQ74l39GOH9bp74P4jIE+z8WJigs9jBgeQ8Eoo=;
        b=HddyWGbykN8wp+0Gqz262fZ3Wan2vzCB2w+w6joHVk04mjzyN2EiRqbG+nFlYcSbtf
         L4Eecv8FUSw2E3rdqPFQQD9OhtVw3rO9NBlSL76ah2rHIBSpxiOqTIFvCx0Jf0fi2FVp
         CuCVXI/mPgYlPXC5iyx5d7+1G1dFvFn6f6LtcajLeSEZIdEE7M92kztHxE3/Cw9zD8ah
         AlSgAxOEXnBlk2QZVYTrVEyOQt80+TZXBzrMc7SmQLa8zkl7tNOGmdivNoxg3YuarTLs
         h7VZ7EvNWQAtSVMy/THfAKMGjLxtwBTlyFgc6DH2qP4Gg2wlY5Tsw4wo6Pnoi63GzL2e
         cOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=RheaanQ74l39GOH9bp74P4jIE+z8WJigs9jBgeQ8Eoo=;
        b=2Zx8UR+ehuupr4ZasNKZeZV+gZn0UG3Ij0kKKh/cIFTAvAE9gjk43UkHtXxXpf1Ncs
         fmcQge2jvi+yCBxDFGh4aMWBJJ/84tR5658+oXbYiOU16VmjaVSc086XCH54lRszgy+D
         ny2EV/UHXKY4kI19roaJ7EOHwmz1ka30PRL/7EI4JrVNTvx4FA63UdYX7REVnP/Msznx
         SFNY1qwgu5FzKtMGA/FK2V0n4ieefajLHQakw/Bv6CU3XQxdI/oXEQ5B3J5TryTtKs+6
         r0XtcrmAI/Kqq8VoBeYWronkOfIt/1W2djXx/efSaqMY8Bcm6uNvcsCXaTH02DV/qDXG
         Ab9A==
X-Gm-Message-State: ACgBeo0Yz6LS/7GELjjTWVO29DiNqfaJKV/zqYogyltAgBWwJJaaeE7Z
	d2+/KiXQhzLlZXZN/Acy5ST6ng==
X-Google-Smtp-Source: AA6agR47ozyDXYOvGdemifGei0IjwatizvoJ3SI5fAVVA7gbumkCSR4xKOvZ725fh8ZPqbMibgffkA==
X-Received: by 2002:a05:6512:b01:b0:48b:a065:2a8b with SMTP id w1-20020a0565120b0100b0048ba0652a8bmr870185lfu.401.1662548731952;
        Wed, 07 Sep 2022 04:05:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c031200b00263fd903b15sm2556838ljp.117.2022.09.07.04.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 04:05:31 -0700 (PDT)
Message-ID: <9ad4bdc6-8daa-cfb5-cd6e-c522c5393f2c@linaro.org>
Date: Wed, 7 Sep 2022 13:05:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCHv3 2/6] dt-bindings: add power-domain header for rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>,
 kernel@collabora.com
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
 <20220906143825.199089-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906143825.199089-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040534_423020_0E8FE067 
X-CRM114-Status: UNSURE (   8.25  )
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

On 06/09/2022 16:38, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add all the power domains listed in the RK3588 TRM.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
