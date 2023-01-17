Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25BD8C63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDZWiAKyREWU6BB13xsWycGAoeJdNdHzs0cZjL+gp4E=; b=Kr2AlhYUrH+q+j
	w3eu+O4j5+ixvdy6qDcl2Ns5dT493p7gr37Sne4sEc4HhwzjmUDOGd3Jp6tzyFLapXW6N2MjZoRom
	xQCBIVGj+BQrHxhEqmgvmx0Cv6NLjGOA2AmZi328HveriqCk5e9lPDZsaY3mdn2OE6cgi1G+b13MN
	96MDHNlg/jLaaQXtwT9o47ZTO2T0slMcwUmdcC8+E9x02nAaWtMuQr0c1Ojy7fHr0iyQ1BI6E8eni
	iDpzEmbMeARW3D7SQadI4k4rp1CNKdvs4wfBtmYSC6V4TgfnZH1cGbYgesr0gumpvRBTBorTBoKxt
	64eFH9VYCSCMBP9wJp3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjnq-00DvkL-75; Tue, 17 Jan 2023 11:06:54 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjne-00Dvfe-AN
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 11:06:43 +0000
Received: by mail-wr1-x432.google.com with SMTP id r2so30176643wrv.7
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 03:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5VlVfjPw+xv6VuujaDXgc7l968YPEAt8+NftJpGeq1A=;
        b=Ia7q1dons5xYu/YX79JDUS9Hz6+VifLyaUFKNQgNr3dFP4tTWBQ2vHRxOa6/bXIY2f
         AfxVuFhWHAiLOZStoUEFjV17HhVKTb4ha7ZRnNYia/TEa/irwK3qLDuns3WxNwRMQ6P9
         o+utIpkjMvnF1b7acf3zuEZpO53dHENlq6QEumDUUf6B1vfUoN60C6HeBDeXHceJTMcr
         RpvSaJZnjzOtS7NmItolKy7Dbq7Ro+/73m+CW2aZwsL3jimUHyrqbzlPvnQYi+JGMAjZ
         UV8zUNgtZeoyrYrvNy+twTp+6fdYDubtg8OkM3J8hBxJdm/Upteo7es1v2HIijN4wVYj
         GJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5VlVfjPw+xv6VuujaDXgc7l968YPEAt8+NftJpGeq1A=;
        b=PAHcSjzfzC8uKY1dkqIFWijKLhN3Wu7ToPswejhh+xFzLDgp5O6NhcOOTXAkqUwxnK
         piiBEfHbYOwe7jdRAcLf0opk3VXTZcAgV6OMynWRfHFJrByPmIETIbMN7IswIg4V1xZr
         7qfbAHm6Tt2xoyIhFvlV+bKcXqY/ESv/US9X9d3xtHiehpiLqZ5bJkych8zB9p/ra399
         kEZjF6zPGKxkQ+jhMcymBobrVFA62SHjARafWEXgMqwAy0gDVh75CbDNQ8Ce2Sws7n7P
         rsR75JWFeUS+Wohj0tZTDcJ6ZgnNbCYaet8x8Uah/9kzJp1CScvwFl2IHBPiH33dzANv
         QzKA==
X-Gm-Message-State: AFqh2kq3PMZpUyttmEBTBIw81ouxt89WBTsObbuFoxfmMQq6tObFDV5f
	hgnsX3Ap2jGgvZcdLw4XrPidNhorwD2VXg6I
X-Google-Smtp-Source: AMrXdXsbin8MnpDGyCIm/CoMhuyEc/m19GzpyyRmynFQuakWzXuXZ0SuGGa8BPfTNil2dW2jX9Q9Bw==
X-Received: by 2002:adf:f992:0:b0:2bd:da99:bb8b with SMTP id f18-20020adff992000000b002bdda99bb8bmr2661058wrr.5.1673953600343;
        Tue, 17 Jan 2023 03:06:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d534a000000b00272c0767b4asm28952891wrv.109.2023.01.17.03.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:06:39 -0800 (PST)
Message-ID: <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
Date: Tue, 17 Jan 2023 12:06:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-3-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_030642_365633_65D0DF0E 
X-CRM114-Status: GOOD (  15.26  )
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

On 17/01/2023 11:55, Jagan Teki wrote:
> Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> description and compatible strings recommended by Radxa.
> 
> Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 3d3c59624483..6f276d787e50 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -628,11 +628,11 @@ properties:
>            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
>            - const: rockchip,rk3566
>  
> -      - description: Radxa CM3 Industrial
> +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
>          items:
>            - enum:
> -              - radxa,e25
> -          - const: radxa,cm3i
> +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)

No, it does not match your patch 2/7. It also does not make sense to
duplicate vendor prefix.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
