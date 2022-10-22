Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03169C04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 16:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jhca9TKni60msxPeUTaYO6SLff4gMwwNjB05SbDNhA=; b=Qr0IgyXnIcPE/U
	QLovrpj+CScll9Ls+du36ulpUYpnE6U/i/608nIAvzDYTtYLkWUejttFd0IAsDhvofi2Md0MBuCAd
	79auWIIf42GMFGwbZDb0L29R5haKSDl0hBh7dZBDT1czHHy7/zYpT+KE2xBjwBvDteJcEWtEIDNA+
	75Va2nXcvkmMDphmxocyapsQWDZO2s2Jbul5B5B6O5Xg6V5pji1XZTPO9GNUXn30XL553SsgmrZtb
	hvi08ilIjpdR1lkoS+0Zbb5lE7xRkAv870MCKV/unQbpDTEhff8+nb3HfaNUK5UeQF7mwRWnoUAge
	iazV7Wny9HBgmGrY8cxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH1L-00DBOd-0o; Sat, 22 Oct 2022 16:06:47 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH1I-00DBOE-Fk
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 16:06:45 +0000
Received: by mail-qt1-x836.google.com with SMTP id c23so3408544qtw.8
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 09:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nzT+VEmkUStYx/oFKUyBVeLL6CJC5Ebv5tGgGJ3EThk=;
        b=Rd1hH2t7awphQ+KCcp28rqZhH0W/+YoolhPWBzFlzaVzem1NtFymXj9IbmcfKrtxOE
         mwluJy+ONLIEOOcEUVz1AsVeeUW81r2nLNrSZo2PTZKuA70eC6DU7ZtWFVCvQaN0n2EJ
         XNawpYjH23MoC/f/ID18S7MILGG2aRc3N+Ln0ZdChio7g1VfWZV3i1493pydGFb7Ut91
         j76UklR5tmvzbORApFcZj2pfhhCWBoSlDrcYkHj8kmJAjm5MuyA/IS0CHVaU15KekWV5
         EM87cLIapgiTHD4InSBhCrine1p64V7/4jWqpAGOwpoj3u7sGi5KiQ+dnnR1DgL4KGVp
         abgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nzT+VEmkUStYx/oFKUyBVeLL6CJC5Ebv5tGgGJ3EThk=;
        b=hAzOPSbFgYxWzQFxxMQW2fmwRJmrV61uPcmWty8mlx/G+l1s6RcCXOH3rUp1ZSqKXn
         UnylmGxnEKxmWMhgySG3cFe3Rj1an3M2BSObGSlxvPZ9XIbvNuTJHYcAHv28Y9ubuAf7
         Yvk9CkkprIhMq+hqX0HB6Uc9B01wau86AK/Z2j5ISLc12t2K8YjF3kJ4epm1KdjmKF1z
         K7m5Cyf13lad5Nm5ygPjFhDJQN9gFt3lWMDKUhMqn4kLYjhb5oWKi4otdyLViaLX4PgI
         dWVFai8yZ7pSUUPsCQOaso0s/Fsk9Bn7d3VXDZ28KkSaAsTc5RVBeANb02LA4DotOQjl
         FYrw==
X-Gm-Message-State: ACrzQf3yni68OTg78Q/5xWJ07razCdabCwEcyHhQ7iZDnhOS/3ZaMAUg
	Y6of325rhF0wkDIND9sQVeDZ8Q==
X-Google-Smtp-Source: AMsMyM4ZO0osqdPxtj3efWReeGdbuhf5GKNX407YtHct5K3PumdbLfs8ZZUzCHhQOMpPIkHQE1x2jg==
X-Received: by 2002:ac8:5b44:0:b0:39c:d6ad:cce6 with SMTP id n4-20020ac85b44000000b0039cd6adcce6mr20939846qtw.113.1666454803298;
        Sat, 22 Oct 2022 09:06:43 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id bm34-20020a05620a19a200b006ce1bfbd603sm11410372qkb.124.2022.10.22.09.06.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:06:42 -0700 (PDT)
Message-ID: <df256d16-e0c6-4e9a-9579-f7d9d1436670@linaro.org>
Date: Sat, 22 Oct 2022 12:06:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20221021171654.87071-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021171654.87071-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_090644_558644_A0F80884 
X-CRM114-Status: GOOD (  13.63  )
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

On 21/10/2022 13:16, Sebastian Reichel wrote:
> Properly describe reset related properties in the binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml  | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 71f8e726d641..162c1a4abf3c 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -45,6 +45,18 @@ properties:
>        - const: block
>        - const: timer
>  
> +  resets:
> +    minItems: 5

No need for minItems, drop.

> +    maxItems: 5
> +
> +  reset-names:
> +    items:
> +      - const: core
> +      - const: bus
> +      - const: axi
> +      - const: block
> +      - const: timer
> +

The reset names have exactly the same names as clocks. Are these
responsible for some blocks on the device? Seems so... but I want to be
sure it wasn't copy-paste :)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
