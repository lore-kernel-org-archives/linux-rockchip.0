Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2891EC7EE43
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fliBwK9zYVXHrSG+C74OFFeHlIvSFaPXl9POkG+IW44=; b=uxwI1Ouj+eZDS1
	jSoiLb3wsvoUW4RqCynsG+fBuo81kqwlETxnISh+fMqmQI5xAtj8LPLe1KrmQwV28ATD3kZAHmFG9
	UnM/tYixxK8WKrMDfEX+M6Ad1ZqHZyY7M9OJYdvWARc052n97qHedL/J6RYOn6UqSorDxPG0srdiy
	rJ95IuIavZoFRtu0KtNEj5ZLsgtxLAyahtY+/Z2u6SGzl09kVmGoz6eb6rndIWpDUMthfaGA7Yfau
	Cyl5Dvgf6yJjlNnkmlESpTUOtclJkZekDRjojh7xfEuGNeDE+fFyvsOqUqHik7sAfaBX+Qoi+eyIP
	74spkb2fHtclAFEY1nqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqT-0035zW-1m;
	Mon, 12 Jun 2023 08:24:13 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqR-0035yi-0A
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 08:24:12 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-977c89c47bdso751660266b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 01:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558249; x=1689150249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6FRK4HFfgPWBirVfYDPjb6CoRt7wCHoD3lKJRadNg8=;
        b=BcAOefkle/LHxvI52wscsD1HqlHwY9cHn03i0Pabfkmt86hqe0+VxKBNAR76O5qI4U
         oLqb8BKDueIqWm4GSNHhEGDfoNaQbexuP1m7eBPGb8a2Uxj21DbG+GEMJ1BVRGNrnshz
         eQZYMbseNSJgiAwZtB4UBKG/1G/8A+CBIuekb3tKyIP3UfzSSE4azrwQuqMhArBrH+Tw
         2Snlj34SSBqT1VBYFj9ybvAo3gdaOviM2VsT4VqqoNaMfR1nr8P58VEisOVy9Thf79wo
         TZc2mycYXjO1khtlD2A4o+g2VT2kYFhviWnFmxhUt7L/aHKCUVjl9DZpSoXTsSMzogDO
         ri2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558249; x=1689150249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6FRK4HFfgPWBirVfYDPjb6CoRt7wCHoD3lKJRadNg8=;
        b=U7R3920KvhfRcWtvYhlAN33nKwc9Xrx6P9GL1E3HTC6NAAzCuQkXiocuIOVDmVQAjM
         WQZnAov1aRh2vPMwOW1gf4kVLhJbRCIX2BPLK/fySy21m0pupVFb5adJmSF2MaigaNdX
         tEMze/Xjq9WBZZ9kjHdwBhFS+rpeFMS6FgkU2V8iplQs23UDIAqnNncPvDd1vv6UDjOx
         Biw2tWT6vXnZgNJjH2cnXzD9rH8+uL/CDPpEVmXR8ypgz1LyfiU4E+X6AyY3/17+B86x
         ApiOaVEyQJjkVT1fpDGzMsEutLZk1ypcghZCMHsBltwTaYEVy5clMnptnBFg9V/WJcJ2
         8N+w==
X-Gm-Message-State: AC+VfDx+Kb6j+EKlQsCPe7cGQ4iWOExFavs3RV6l86ZdT0Y24/e1zRPz
	jAh869gI/ONNiI88L0uTOu8GTg==
X-Google-Smtp-Source: ACHHUZ6Pww7aFvpQWCcMrF5FzzrD5cGi0zKemQAOXPVxhZItaOEvFniBweIG13CsZzvJN+qjGnAFjA==
X-Received: by 2002:a17:907:9710:b0:96a:ff7f:692 with SMTP id jg16-20020a170907971000b0096aff7f0692mr11003551ejc.68.1686558249516;
        Mon, 12 Jun 2023 01:24:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id pv12-20020a170907208c00b0096b4ec45e10sm4824008ejb.139.2023.06.12.01.24.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:24:08 -0700 (PDT)
Message-ID: <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
Date: Mon, 12 Jun 2023 10:24:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012411_088910_69E7722A 
X-CRM114-Status: UNSURE (   9.78  )
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

On 08/06/2023 18:22, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

...

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3588-dwc-ahci
> +      - const: snps,dwc-ahci
> +
> +  ports-implemented:
> +    const: 1
> +
> +patternProperties:
> +  "^sata-port@[0-9a-e]$":
> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> +
> +    unevaluatedProperties: false

You should be able to skip this patternProperties entirely, because it
comes from dwc-ahci-common -> ahci-common schema. Did you try the patch
without it?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ports-implemented
> +


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
