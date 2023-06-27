Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03776EB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 13:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y05DAgN4xRVGiWJq8vTYrFCzOKFFdSPXjHn5IrjN/h4=; b=aPCE6Mx8UzYkh0
	TvMsmPVPjyE5FnZRNZnB1+YxIxhE3zImP2eSeZh91YL7JtB3M/epo7wzaZJIgss18BhBqofoQYIyi
	42r52ndU7PjgnEODNHOHyF/fYwauUJXfLNMHKk1TBx8sLskbFUC4KFOZIwZITLoQHPrSKQ+YSB1Rq
	xEKkItlA54QIIBr3mRzhV3VGZnf2P+FruQrZeyIwZ+A7dK2ZolV65AxDcGQiu72MhL2g4ynslU8gj
	jckpBXkV13eN7QEoRmXhF5+wcKYiqN9U+Bzk9q6P5kB2ekFT4yAHcZf46A4ixe/AQwga7ULAVoH3p
	PkAPf/p5cWZ6T0Hk0v9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8XV-00DFtb-1j;
	Tue, 27 Jun 2023 13:15:25 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE8XS-00DFsi-2i;
	Tue, 27 Jun 2023 13:15:24 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fb77f21c63so2849491e87.2;
        Tue, 27 Jun 2023 06:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687871720; x=1690463720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DMNoJT8hPvOgickLb3tIrjnQjsjqpdNLJafYlSM3WJ0=;
        b=ZIMXw14K7xllAD+oUnVq1yykhWL0q5zGOzs4VkC4Miq8z4QBlOIeoaIm7ti062ThTW
         bH1CaNACe+KaqFdnP1d0+YGDgfP3OjlabEqH8lkBpKK1b4igcHPKWCAG0x65EUzdlbwH
         cPSAL+ns/a82HQe7qbDuiSJfnHbheEFA104OFFZhjX0yWUs32Nq0W/B0f9gyzPIFzDPz
         N5t59nCm08mt2QpUDBZnA1JjayMPE06gDaaQ2L7EK0HLv3qoor6kARN4qhL+rq/rSM2S
         FgDjuLlBAfAl+LixmZfAgK5jYRI4qWpgHSsmBVU4/SkNU0kXjLCvbACVvBEDLXzAMU4p
         qqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687871720; x=1690463720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DMNoJT8hPvOgickLb3tIrjnQjsjqpdNLJafYlSM3WJ0=;
        b=LA9fX5GQYaIz5EGhp75l4voiokW97VssxigG0OL2l8yYxMBO4A0pyZe7663BYOI2c1
         tHnAOAJLfxk3EbH3rLsaXSq+tBcKQn1Go4zVULwWEN+1d5Ki+QPAZl9OI6UATHDhEzre
         1rj8Jcj+QWwznew41rY9NrrNsWr9ZNwu85TXQoUG7ZSQMUQbes9E87fsNPtAzo7QVrHT
         ftjhpMg+nVSlBE4XY/KqN4rfhtX3wn2Rm7+pFuHo4blT9MBt2mDDa206r7gF8JenoyQK
         7Uo0nw+JkwJBA79mMAnTTa0+DtklmOgpc1soeP3r5B0hOdPojePGH7qtEM/k6tSEidb0
         NFXg==
X-Gm-Message-State: AC+VfDzlvdD7j8rVk03jTczw54gjiun3ePVEh0Myxf+CB1txcS/c3em2
	zDlM4uzBu6ubN0+kcOri9Tk=
X-Google-Smtp-Source: ACHHUZ5icUHSPxZrlGwMtUuxnOzym9Z9UIWELwuRvJ5tht9IILNV7rwhC+H4HuHjIPp9l83Vv+wsJg==
X-Received: by 2002:a19:5053:0:b0:4f9:5519:78b8 with SMTP id z19-20020a195053000000b004f9551978b8mr12643966lfj.63.1687871720124;
        Tue, 27 Jun 2023 06:15:20 -0700 (PDT)
Received: from mobilestation ([109.194.233.142])
        by smtp.gmail.com with ESMTPSA id b2-20020ac247e2000000b004fb881e5c23sm147435lfp.47.2023.06.27.06.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 06:15:19 -0700 (PDT)
Date: Tue, 27 Jun 2023 16:15:12 +0300
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
Subject: Re: [PATCH v1 3/4] dt-bindings: PCI: dwc: rockchip: Update for RK3588
Message-ID: <tcwgwwyx5lvoowp2bxkaemfp7eefbvmfzwprcml7wmtrwadxtm@et2ofo64cru2>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_061522_916109_657381D7 
X-CRM114-Status: GOOD (  16.14  )
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

On Fri, Jun 16, 2023 at 07:00:21PM +0200, Sebastian Reichel wrote:
> The PCIe 2.0 controllers on RK3588 need one additional clock,
> one additional reset line and one for ranges entry.

Just a nitpick: it would be perfect to have these new items evaluated
compatible-string conditionally. Anyway:

Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml           | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index bf81d306cc80..7897af0ec297 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -41,20 +41,24 @@ properties:
>        - const: config
>  
>    clocks:
> +    minItems: 5
>      items:
>        - description: AHB clock for PCIe master
>        - description: AHB clock for PCIe slave
>        - description: AHB clock for PCIe dbi
>        - description: APB clock for PCIe
>        - description: Auxiliary clock for PCIe
> +      - description: PIPE clock
>  
>    clock-names:
> +    minItems: 5
>      items:
>        - const: aclk_mst
>        - const: aclk_slv
>        - const: aclk_dbi
>        - const: pclk
>        - const: aux
> +      - const: pipe
>  
>    interrupts:
>      maxItems: 5
> @@ -97,13 +101,19 @@ properties:
>      maxItems: 1
>  
>    ranges:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    reset-names:
> -    const: pipe
> +    oneOf:
> +      - const: pipe
> +      - items:
> +          - const: pwr
> +          - const: pipe
>  
>    vpcie3v3-supply: true
>  
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
