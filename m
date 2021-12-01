Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72271C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 23:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNNfqcT1S5s7Ebbh6DVuhogRTJwhyWQgMP4pt6j1O7M=; b=Db+PWXioMzvbRM
	z8oALmx0DMdB32/78VfQY9ZboHBETyYGirHg7dXKgmnX34jxbNUkg4huoXzbboAH2cYseCNeQirg3
	GwbFhAiGkUmIQd9tuvFBe+2rK0mVIPSxaH9IqjfuGv65Ffs32qz1t45j1//Ozt4CNOVGgB8DPrtFt
	8yQmmkLT7Uc6yw4cXV0sBm7RDBsSs+G6y1SYqR2LSy04AEhdERachQVCOljE9nei2FKNaCyqGX0fO
	3d5jo7XjnhNEYv/YmAXE3KPLjaCdf7aug7SzOiSGk5FQ4mbBKxO5qFuV0SRynwbpVbxMNyQ1mtWGB
	ClZAuGtiW6bMAu2FmZsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msZ52-00AKy7-Sl; Wed, 01 Dec 2021 23:32:04 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msZ4z-00AKxP-Ol; Wed, 01 Dec 2021 23:32:03 +0000
Received: by mail-oi1-f174.google.com with SMTP id be32so51869986oib.11;
 Wed, 01 Dec 2021 15:32:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7pZzwhXbreD6p1hc3NmKUUGTsNKUInbqDRu810jE210=;
 b=Xl7EK8wymNBWx72qvkouBeub7Nncw9oOoUNPXDgW44dJSJQkocP/yWV5jdCUriJvBL
 mjnW4LfUjDsSKieDEdW235lEMs6EuBhFaE4R1RjKGhdrvoIVP2rD3ldgzXb6rNddX2NR
 hZ5FvB2ueIH8wnnn1IYQeHXK0Pnn+3etjh8cConWrlHuNMhGTQZjAq6oLZxeA/UZSVyW
 lS4MbZh61du8FNxCNghoKujTAbUpTjUKuJ9DnIuxf+PmwrgN+OfDpOeSSpWVnt+h1+RT
 aXtHqgjcY468Sb6qPmj15jZY+7aO5gWl3WCJ32BEF4nQBNJVDkTa6kkRQTzMheNY0spq
 nKug==
X-Gm-Message-State: AOAM533ZCQzlTsFQX/B0ZKdMKvfSf/D0K419axu5eSZH3n11QN0bQk2L
 QVIfg6kkE63qN/EEBB03rdO7+SHD1Q==
X-Google-Smtp-Source: ABdhPJwSnxKMhrBthHOXT9LkZdEuqk9hwzgd2f0EOsBoWQBJqpnUbqf/NCKJIcDnHSTYm1wQmzoFAw==
X-Received: by 2002:a05:6808:171b:: with SMTP id
 bc27mr1460567oib.21.1638401519882; 
 Wed, 01 Dec 2021 15:31:59 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e28sm605537oiy.10.2021.12.01.15.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 15:31:59 -0800 (PST)
Received: (nullmailer pid 3212732 invoked by uid 1000);
 Wed, 01 Dec 2021 23:31:58 -0000
Date: Wed, 1 Dec 2021 17:31:58 -0600
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two clocks
Message-ID: <YagF7jJD4fvtr2ut@robh.at.kernel.org>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
 <20211126151729.1026566-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211126151729.1026566-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_153201_851368_ED1A20F9 
X-CRM114-Status: GOOD (  18.84  )
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

On Fri, Nov 26, 2021 at 04:17:26PM +0100, Alex Bee wrote:
> Commit b681af0bc1cc ("drm: panfrost: add optional bus_clock")
> added an optional bus_clock to support Allwinner H6 T-720 GPU.

That's midgard and this is bifrost... Driver changes are somewhat 
irrelevant.

> Increase the max clock items in the dt-binding to reflect this.
> 
> Bifrost GPU in Rockchip RK3568 SoCs also has a core and a bus clock
> and it gets added here in a (very) similar way it was done for
> allwinner,sun50i-h6-mali compatible in arm,mali-midgard binding.

I guess that one is insufficient.

> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 6f98dd55fb4c..2849a7a97d73 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -39,7 +39,14 @@ properties:
>        - const: gpu
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core
> +      - const: bus
>  
>    mali-supply: true
>  
> @@ -118,6 +125,17 @@ allOf:
>          power-domains:
>            maxItems: 1
>          sram-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-mali
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2

           clock-names:
             minItems: 2

> +      required:
> +        - clock-names

       else:
         properties:
           clocks: 
             maxItems: 1

           clock-names: 
             maxItems: 1

>  
>  examples:
>    - |
> -- 
> 2.30.2
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
