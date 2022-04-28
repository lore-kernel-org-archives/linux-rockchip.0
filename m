Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CD74C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 06:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krDj9sAax+TSDEk5N3KT77VBTwDUGcXV1EX+J+i04Zs=; b=biwThX3XYQMSn3
	ic2+WYSjYV++GVX6z+9y7jFeqlvj0EHgguEgXq0ls9QuMLZL3ejeY2yEEk/KPvg04uWoD+4p2TKQb
	bQT7RKLcSaVxWA0ox1t6iSsY/w+DikUcid9mt+jFbDsTsvAvM/nEw9SHeqGizilPQkk4BK0UWjlvM
	9ozDeFomHaZsaGunwMCBZxZchQYVxwmCbwFGgBGB6cnzFJn36Y8zmel5sGHMFsp9K7YliS5vpcBxo
	ocRks+9a5uv4kQJt3VGp0LKSywfTZqPy9FjPfP539WrbmhM65DvDo3KdOlkdmiTKt8zop2/zfCw1A
	Zm6ze5xnK+H6iU++0hcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njxik-004v5B-A5; Thu, 28 Apr 2022 06:33:46 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njxiV-004uyB-6K
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 06:33:32 +0000
Received: by mail-ej1-x632.google.com with SMTP id i27so7514869ejd.9
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Apr 2022 23:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
 b=jID8SkbjZdvNaCihTEHL+AMMFHP8eC2RUy+QYH0Cg2l71tQhaM/iWrNs7C5o3qDqxn
 bTv0i80aWbxxhIhvo6sNhYWidErZNyr0Bl/0H3H3TrZU28SyaXVryV8u/yrRMoz2f1iU
 O+WdtZPfP1+TyhT74jiQXnp8JZ1SQiklm9FxMG4QOoFPLPYoDBWtJ72jj9V+PormGVKK
 22OZ/GCpaIrPvsQFU6ORR2C5qmbnmsDRkTPfYDmdhXKnzVpx30c+TMcFv8mxeNvQ6xqe
 FGR9qcp8WNEBl9yAS7LyYOGBXZoQVziny4iH/LB/EpP0ut8Z+PNGfSYBVmUhSAcctIri
 SYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
 b=1Gc54BCun//eVZbtUYlBtN/KB+2bIk7G96rPLhhoMLordwq85U4Xkd4Y57fJ855Df5
 1GbBJ5lA5qPMInOKgnzzibvMA4VbC/wBcyUZOSyYTO/OnJO4jDTOJPuWUo6Q+XSDeqwk
 Dqp2Lsx3fw4pi4qEuaq0SbiXi7Y8nlvMVlBLYqNDqbS1gqyZKHIqUMnKXEl7vZSOKAaU
 R5N2zoUlvyrALmpbvtzxVzcrCwchr9kdPKlsLze6JQrUqPkg7FG8I5Y7iUxdL8ne1gS0
 YsVtCBsvgR0DqCQJShXWm6cKJavURpn0zEyQ4cGB4NFHNj1rmM7vfLyE0D48ZmvuSezb
 CvTA==
X-Gm-Message-State: AOAM532LTs18H0ZynXF0voIf/uXsKvnQJss7Cz+FY4vz7ctuwEqLi8fT
 rBzKKWCLlH0xG9dLl9BA6ovfkw==
X-Google-Smtp-Source: ABdhPJx80NdRMCudydCbEj21NDTT0qWVklkeluJPZzk7stNXaL45hh7VHzsiVKCWV2mZ3JL3lXSYaA==
X-Received: by 2002:a17:907:6d83:b0:6f3:adf4:9817 with SMTP id
 sb3-20020a1709076d8300b006f3adf49817mr12821838ejc.491.1651127607580; 
 Wed, 27 Apr 2022 23:33:27 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 s8-20020aa7cb08000000b0042617ba638csm966354edt.22.2022.04.27.23.33.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Apr 2022 23:33:26 -0700 (PDT)
Message-ID: <fc26c920-2eb1-3324-227d-d347304002d2@linaro.org>
Date: Thu, 28 Apr 2022 08:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 02/11] dt-bindings: soc: grf: add
 pcie30-{phy,pipe}-grf
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_233331_289592_9B43A4EC 
X-CRM114-Status: GOOD (  13.57  )
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

On 26/04/2022 15:21, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 
> ---
> changes in v2:
> - add soc-part to pcie3-phy-grf
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 3be3cfd52f7b..4564ff0bfd7a 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -14,6 +14,9 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - rockchip,rk3568-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-pipe-grf

Order is now messed up.

>                - rockchip,rk3288-sgrf
>                - rockchip,rk3566-pipe-grf
>                - rockchip,rk3568-usb2phy-grf


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
