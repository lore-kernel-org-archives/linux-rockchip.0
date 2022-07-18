Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19F1FC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 14:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDPZDKY76+iUPqaNQdF88TwbGGSUkdCQYz6yjd2OR94=; b=MKw5r0ffvf2AZc
	gmLq03UN7Zy5hivTDBl1nRAHmqdjUcCixRV10W7rwsHMSEzJSCKtoJoyGYxVoHphd41nhl2RMfT2I
	O24EId432IfxRh6h6G1sN0/PFKOC6dTsYkwCjI1wM317nf5YQUzI+i64SmtgXhOZktSCV9z8TuvZO
	eCcwoZWmqLSu5bQx63NUfHThcGxt8Z6ubAOoXJncmEQy36iQigf8zqPv4Fpc7P8rMEYPiN4yOj4Sv
	f+KD5B5IxWhiRBbSneDX9OJ0z3ulySKPp6yX93zSUcTss7Xkyw3n/Q32NdSca848/sSwZP1kPVG8p
	pfGiHWQRn4wcpx61n3yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRjn-00EgDe-KU; Mon, 18 Jul 2022 14:28:43 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRjk-00EgAl-G2
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 14:28:42 +0000
Received: by mail-lf1-x12e.google.com with SMTP id d12so19604344lfq.12
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 07:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EEVhzQnfaeo8RGfWKKBG4R4Qy8MCeB6s3/UGPiuFDGk=;
        b=l+RsQJLYuRzU2srE3sz1+Xkobf7m9387jofZ0jO+O+TvEjPQarTlaPm0rNNSA+SA0B
         HCi4EmN3Sv7DV2hE3xB5VTC7xH/1f2pixJndWh2g6VNPb4EfpXb8PDHwxrj3vDnylr9G
         5247m0A2zegEkZLgFbJdYKNQb+WdwSkwumBieFMQKm+8L+tgZL2DWiOQww4UlmzPjpvf
         PmCgajYKDRCGtxckFbX+4FWJNCnN//6e8qA+e4eO7kB/v3E/bS1UHg4tfGcTH6YHK4Ax
         rbfudhIMa9kxgt4h6HAk3bEfmHs29DMwFYP0MvD06qKBvCfcv93jPvz69HGiKPHxI9O0
         6VSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EEVhzQnfaeo8RGfWKKBG4R4Qy8MCeB6s3/UGPiuFDGk=;
        b=xzO8j7GwJVauk0FCaoBytOW2kKKaIuDbz6UTyT9ayG7ohCxwkgkAE/GonrafRtZiw4
         P9SAb18ECZP+8ek3MaNigiZERUu94p3lhYtA7dNG372hRbr//XB/Wy+MKP9amFqgYCgj
         jyq7T2hJ4Luq0ut5uqkwof5mh9QixXvQC3Z0CPdNLcu5Vn0tzxwl9Xv07nZpKC64NzK8
         G8k9w8Vjx9Z8CoGBWTTDlZRDmuma92q4t1xfyRX97GN1o9Njc66b7hBabT2VE0sFkr1Y
         YuAnZcwh6nqgZYvXA0cQ5omrlbnu9vq8CD7voFjwxy2H0qLZI2kubafNrxUkzGj0RJfl
         fx5g==
X-Gm-Message-State: AJIora8t5PHwnIRWqHuC5APVcTVdtwVNEyBpfZV7iBqV6Kba6aXcJLzU
	N7c/blU6okxzF0ZZb94kSe3oVg==
X-Google-Smtp-Source: AGRyM1tLMM7i1ct/kXA+jcAh+hm7oU6HjGG0FYLSKpJYiIrCBlnQyGABDVPi9B6996sE3NnmfCEt7Q==
X-Received: by 2002:a05:6512:3d15:b0:489:d97d:8927 with SMTP id d21-20020a0565123d1500b00489d97d8927mr15638309lfv.80.1658154517942;
        Mon, 18 Jul 2022 07:28:37 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id s27-20020a05651c201b00b0025d30dba34asm2130114ljo.113.2022.07.18.07.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 07:28:37 -0700 (PDT)
Message-ID: <2719bf40-475c-65f6-a537-e2e64b98126e@linaro.org>
Date: Mon, 18 Jul 2022 16:28:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: rockchip: Add analog audio output on
 quartz64-b
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220718064336.822773-1-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220718064336.822773-1-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_072840_591059_4B144149 
X-CRM114-Status: GOOD (  18.08  )
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

On 18/07/2022 08:43, Nicolas Frattaroli wrote:
> This adds the necessary device tree changes to enable analog
> audio output on the PINE64 Quartz64 Model B with its RK809
> codec.
> 
> The headphone detection pin is left out for now because I couldn't
> get it to work and am not sure if it even matters, but for future
> reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
> schematic.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 02d5f5a8ca03..a53cf81494fd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -42,6 +42,21 @@ led-user {
>  		};
>  	};
>  
> +	rk809-sound {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Just "sound"


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
