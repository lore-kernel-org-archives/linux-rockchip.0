Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D06DBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 17:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioLdzOBDfS6fV3xfHzQimwo3FgdZdaHUV2rRrUl0aUU=; b=YG28XDLshGm5qf
	6gpLqt4VxyCx5Jg0eKKDpI0IeVhHNn0TUlTYOdp4d620b7IFr8aeavei9NAOlt0MGbrrxqfGWoqOF
	Wapv7CRJJsC9/mlh96UzP0kN/WfHEfvs6PgXm2nB3G4jwpBuxjkgPDDsNFgELFWqb3uBAjgayk1HU
	dCZVecfZk1F6VkbWh6DCP+w0nBG3/EwvQ0dPHUxUx2JfqoFZmcrJ7CLpx5Wc7FdShibn6i4gKSBtH
	37mJaorxMs4qPUznwbqoA0By5eSHa8rww8G3UpT2PH26lSvJIzpZOKzgncEP9aFaO6xDvjOttaWCK
	AhBLkOUtdvchEgAi94CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZc7O-00Gxru-JS; Wed, 30 Mar 2022 17:28:26 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZc7L-00Gxqs-B1
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 17:28:24 +0000
Received: by mail-ej1-x629.google.com with SMTP id c10so24532101ejs.13
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 10:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ZsXgBTrCuEUxC1QZQ0H2Ukv1GeSn41ah9SOqQNdPE7M=;
 b=oJLD1USfQGNXmh8umJRilraVZc9jthngKtOn/GdB9lcFP3jbqhtVZWPFPC0D62l3hw
 vLWXTeE6XRN6+SovH0Z9z2ecTReOxQ4+G8nEGQQDVSoaVNW//uuDDPw+neLNdqvj9pwe
 6beKe54sSMzYbbv5rc71eNK7uysO8puaSwRrK9QEL9I3lX+Eisv56ALY3v/+Iyqn3lJg
 ot4ahZJCAB4UBAj3+qjybA0iEGDuNmb58m2Fblw/umLLrf55Doi0thEfBiCOQH4VEcKO
 c0X+dTBxUWqw3dr2RC0ezjxvmiWGzUmIO+VB+D+om6vZ6KqzNECf95GYg56DgCpihm0S
 n2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZsXgBTrCuEUxC1QZQ0H2Ukv1GeSn41ah9SOqQNdPE7M=;
 b=kQLZfeq2j3gs2oSmT0PMyDiJ7tcr6nPRqigo45pnn2WejOJkmnXAP5Br+k+V0nRkjP
 VXUrNO3zrVm5jgEICklazbyvt/qfu6iy1qDS4vkU/1cBIR8nsCYe1mWiPaIqhg/B4FIq
 Sez58hm/ZXjVBQcpgN80tPzAxs2yrGZNjGRYR0nFEV1sewaWpl0Gvs47ajga2mP4w35M
 is3kh0sXldOuVH2FTJdT/cdxzIwHm+dfCmCNLzWLwaCzKCCZlTKOq1a6kpKrMBQDe9bB
 zyKBdanUGLU9zuViTNhXYKnsVTyr445FvmB4uEE1rnICypp8ZhkAYFSAZq1iqeARNY/r
 jo6Q==
X-Gm-Message-State: AOAM532pRs04GaIM9Vwuju+ynqrdpow83OCfdGybA1NMejm8RN6/rxGS
 maZ+IAfrCflbB1gFS53h3edhIw==
X-Google-Smtp-Source: ABdhPJwAF/kWlcbyw+AnOhkeZyWbHk5sSJiKV2D52eeGBittR1aJjyH4YGKCBAWEytDCQ4+LdVuN6Q==
X-Received: by 2002:a17:906:9c8e:b0:6df:f6bf:7902 with SMTP id
 fj14-20020a1709069c8e00b006dff6bf7902mr631908ejc.191.1648661301916; 
 Wed, 30 Mar 2022 10:28:21 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 ky5-20020a170907778500b006d1b2dd8d4csm8521852ejc.99.2022.03.30.10.28.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:28:21 -0700 (PDT)
Message-ID: <faee52b3-6d43-dfe0-500d-2fae70fe2fd9@linaro.org>
Date: Wed, 30 Mar 2022 19:28:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert
 rockchip,rk3036-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330114847.18633-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330114847.18633-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_102823_417758_BFCF9D0E 
X-CRM114-Status: GOOD (  10.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 30/03/2022 13:48, Johan Jonker wrote:
> Convert rockchip,rk3036-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3036-cru.txt    | 56 ---------------
>  .../bindings/clock/rockchip,rk3036-cru.yaml   | 72 +++++++++++++++++++
>  2 files changed, 72 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
