Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D89A1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Nov 2022 12:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmGNfW+j3PGoFi8zqIHhnIpe5jtNXuxr3C0PN3ExjD0=; b=2e34CIqZ28qIMD
	pBrlHLIUubIZWPj1LAnzJWQCgM2VPb91VhD8HWUmDoSqPcnoJI7Oua+8ARGyP7bP+l0TVDFYoJdhW
	evns+JvGRyni6KZ101Tjs4EoFxW+zWUoAgqyijUY8P+h3/zo6trrXO7nVYJtcjs/2q1OGKY/APXy6
	/7mCOfRVv8H1jfqW6IjaEr8Txh7knqXRqExCeA1B7kGS1tCGPhY/Q4xDeCdvlCPudmXRw5yIa9lfJ
	fFqVbWNmcXb/+DZMpHRSW1voHv77ZPoijP2e7zQalbgkqZhdZh2vTKt5abxBmTOrn4vVAH6im4/J5
	+EfSlK+xEBFGpibYUY4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oskII-00DPwh-7F; Wed, 09 Nov 2022 12:35:02 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oskI9-00DPut-JG
	for linux-rockchip@lists.infradead.org; Wed, 09 Nov 2022 12:34:55 +0000
Received: by mail-pj1-x102b.google.com with SMTP id d13-20020a17090a3b0d00b00213519dfe4aso1757827pjc.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Nov 2022 04:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=twQZkMX8iLp4iWdpt/IOZvrdMMyf9kmvm74HwTx7wcw=;
        b=phZH7t/rwe+yvS8O4qEZe+boF0ujwjw+sNIg3oSaH+c/Zq5Rm5p1N/hQi6W0XBJ6X8
         q+Oqnl6f/9S3vhQauqgKXrrtMM63Eb00tgoD2iREZnylaS+KoTKMtvZRo6j37dG8e69y
         gS44dMNdg/riFLO2b/1AyxvvztZSWKj0fncTpZD0fRittg/PSN2Lwrl+dtXBF6doDbwT
         AxjcOm9Yxol22d6sQpyT1+Zi7c8nrqNwXZg//uiTe16f4FY/ly0QcAG1pFMvv9bELGom
         Z1j0/0UPFiDnqXXyDXZ1qBuJ1eCZ/WzuuxxlwMq2f7cCw9B2u6CH5p+2HbE0LNUVOSHp
         FCWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=twQZkMX8iLp4iWdpt/IOZvrdMMyf9kmvm74HwTx7wcw=;
        b=wb7XmEjWCYb0OQsE4uiFbIKDmcrMrGwzLd5GEGJ2h37EcLpktXB8+hD10fLrlcmnaZ
         eBy5h8ZqSdBag2tX3TEQTscfAjtGzrsla3rYJubZ3vzXCdASJ5JkWZtGf4V7IfnvkVJA
         /RKCxyeIX2QRPMN6dkT9k291GpZt8yxy4Bgkjx0OBu9OnhE2G8KuwDjJq42xvNRH22FI
         J1nKuj4hDnoNwYqAIW29hb7TPzGSaEvpTaJQtZwtsRSrZ0Hyz+7cvdaEEedaK/SqG7j9
         g5pa9xOb+stEAQQry0Zt5hkCLlQsnSDco3yE2yI0tVCjV1NJApCSszkMEihg722WSW6b
         AwYA==
X-Gm-Message-State: ACrzQf2XUkk/rUmQ9uDrPuGDr7/+eaE4tiimeGhpqSczw1EzeOas1H1F
	Q1pcDvjdE6tNTgnmX5O8Ba+vk2P7kaFe8L4ElWD7Ag==
X-Google-Smtp-Source: AMsMyM7AyPsAODWVfKIktvX6iARVh9LUhQxRZAt/mD97cpCfKPJpsMk5NXfi3ysBEd5tSHabMTMY8CW8Y8EzKRqcoEk=
X-Received: by 2002:a17:903:100c:b0:186:63a1:3b5d with SMTP id
 a12-20020a170903100c00b0018663a13b5dmr61928822plb.148.1667997292880; Wed, 09
 Nov 2022 04:34:52 -0800 (PST)
MIME-Version: 1.0
References: <20221107173310.60503-1-sebastian.reichel@collabora.com>
In-Reply-To: <20221107173310.60503-1-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Nov 2022 13:34:15 +0100
Message-ID: <CAPDyKFrwgu2zdju72d7ftKDn3UJHsthmfav9zf3FQjs-aMgz-g@mail.gmail.com>
Subject: Re: [PATCHv2 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jisheng Zhang <jszhang@kernel.org>, 
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_043453_654822_06B700F2 
X-CRM114-Status: GOOD (  13.79  )
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

On Mon, 7 Nov 2022 at 18:33, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Properly describe reset related properties in the binding.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021171654.87071-1-sebastian.reichel@collabora.com/
>  * dropped minItems (Krzysztof Kozlowski)
>  * reset-names are not copy pasted and intentionally the same as
>    the clock-names. DT looks like this:
>
>    clocks = <&cru CCLK_EMMC>, <&cru HCLK_EMMC>,
>             <&cru ACLK_EMMC>, <&cru BCLK_EMMC>,
>             <&cru TMCLK_EMMC>;
>    clock-names = "core", "bus", "axi", "block", "timer";
>    resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
>             <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
>             <&cru SRST_T_EMMC>;
>    reset-names = "core", "bus", "axi", "block", "timer";
> ---
>  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 71f8e726d641..51ba44cad842 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -45,6 +45,17 @@ properties:
>        - const: block
>        - const: timer
>
> +  resets:
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
>    rockchip,txclk-tapnum:
>      description: Specify the number of delay for tx sampling.
>      $ref: /schemas/types.yaml#/definitions/uint8
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
