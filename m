Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD236C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UILpzVt1Q8LvSeRPtfbKeCim/P48zYXONaNMmrr+oIQ=; b=msV83u5byGU5bY
	ZjI3s+VoB4pJ/a/5kTjUbOhXp1OQ6jQTAuGzoAzZBzmrYRQYlTldu1iYJLsM4KQbOVrQms8KS6jCh
	e7WIpFXJApikzlrosRySPU7EkiwVDQuPMBiw7BQNll5i7p17cH/mC7V/eB91ILtTZrhdV2bszAL37
	zTXRikc5r0QfK5awwq8bnfA0RLUhENrhXNDjGW9Wn7JQQSKpDysKweYkG4LEWQ95ulEiph0y5ERyX
	OBUACRaq+5LJGYJ3E7mHEx2h3MDiUsXuGPKe0cl6/6qM7jg6F+6238bP4cF2NjdiVYieeymIIFKzA
	VRNl6VzQVFURjBf7LtzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxdH2-004Lgd-38;
	Tue, 31 Oct 2023 01:10:28 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxdH0-004Lfk-0y;
	Tue, 31 Oct 2023 01:10:27 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5079f9675c6so7773047e87.2;
        Mon, 30 Oct 2023 18:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698714622; x=1699319422; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bqPoT4F9RmVDc8pr+IDxp35lpchtUg1Qh6Xpf92yaO8=;
        b=GC6TMSRuAvV92wc1ZB6JQNazsGyw8rzGSkoxTT0osgUV53WQJQRZrSeJWxi+KKcYn3
         v3meKGTC4vyJLKNLk+SLHR1JnqL4G/Cknv4F6sQSRsWk0eh2Ldsd6pcIW3AxYLxlh3h1
         2NLNxFf121bFMSP6m3Ut98aCBZtui9hvMtUwujzlSExzKtMcyUXdTd5L64eCI8regZy+
         wEtG5H2gv8+CW/Wcs+EwSBNh5GnMXybDgy5i75BSPJPlnhn1RQ+l8nE9KOiYWx3MRld6
         6KidDpcATrsgiFa+7KJXEvojWmuVFKrPAOKj9Pm0nZH0ZGf/KPOyCvpzqpv12FvLw+6n
         6Ryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698714622; x=1699319422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqPoT4F9RmVDc8pr+IDxp35lpchtUg1Qh6Xpf92yaO8=;
        b=OnefzRHF3VthLaVwIrfPxfglaFGBT6X9c0jpIfzx07SdatRKd0cN1gvFcxKf/GolsU
         v2BAmnybCeSNdCV4DJ1iaDhsKHvRuHYeyJFiK8Lhz9Ayirzi8C7OP7eSQJqBINSlKqIE
         4tgvIeHcro5MVAHeoHnO2UfAKbUHLpjfv4BHMDkjVinRQ3x6MvLYRv0WtxtMNuTP73nR
         p9r2r7ZO+mVEBtxUTqCSheO6/Vv3muA1O+uQhSD5ZtDWyW7DsaoHToD2A+roGR1aSyBG
         uos9V09q+Rnr1iqgNI3I61sQyz6bkH4xZqeN9JyV27GY6tDFOBGMv51Yyq2NgI6MTm6r
         nhjw==
X-Gm-Message-State: AOJu0YxVLyO3GEgdh6zMysw+TV9pb1j7riVGlCBmL6L7mQIVsQ+E/9Eq
	mRh+u+xo+5Rm7fAJXdN8Cxg=
X-Google-Smtp-Source: AGHT+IEMqTcP5JE/a5KNIjbcNlQMvWCSkDmRmU6WhDaXBEEHn1kqWQDZgSMKsd/pZYZYOz5BJ3/Rqg==
X-Received: by 2002:a05:6512:124f:b0:500:7fc1:414b with SMTP id fb15-20020a056512124f00b005007fc1414bmr10429837lfb.25.1698714622023;
        Mon, 30 Oct 2023 18:10:22 -0700 (PDT)
Received: from mobilestation ([89.113.151.243])
        by smtp.gmail.com with ESMTPSA id dw24-20020a0565122c9800b004fdde1db756sm26123lfb.26.2023.10.30.18.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 18:10:21 -0700 (PDT)
Date: Tue, 31 Oct 2023 04:10:17 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Niklas Cassel <nks@flawful.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/6] dt-bindings: PCI: dwc: rockchip: Add optional dma
 interrupts
Message-ID: <jxsrtqplojsab4a64erm7ojjdm3kq5ohb5l7vf3lf7gzvx3q3d@ilyu4vg2xeze>
References: <20231027145422.40265-1-nks@flawful.org>
 <20231027145422.40265-3-nks@flawful.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231027145422.40265-3-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_181026_363477_B5170867 
X-CRM114-Status: GOOD (  22.45  )
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

On Fri, Oct 27, 2023 at 04:54:14PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> 
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
> 
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> 
> and snps,dw-pcie.yaml does have the dma interrupts defined, in order to be
> able to use these interrupts, while still making sure 'make CHECK_DTBS=y'
> pass, we need to add these interrupts to rockchip-dw-pcie.yaml.
> 
> These dedicated interrupts for the eDMA are not always wired to all the
> PCIe controllers on the same SoC. In other words, even for a specific
> compatible, e.g. rockchip,rk3588-pcie, these dedicated eDMA interrupts
> may or may not be wired.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 6ca87ff4ae20..7ad6e1283784 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -63,6 +63,7 @@ properties:
>        - const: pipe
>  
>    interrupts:
> +    minItems: 5
>      items:
>        - description:
>            Combined system interrupt, which is used to signal the following
> @@ -86,14 +87,31 @@ properties:
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

No. As you said yourself here
https://lore.kernel.org/linux-pci/ZTl1ZsHvk3DDHWsm@x1-carbon/
and in the response to my last message in v2, which for some reason
hasn't got to the lore archive:

On Fri, Oct 27, 2023 at 05:51:14PM +0200, Niklas Cassel wrote:
> However, e.g. rk3568 only has one channel for reads and one for writes.
> (Now this SoC doesn't have dedicated IRQs for the eDMA, but let's pretend
> that it did.)
> 
> So for rk3568, it would then instead be:
> dma0: wr0
> dma1: rd0
> dma2: <unused>
> dma3: <unused>

rk3568 doesn't have IRQs supplied in a normal way, as separate
signals.  Instead they are combined in the 'sys' IRQ. So you should
define the IRQs constraint being device-specific by using for example
the "allOf: if-else" pattern.

-Serge(y)

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
