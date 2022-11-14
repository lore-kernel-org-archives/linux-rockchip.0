Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD57C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 07:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkSRPmO9w6PS7c5vLMmOSdUF1eUleIr6Azhq3CTGRUM=; b=KYadb8ezKU6TXa
	jhBWgRRvsMBOaaIfMwn/mIQU+2vuiVEyTYQ/po5EbkmeoCsImvrYH9z0YmS7L3sUf3g9E+Fpf7XGa
	Rrs0jcnKai/TRDgKMn4Yp2kO4ImtHrGOyQJ7QhQJG/K+3CwgSiuKXu9R/OD8uhb/qQQ6Ha5oisci1
	xhUeNwjTmC5CANMG5umPrtMOCxEjBtxWjyAqNCORLpfIhldgO6a6ityMsKS+9Yg3DIwLm6Ttr7uhD
	egN1Gw0inlJ723me5OQZziSQG610V5uPtJhUkoQrqVb0l5e96nFgNfajib3IEKKUi/gOkiBB8rig/
	oVgwLJO6fLDxw1L4fYFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUHr-00Gb5f-Kf; Mon, 14 Nov 2022 07:53:47 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUHR-00GauO-Mo
	for linux-rockchip@lists.infradead.org; Mon, 14 Nov 2022 07:53:23 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g12so17998548lfh.3
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Nov 2022 23:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mPteRXuurrYIqWrse9JwxLjzfWbyyHOFXx8cvgeh7xI=;
        b=RbpQb7sW542HdgS4M2H8DTDHsg3T3PRosLUxU5N5G7BQU4oBb+axXvDmDDLLiVQRYg
         BTwR98kQW7n6JuXEBKN5cxk1srrQW3yrFmVdslAWHN2zWtwd6zo/7558lfHWTCJ7C9kW
         JBd1p9HA08p4EJwZIEax9c1/cGR+BNCOOTNUm+tZhoXhUWu/8vJRzsGTe4bzbGUsViWP
         4yWEsMzdddtTYwR0NdUe/QKHdEVwiRPtzVKqHkwmP3w+/v+tSe8Fs7PjHE+DCqFQYHPc
         HuEBULhWe/jOd/2gM1HclbjFR8A/kPlPcJ9d+2KSX8wGh32m3xuSPgLy/39gVIpvf+Qg
         mNYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mPteRXuurrYIqWrse9JwxLjzfWbyyHOFXx8cvgeh7xI=;
        b=7GhNk4zcw6dPxloIR967F4zJdx9Wi6CSyj4/wAYeRKXVO+ke4dUkVuKAFUUxJr6fcn
         5Wj2lDnUKWCsCcvZm7iXZQmklGZW5QGPl0RqhGGa1rDJzZwP8QJFb+krR+Ua5y9ybNQa
         mRJOhxvIKMzbRYOWxeb9RWbzvUj52XCvODrtD02cd/baCEJLXUnAKtyO43990vr8fP60
         Ay4ZIPVT1/0/GowUIzaJFpO6yCN7ZyWVy1FRZxvI5Ybs6FdsIPgNAx3LzjEvCrKG1LG8
         e6diTf0nr21VlKzdGVgK/R3ZlcbzZdwgumU+j0TC8QKqoLncLRtrZ0GNn00SZCAijuEe
         1LKA==
X-Gm-Message-State: ANoB5pn4Obgfw9hXBP5f0h6YwuMIP/6RarIafllJXQEy4xb0JkTpTAqt
	R5VZ5jl3CUxP/Woau22BQWuoxQ==
X-Google-Smtp-Source: AA0mqf4OBoAylXtT0sBiy8jHQ+/GQteJ4T/mfs0zyPgj4RG4qH2mkmcXLXi4oSRxCmQCriiQPyBeAA==
X-Received: by 2002:a05:6512:308:b0:4aa:8cd:5495 with SMTP id t8-20020a056512030800b004aa08cd5495mr3446242lfp.254.1668412397911;
        Sun, 13 Nov 2022 23:53:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u3-20020ac25183000000b004ae394b6a6fsm1709573lfi.246.2022.11.13.23.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 23:53:17 -0800 (PST)
Message-ID: <fa9255f1-d083-936f-e402-61873e582882@linaro.org>
Date: Mon, 14 Nov 2022 08:53:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add SOQuartz Blade
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
 <20221112160404.70868-6-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112160404.70868-6-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_235321_856258_6C10B40A 
X-CRM114-Status: GOOD (  11.47  )
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

On 12/11/2022 17:04, Nicolas Frattaroli wrote:

You miss commit msg.

> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..fc5f14fcd007 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -579,6 +579,7 @@ properties:
>          items:
>            - enum:
>                - pine64,soquartz-cm4io
> +              - pine64,soquartz-blade

Keep alphabetical order,


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
