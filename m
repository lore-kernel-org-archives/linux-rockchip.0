Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8018C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:13:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B35A64DEC
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:13:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B35A64DEC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WD7ktVS3G58gk59KJPezdnoFzIq6MVM3/llxb8NnK7g=; b=i2UIxCGJ2ien/iTpmwL5Xojz0
	AD5ISp2f1PcC//9VG3Yu8K/FJISdX8bz3nWalBV4bevYZUqH5TN1sNGpeYnrApq1MmAr+cvQrnTW9
	taeNPDPk5FkL4P+exittz7H0kdr2nayY+pdAN3f0spJeeAH00abyCxeRxjwdpp0/PVtw6CJiCnXTV
	dDuOYKcm5c2L/t0tnqotoQp3DZXKlD49AZzFyUPdWW81rCitO/1Pziq5+NTh4lVOWgFIpPoEKTUKZ
	IC2AcHHQNT4w3NpSvF0oNN0TykrLibmKjgOTwbMx2sWs6AeFwPzznsdZsSuLxM5i0hXSrzNfRmi0w
	HgMNf0bYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNFs3-007WSB-2L; Fri, 19 Mar 2021 14:12:59 +0000
Received: from mail-vs1-xe35.google.com ([2607:f8b0:4864:20::e35])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNFrz-007WRV-AW
 for linux-rockchip@lists.infradead.org; Fri, 19 Mar 2021 14:12:57 +0000
Received: by mail-vs1-xe35.google.com with SMTP id l22so3556698vsr.13
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Mar 2021 07:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rhtJ+/KMkr9j4F5l7xToUE92auUuaZKXFXYtoFbzKi8=;
 b=p7spQuRg1ZgSy6xXjHIhASGtcj5pHDWKmuEjqbTuyd2ab5B1LRC1hI5nshuiyBxvzP
 2KjnykBqVgutT9bhh/25h8ldA8uUsvxNRDkpQOIRmX5+QdfgAVFEMJ9eefG4ow2IN/KU
 oK4teq7scaPduKErOQRSk9HffPNZanPkoNlWxeC6nDW1PriQLgu/fSPrA+xNc0uBpN6/
 Ar2IS7WI+Cnl0pCSaJOSmVriUT6Pi0UpVB8TH73IdWqLOcJgHATliBlXxLIIgSRl1CiS
 S+PM9GC+W+KafUfrXglYpTtlBDSoOoYuew0/3xPTw/engvhuCr2n3rSoFuQhMtAvl4nc
 sK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rhtJ+/KMkr9j4F5l7xToUE92auUuaZKXFXYtoFbzKi8=;
 b=mRjRieSKcmA5fqcvxMwQdkzQ4wUOw0Qbe29My+eyRyI/vB08wGjTc63p24WNGSSSKn
 UpWdcdBKAOmrek9qVMzKVWNRo5QMnOoV0AKawbMi7Jn9DEQtkUcFxEe2kb+Rdc39ypRc
 u7O/wfwNd2YRJGGP274/3VolGO4a2HDrXk/ljbhaBhrhbHry3HGbDX4qHup1bfg2TRkP
 IqOdp7BEVaRGH0ESUagt3EkvoPePptkq4i5FpbFQvMNpi/N2V7ebCRzDQ9Ur7ISDYMuM
 cQ9eN/HnPQGMF4pjf+iKAD6AnDFDXgtkoyUsa5XlMYhLEwtJMQbuTXA4fi7npyxoK1f+
 qvDw==
X-Gm-Message-State: AOAM531o9I8dWwq1/VHmrwaDImVpYklVFgOvHKk0G+7xsDzmqQBQdZjh
 0mxHvQ3VnO1Ez885IpbldpQyG9KkSdSNmlh1kHmRhA==
X-Google-Smtp-Source: ABdhPJzis8HlXL3zAqtJ2aBs7zLA8bDwN8cVmClyr3n/W4dECta2ibESJFO+yC/KmKAcg6A4t8jqptidBW25Oo2rPO4=
X-Received: by 2002:a67:77c1:: with SMTP id s184mr2813086vsc.55.1616163173959; 
 Fri, 19 Mar 2021 07:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <1615879102-45919-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1615879102-45919-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 19 Mar 2021 15:12:16 +0100
Message-ID: <CAPDyKFou+0=zh-sqOa3DwhQr-iWLjPoP7tjVHDFp87+wVhCr8Q@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Convert to
 yaml file
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, DTML <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_141255_422063_306062F0 
X-CRM114-Status: GOOD (  22.47  )
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

On Tue, 16 Mar 2021 at 08:18, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> This patch converts sdhci-of-dwcmshc.txt to sdhci-of-dwcmshc.yaml
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v6: None
> Changes in v5: None
> Changes in v4:
> - add tag from Rob
> Series-changes: 3
> - fix filename and other improvments suggested by Rob
>
>  .../devicetree/bindings/mmc/sdhci-of-dwcmshc.txt   | 20 -------
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 63 ++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
> deleted file mode 100644
> index ee4253b..0000000
> --- a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* Synopsys DesignWare Cores Mobile Storage Host Controller
> -
> -Required properties:
> -- compatible: should be one of the following:
> -    "snps,dwcmshc-sdhci"
> -- reg: offset and length of the register set for the device.
> -- interrupts: a single interrupt specifier.
> -- clocks: Array of clocks required for SDHCI; requires at least one for
> -    core clock.
> -- clock-names: Array of names corresponding to clocks property; shall be
> -    "core" for core clock and "bus" for optional bus clock.
> -
> -Example:
> -       sdhci2: sdhci@aa0000 {
> -               compatible = "snps,dwcmshc-sdhci";
> -               reg = <0xaa0000 0x1000>;
> -               interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
> -               clocks = <&emmcclk>;
> -               bus-width = <8>;
> -       }
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> new file mode 100644
> index 0000000..f99fb9f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Binding
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +  - Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> +
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - snps,dwcmshc-sdhci
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: Offset and length of the register set for the device
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: core clock
> +      - description: bus clock for optional
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core
> +      - const: bus
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    mmc@aa0000 {
> +      compatible = "snps,dwcmshc-sdhci";
> +      reg = <0xaa000 0x1000>;
> +      interrupts = <0 25 0x4>;
> +      clocks = <&cru 17>, <&cru 18>;
> +      clock-names = "core", "bus";
> +      bus-width = <8>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +    };
> +
> +...
> --
> 2.7.4
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
