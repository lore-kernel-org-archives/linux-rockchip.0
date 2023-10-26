Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A32BDC25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 14:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHNTNSB2bwMCIpowbrKJsOMzzQ3HJCBoA3MqtByWB6Q=; b=X4T8cZe05UIzio
	6t0gDnsjbM8zDP/bUcAlVrBqFzW1a1JL8RDUDLoFHgBCvaqk/L2tzJ8Ct9XaS40ESpN9+SdpP+01z
	LGUFQ9XvVSI+c5XS6u5HraDHirAQ28HQ/N2VTsZ0uvWmSbcksEEV3IhtZ+Yi2MRVfA0l8ePwmhFzR
	HFPitegWI0U4epYfytWsqU0ZCW9wJ/LMAYO9/hdK4zYszVZMnIlJeUF8zrqmY7h1L5Xa5h4QIVqV1
	xxf34G50ISp7qWW4hVq4cRdvkARA/MCOHrjTtS1R5IJpoOBY1VPv2O7sD/zAa/KIV1rhQnXw7xxQi
	C0J+1obipmniB/bjGOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Px-00EhEr-0f;
	Thu, 26 Oct 2023 14:33:01 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Pl-00Eh7y-0W;
	Thu, 26 Oct 2023 14:32:52 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-508126afb9bso1349026e87.0;
        Thu, 26 Oct 2023 07:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698330767; x=1698935567; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nHmRoq0ETjVN1za9BajG5M61oGOFzDIRHNAMG5IaVTQ=;
        b=MG5aLdIgE3E9fzQMQzw+hvQ6FOnVWZc6O/znVg6yF53RwUwdxAEahuGCFVtYi+e0HM
         iFYOVer3KDWnKKa1IIwJwmgJ1W+MxLgdQB6qYubHqDlNUE6qt/YySzj+mRJlBysT1XtY
         HA0Kl1XXb3PuPqMJmsguFT3htXnmpZ6SO/67ePO0wTz001V9ygUSQ/FMcgpttR1fDm7h
         wg/5HkJZZaCx1P8eyS0fl6XF0GqGaVLXBDb2bG7YhYEIsdbHsEGpgDnNGqQHHSelxMky
         PraDeJ4rrxZsPMQQu8D5gBeT8qHiDyQhYYoJMT4wLQrzCYbaDrlTJySdCbxVF2Vx8t0L
         JwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330767; x=1698935567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nHmRoq0ETjVN1za9BajG5M61oGOFzDIRHNAMG5IaVTQ=;
        b=PvrYFWZ0Gi3LWyAe2mSVeZ0dTe4QAn/OpbCm6Ma5cVLenZqR/uF64x5+UTUBQZ7UAN
         1hxHNXwCoWrq2UCc38GJDVBnS+KRIInlkpOwgLENbtopu7d+CoffAPkl4UIBCSzlqWpt
         YPfmMEQAdJIBfM6gqmRLXY1W9PgSzelGxIZ8J1/n4zHKEMhNtKoHHq5DXAMQN3JxesWI
         /eUAqGABYG5GhfYDSBa3uRagblNdK2u+FEZvOrZL8g6FTr8gE6IgZhFs2q+46LSJOqfb
         67vExRv1qCTuQXyS9ZCb/bncRm22wqjFi3o9adxvlvNgvyc6gsMpXibATiFkHv2Sk4+c
         EhQQ==
X-Gm-Message-State: AOJu0YztJfJNvnAxKMg9dj8sUWpbBeX0q8q52leB7ens1zuI4e7MfFts
	hLYAQmUuFBPn1sIN41jh7UM=
X-Google-Smtp-Source: AGHT+IHSgnN4Bgh64erDu9jYfseLN/aERhHKcZUhV4w5LUCCdNcCijf729M77+heSOLOkoWu93Tpgw==
X-Received: by 2002:ac2:51a3:0:b0:507:9618:d446 with SMTP id f3-20020ac251a3000000b005079618d446mr12199193lfk.61.1698330767273;
        Thu, 26 Oct 2023 07:32:47 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id k15-20020ac2456f000000b005008c11ca6dsm3019090lfm.184.2023.10.26.07.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:32:46 -0700 (PDT)
Date: Thu, 26 Oct 2023 17:32:44 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: dwc: rockchip: Add dma
 properties
Message-ID: <4tzz7e5mznunyar6d675lzn4jdshqvik4flyronb7sjwhc4deh@qwikilvdyosc>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-4-nks@flawful.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024151014.240695-4-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_073249_209779_B2F3689A 
X-CRM114-Status: GOOD (  18.59  )
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

On Tue, Oct 24, 2023 at 05:10:10PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> 
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
> 
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> 
> and snps,dw-pcie.yaml does have the dma properties defined, in order to be
> able to use these properties, while still making sure 'make CHECK_DTBS=y'
> pass, we need to add these properties to rockchip-dw-pcie.yaml.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 229f8608c535..633f8e0e884f 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -35,6 +35,7 @@ properties:
>        - description: Rockchip designed configuration registers
>        - description: Config registers
>        - description: iATU registers
> +      - description: eDMA registers
>  
>    reg-names:
>      minItems: 3
> @@ -43,6 +44,7 @@ properties:
>        - const: apb
>        - const: config
>        - const: atu
> +      - const: dma
>  
>    clocks:
>      minItems: 5
> @@ -65,6 +67,7 @@ properties:
>        - const: pipe
>  
>    interrupts:
> +    minItems: 5
>      items:
>        - description:
>            Combined system interrupt, which is used to signal the following
> @@ -88,14 +91,31 @@ properties:
>            interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
>            tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
>            nf_err_rx, f_err_rx, radm_qoverflow

> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.

They aren't identical. Some IRQs indicate events on the write eDMA
channels, some - read eDMA channels. The respective channel ID would
be also useful to have in the description.

-Serge(y)

>  
>    interrupt-names:
> +    minItems: 5
>      items:
>        - const: sys
>        - const: pmc
>        - const: msg
>        - const: legacy
>        - const: err
> +      - const: dma0
> +      - const: dma1
> +      - const: dma2
> +      - const: dma3
>  
>    legacy-interrupt-controller:
>      description: Interrupt controller node for handling legacy PCI interrupts.
> -- 
> 2.41.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
