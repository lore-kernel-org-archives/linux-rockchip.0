Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86F46EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 12:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxRNschPeMfEQ+Sev40ZW4n53g8RvO6z+dLUNtM1mho=; b=dROcJgWmi9v3f3
	ifvObMr0yOQxZKEyj/2pW26OtSNDMokz9CfRWEDvW94kkGEgi+i8Bp+nDJIKgMohRWXuYr/I1eIk2
	LHWid7BvB2ZrPt6RNJdvya818fFgw11fwi9zFJcs3aQYcvLLqtwQGGzJkSj3C9PxnqjHG9sOUbXje
	kd7qDG1ADancaOhf966vU0OOHjC+N6f5MFKI/M4KbATGBwlZa8Zi6M7gmbgYMJoP95HYqu7ErjH5X
	81wnOtN/qIif/yG87MMsmsBKviy0gqGfT9k3VjiYbBFS/75o4eROrRmPXc+2W4P+p7+E4z7cnFOMo
	Y7L5FFJwCfEGdVRYyMGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8Di-00DD3l-26;
	Tue, 27 Jun 2023 12:54:58 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8Df-00DD1y-1H;
	Tue, 27 Jun 2023 12:54:56 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b6994a8ce3so39511611fa.1;
        Tue, 27 Jun 2023 05:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687870493; x=1690462493;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8YE7wSDf9+kixNjK3SC5HyvOe27Psh650QQ7iYwckpg=;
        b=cjChsABwaIiGiXFxDFxskK6sd1HRgZdRbC2eVH6wCVvr1AQrgInU+xKmVehbzpUzCc
         Ikpsh4LS5zq2zS3tYFKlFcY2TqDY0RTPND2efixaWg5ilaALZ06VJeA9KR9EvBgIs/EH
         k+4y3YgEIdJ7wMCGOmrLLOLXprttiBkx4N7vby4VzOg9mg1wvN9j+tCPuXxAggVk2f8I
         vtSeSDVDPP9GWwRwBA06A6OR+T2BEoRiiLnUiVSfUKh1+tgeWdpuFxnsYC5jFKx9kEec
         U+mvIorg2MMU2p14fPMWPuI1d8qRtYzdaOB5lT9aVav8LRJyKFbcbc/8mBYtYiZJoclX
         KGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687870493; x=1690462493;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YE7wSDf9+kixNjK3SC5HyvOe27Psh650QQ7iYwckpg=;
        b=ZOtObHcV2P548aS44hDEvwBohWlJAy5AL2MrebIKYzJEyPQCKVnvolLPMr5OB/mIuM
         CX/+Um6BVeGerMcxWsQR2gf0CyobnYgVVR0ZKeAqX3kPzWv3K7VV/eDlGqNVOn6C5D+i
         YeDkBnJw/UFvzD+jTQMxfij8bbkDqySQncsos+1ohCorctOt3r2NlFQU6A0gCpiU/IgJ
         3g73QKKpurB6hecWqmdA/VPgXw2al1xL7+X3uKo5AOWgkNE9jyjzsSichYnrYugZmd1T
         U6kufKtlekPWBFAT2t+ETGHU5OMfYFWrQECW0xvMw2o/4MMlG4Ro/Pfkti8+CR3OiKxC
         fnXQ==
X-Gm-Message-State: AC+VfDwjleY5ZlZxvo4teE4f6NqVQYKkWmxgtoR9CUmK0KjEPJxQB/Xl
	GP4RMGS5envU9RyLQ+vkX4Q=
X-Google-Smtp-Source: ACHHUZ5gkQTil60/IJCpxMy96qfRyWmGyiGxmtKV0FFui1C5evBEIgoYE3C3DgSY38t9mhHAHX1Ipg==
X-Received: by 2002:a2e:9e4f:0:b0:2b1:b4e9:4c3 with SMTP id g15-20020a2e9e4f000000b002b1b4e904c3mr21755792ljk.2.1687870492431;
        Tue, 27 Jun 2023 05:54:52 -0700 (PDT)
Received: from mobilestation ([109.194.233.142])
        by smtp.gmail.com with ESMTPSA id o10-20020a2e730a000000b002b217532064sm1737956ljc.33.2023.06.27.05.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 05:54:51 -0700 (PDT)
Date: Tue, 27 Jun 2023 15:54:49 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: dwc: rockchip: Add missing
 legacy-interrupt-controller
Message-ID: <6ewtsaw72474pwvdohpapwnmbevivlkmagwnv7r7ggixhhmo6e@fcl74rn2rlqz>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_055455_437077_402BB84F 
X-CRM114-Status: GOOD (  17.76  )
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

On Fri, Jun 16, 2023 at 07:00:20PM +0200, Sebastian Reichel wrote:
> Rockchip RK356x and RK3588 handle legacy interrupts via a ganged
> interrupts. The RK356x DT implements this via a sub-node named
> "legacy-interrupt-controller", just like a couple of other PCIe
> implementations. This adds proper documentation for this and updates
> the example to avoid regressions.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 98e45d2d8dfe..bf81d306cc80 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -67,6 +67,22 @@ properties:
>        - const: legacy
>        - const: err
>  
> +  legacy-interrupt-controller:
> +    description: Interrupt controller node for handling legacy PCI interrupts.
> +    type: object
> +    properties:
> +      "#address-cells":
> +        const: 0
> +
> +      "#interrupt-cells":
> +        const: 1
> +

> +      "interrupt-controller": true

redundant quotes.

> +
> +      interrupts:
> +        items:
> +          - description: combined legacy interrupt

Missing the "additionalProperties" qualifier and the "required"
property.

-Serge(y)

> +
>    msi-map: true
>  
>    num-lanes: true
> @@ -148,6 +164,14 @@ examples:
>              reset-names = "pipe";
>              #address-cells = <3>;
>              #size-cells = <2>;
> +
> +            legacy-interrupt-controller {
> +                interrupt-controller;
> +                #address-cells = <0>;
> +                #interrupt-cells = <1>;
> +                interrupt-parent = <&gic>;
> +                interrupts = <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>;
> +            };
>          };
>      };
>  ...
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
