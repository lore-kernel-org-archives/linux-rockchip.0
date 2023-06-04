Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A80DCC77B73
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jun 2023 18:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB0dbzY16QrRIaVltHDMS3aFYvFF4ijHqfTwKFWuPgg=; b=Epvtm16RL6fx3l
	jStQ9XZRtT8NSrVThvIloRVCNIXl9cR9s6uNUgK6nbwmVwxDIc3LuU1f7+lqrH8MFcg4f4pZu++/0
	PsuJHn17V+tVJnXd/u+1Ntstq9chw9ulemdKLYsxc0OVeC+KpUl3Taa+3+eOAm2FLaG2xIq04L4iW
	gKiKa3AdN9fgWGmkCQGn7xZ4y+gdSzNZQ8pLaZxMgiCr5H2HRJici0bY9cewZFdF4ktmLw255E5Lw
	/lwya4L/882cbMI24lF//2pLh7I+WBLRKAp49HGCTLau5KD3o/TORIoFVOYQ6iapfc7YfZqfGwHm/
	AOyJRTLqNYoEn/liaomA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5swK-00Cokv-34;
	Sun, 04 Jun 2023 18:58:56 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5swH-00Cojv-1O;
	Sun, 04 Jun 2023 18:58:54 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f6255ad8aeso636490e87.2;
        Sun, 04 Jun 2023 11:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685905131; x=1688497131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0uLDA7fQ1eFEBxyVgNGzB8pTMv55u419IbeoR7nu4AQ=;
        b=MuCQKaUvVjjMXgniF8sNia9BsE7FRRYHz4Pk2pNq+aYgc4wvJ8CTRJGdo+nbfVftES
         0hxG70Lob7NRmTRU/wZ7rFKxlOHaf+bLZfEXsEHXlPGGnwIjbHOxuqPlb+PCb1k9uFZB
         L067AQi559bjdLcW3ShTD9ijZydSFUoyLMjtjHd+0mubagCLzd4hAEVcMoWANSfs0b/0
         +W0q6iQxWYUZkysfY/GD86Xy8xsPmbE8VxSSF5ZMDRLJazBN7VWS/j7DZ7q1eciJgMeD
         e38B0pNnrSxkLEjE7kMJYpSX1Eadx7Fb8cWNM3+6zrihsL6oC318QsCO7fOK365jKiHb
         9UOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685905131; x=1688497131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uLDA7fQ1eFEBxyVgNGzB8pTMv55u419IbeoR7nu4AQ=;
        b=HMGoMkqgT1xFoG6AUk2WMMlr/g4EazFD5U6GwRxR/YOtGBZ1KK12TIwp1kRmhuz8J/
         BwRhfTOebNimjzCF/lC3On9wVdbKOOREL+SYlDxUbOAfwK8bAjCYfeSqRsHPoKhtEeRS
         bsMoqk/JDKv3+2mHMVQUnarDOqas2iTvsQfe3HynT9XyszuAF6HbxdQ78MRogayR/68o
         yoW8BO7ikjj7b3c+vEvQ/lq6czXh0pn3jmDyjy2XT/skn383za9jHfUylYt4cPcffjAv
         L+v/mNyuYhN8NHq6M5jGbd3VP09ZtM5PW+Ic46+qqQ0d8yn2STxyLrrTZ4F16+GAM9EX
         sdpQ==
X-Gm-Message-State: AC+VfDxz4egZMAp2C+hekrBxSzBE3z7VMk3otiAw2t03HzeR47lp9rZx
	BjdaKIGwJOfYbQZes5jqB3Ynn/IQ8C4=
X-Google-Smtp-Source: ACHHUZ5EkaqP6x5GqtWx1BZ2gJzmxHf/jE8v3IHyZU6SL7aUosESZU4nC8UiF+0Xk6nOGWSAa+UFKA==
X-Received: by 2002:ac2:5eca:0:b0:4f3:a0f5:92e5 with SMTP id d10-20020ac25eca000000b004f3a0f592e5mr3904178lfq.31.1685905130670;
        Sun, 04 Jun 2023 11:58:50 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id u9-20020a056512040900b004eb0dcc52ddsm858329lfk.41.2023.06.04.11.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 11:58:49 -0700 (PDT)
Date: Sun, 4 Jun 2023 21:58:47 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/6] dt-bindings: ata: ahci: add RK3588 AHCI controller
Message-ID: <20230604185847.r23v53eetd53okyg@mobilestation>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
 <20230522173423.64691-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522173423.64691-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_115853_477319_57444233 
X-CRM114-Status: GOOD (  17.66  )
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

On Mon, May 22, 2023 at 07:34:19PM +0200, Sebastian Reichel wrote:
> Just like RK3568, the RK3588 has a DWC based AHCI controller.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml  | 6 ++++--
>  2 files changed, 10 insertions(+), 4 deletions(-)
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
>          - description: SATA Ports reference clock
>            const: ref

This part looks good but as I mentioned in my comment to the previous
patchset revision these are generic clocks. Extending the common
schema could be done in a framework of a preparation patch with
the justification described in my comment back then.

>  
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> index 5afa4b57ce20..c6a0d6c8b62c 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -23,9 +23,11 @@ properties:
>          const: snps,dwc-ahci
>        - description: SPEAr1340 AHCI SATA device
>          const: snps,spear-ahci

> -      - description: Rockhip RK3568 AHCI controller
> +      - description: Rockhip AHCI controller
>          items:
> -          - const: rockchip,rk3568-dwc-ahci
> +          - enum:
> +              - rockchip,rk3568-dwc-ahci
> +              - rockchip,rk3588-dwc-ahci

Regarding this part. I would suggest to just create a separate
DT-schema instead of extending the generic one. See my comment to the
next patch in the series and my suggestion posted in a comment to
the previous patchset revision.

-Serge(y)

>            - const: snps,dwc-ahci
>  
>  patternProperties:
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
