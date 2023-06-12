Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A20B8C7EE25
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPb6vTF5uPWYvhqN4qUNeKEMup7GVEWw7rsAQEUbmWs=; b=pROcVS/nN2DX7A
	TGPXg6mf+U2uFRTLzwqDZGo3+E8ysPdJhXJhoykhaCQCStOo74iIVPqLo21DE4VpOhGYXKB2hy9Sm
	SgWQfxTvWKmmplmTkmHstAvPsF3adYdvGs9WojgcF3mmndM8V1jHo+3DbZe7Onnt46eg+JU9W/Fg4
	5pTYG4KS/iNGVdu3Fy6VL7wKgbkCOARy5tua+6UOzJlQZTiNBR8Mi9UU6Z5fWEPxMk+QTuY0QkNZ+
	u5/GPUt2J/WAcEchZiFBBh/4OZavFFc/9usFPZGhH9s2995WNur6M0ODZoApWLeI7ShwPgv6epx1/
	0k/yas31q7U1/zgcu91g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ckn-0034uC-1x;
	Mon, 12 Jun 2023 08:18:21 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ckl-0034sR-00
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 08:18:20 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9788554a8c9so717067866b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 01:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=vexVIZ0dp8B8C1j+Lo+Kidr/5DKSmQtsmBdj1pB3rMiyA8LG85cEbYhHb7camdfB1U
         6KGQWKvrlf4K5+GjgDi/KVqhaUHphTdkJLC0/c2v0l4CHGTCU/Pl3xPYdFVfOuMUfG9L
         EqXwZySBXtkw15EvmTds6DDbx2TkchmJ02hhmbUaEDsjmdwaDxTFLD4Z9W1UoJBnJ9Y0
         W5vm6i+T+iwhRdNWwUioXKBypP2lS98E8eRLUgciktT6YCX0QXHfrGATZNXZb8lHZEV7
         y2YuX2Qek1ZrFguNQpg4KT8DQGzTJDns7LwpFARWGgHqNQI7MZFYSjF6rcMCBZuxMOHm
         S/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=NFSnCf9GzcTPsu4MDDrdfuXZ8MC0V1TbTLZMlYRt1C7uBUyI2iC2i2UCisJFjbC//8
         O4Bvgk78FOK6kLfXSpXWfNO0+MIA3W2t8HbzhJ0jaN6f3b/mLnoOCT6wYfr7iPtVwjN7
         dYBqpJGmij6AxmdSUGezo7vLXZDcDroHa+O8yuIf3BdrjavNKf20i+1HHc3+nzpq/B2b
         yx18ybYr0ptTRkMuZlwhUrjzLm2Inl0oOkbnSF8q14OZTkoUiNtk8jrsPY54ZIHH0/st
         +r6dkQqMkTWDhXSmAZ5rfaQBH8wPXUfmnzmTh9myGiTdWmuvhWR+IjRPYn/OuBPSx+Na
         DlRQ==
X-Gm-Message-State: AC+VfDy9ogmSenYMx5vkAzaYHbNgUzm29QOmGkej009Lqva1hN4Rj0JZ
	pMPecUmK+ERTPBS4t5hhXHuGJQ==
X-Google-Smtp-Source: ACHHUZ71VvzowsyBKiDCq7DWYBS4cDksMCv4kT0NQarqHtz70SmAMxEqCnkYbWF+lAwBlVADz6Je8w==
X-Received: by 2002:a17:907:6288:b0:973:903c:35a4 with SMTP id nd8-20020a170907628800b00973903c35a4mr10130123ejc.65.1686557895276;
        Mon, 12 Jun 2023 01:18:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ks27-20020a170906f85b00b00977eec5bb2csm4821357ejb.156.2023.06.12.01.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:18:14 -0700 (PDT)
Message-ID: <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
Date: Mon, 12 Jun 2023 10:18:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
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
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_011819_038786_A40EF6E0 
X-CRM114-Status: GOOD (  13.00  )
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
> Add PHY transmit and receive clocks as described by the
> DW SATA AHCI HW manual.
> 
> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..34c5bf65b02d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -48,6 +48,10 @@ properties:
>            const: pmalive
>          - description: RxOOB detection clock
>            const: rxoob
> +        - description: PHY Transmit Clock
> +          const: asic
> +        - description: PHY Receive Clock
> +          const: rbc

Conor's comment was not resolved. Adding entries in the middle breaks
existing users and commit msg does not explain this.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
