Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD7DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Oct 2023 17:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYE8mDPu7rdaTNjyJPUHSWRIT1yIS8YlCS8kR/lkhO8=; b=K6QxIxcI3D/+jf
	jjqXO8dL4PSV2xMgGlG4rM6TbOpAh5GKXHLbnUcZ/YUZcx9OxcIEGOgQPjwozvLjO228mdnbA9EzI
	p7Ctu01o5EHlsyZl/fya4l+SJmdSRVfuXv/GDUs0QuQuHAdHVxMZHaUw+/I5UhicaeSsq88bildGq
	ICIfr708ORoEM6/aQho0aVXJRLWr1iFouWgZXSRHwc/9xob7fS76VBV66Tx6NiQLxOiT0XSaMCoG1
	ZTxaxABQI2Q0qPYRNu+ybumYDGKWeqH3p5H9ElHgbnvkPJ7QReb29t5YIy2sbmVMyMOAVne8SXQO1
	v2jIPMGc8fOOqsz6Akhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxWFQ-003mna-16;
	Mon, 30 Oct 2023 17:40:20 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxWFM-003mmW-2P;
	Mon, 30 Oct 2023 17:40:18 +0000
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6cd0963c61cso2785404a34.0;
        Mon, 30 Oct 2023 10:40:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698687614; x=1699292414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+u4tebm6nXGAEfm0k7+Viez2ebHLsDXcjiQ9FdQg8w=;
        b=g+RjI23KvEGB0HoiHpGp63w3qYcjHOrRUath+Xn+1y8kJp6ezhYt6ImDlOoqbJgQt7
         D5KUophJgJQZVLph60cQAKr2aXI1mmAlzA9WcPk1eSlUWxntAWa6OTelIkclMw5GGJuV
         Fafkp391i8HDiU5VKW+ip6BFH6bEX61LPm8TZr1vE+ESO2H9VCz5f26LnihHU+rs7Xlf
         H2QvGd9046rZnAvgdNFyiI6vyYV8wWU0ypA3QM1JF3oTa1z2ElpdPA9fa2wegOWRRyzY
         GVM5Bv2Y1vKjIikq1hIdFkXhMvzae3ukVb2FpSiPPKsIgBZ5+G5eIxfObMJLOSS2Z5bm
         Cs2g==
X-Gm-Message-State: AOJu0Yxt8Ma4kCqG3YRhAjyDku2l7XJdAQRsB1QI/YPydvtn7YVYtiCa
	eF2XRRApuEEMbIOdFgNMYg==
X-Google-Smtp-Source: AGHT+IEg9yMvFNsDRTpR+Wsj9VVwm+fyrLBK4gTm+3/JpU6q7gH/e4XhpQiqhlM0nvHpGcl8T0bKZA==
X-Received: by 2002:a05:6830:4ac:b0:6ce:25a2:67cf with SMTP id l12-20020a05683004ac00b006ce25a267cfmr8966609otd.26.1698687614564;
        Mon, 30 Oct 2023 10:40:14 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id w20-20020a056830411400b006b8c87551e8sm1481131ott.35.2023.10.30.10.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 10:40:13 -0700 (PDT)
Received: (nullmailer pid 1560135 invoked by uid 1000);
	Mon, 30 Oct 2023 17:40:12 -0000
Date: Mon, 30 Oct 2023 12:40:12 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Damien Le Moal <dlemoal@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Niklas Cassel <niklas.cassel@wdc.com>, Simon Xue <xxm@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, Serge Semin <fancer.lancer@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: PCI: dwc: rockchip: Add optional dma
 interrupts
Message-ID: <169868761168.1560075.5521220750018058491.robh@kernel.org>
References: <20231027145422.40265-1-nks@flawful.org>
 <20231027145422.40265-3-nks@flawful.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231027145422.40265-3-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_104016_786781_553A8BD3 
X-CRM114-Status: GOOD (  14.27  )
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


On Fri, 27 Oct 2023 16:54:14 +0200, Niklas Cassel wrote:
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

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
