Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A7DC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 21:43:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96DE165173
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 21:43:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 96DE165173
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xRpJifwbX7DlhJdeRu4nDQ5yA99m4R1VTYrmdAx8J6k=; b=FdECTPqcOQcivO5uLiMCcyf2/
	btyfVz53yblRfpE2Ltxz6X2eIBKAuANDd5LoABDYckJsj2MbR9848z+J77TF4kngkXK7h/mJG+B2I
	VX7XPOdg84mIud3pITMds/7JPGgGc6UjcsBISQyZwvdyajQaFnuj910yHcLFMsIKZKXvoi0ac5Xou
	0j+bjDtcp+UAd835gw7/FLpT6pZ6ZoMOCLkVUmUYlQp9dV/VoxeDBENq+KJKtQKYAmKP+ErurSLgh
	k9MyxpjjIEfERt2wSWb1PbgvNn/kmqnNkAvxHYltcCgfPcx1Q+g2dzFgdS2XgLtJFvQFi+FwP7tJW
	ah/z9b2Dg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJNeS-00328d-49; Mon, 08 Mar 2021 21:42:56 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJNeL-00326n-Kv
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 21:42:51 +0000
Received: by mail-io1-f46.google.com with SMTP id k2so11647920ioh.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 13:42:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wHaDCIFSJ/WaA+1UndQODdn6YA7l7EOGWs12tpJYWwc=;
 b=GFqMa3xt6/UYfy/Sc54pPIrG6KqftNwJjLCUrA/3GMFM0aRmC13LuB/1bVO3RZyUla
 xO39RAY5aFNYXHzDe1yHUtnSR61KDrLYwLH6VSiMKkSOxg6SiobOlsWVuVaIXdvty+lG
 8Tl9XPIK+wmOi29bFZ76I0EqKFOnEsYtZtQONMhRVu+IkEUwew4b8AipymEfVd4D11wC
 +gSkR7E3NlTi6LOXYC2CZ6qmG2A90/xMbx62RIAhUVDSMmji3/jqRcQ9ZmT7ipgkuaAl
 JFxQI04OtZiFJ9k2UizAnbExpo54PKTcqERdXiP6jqLVNHA9/8zFY/nEB9NAOq+egQ05
 dUCg==
X-Gm-Message-State: AOAM533RHCfNRD0HW5E3TuUHALq/iquMWzU1YbIY3aRxsfl4DAhMMS40
 ZfNCm/0sOOb5wXbRYScy+w==
X-Google-Smtp-Source: ABdhPJxM035frlT4oHWfpTCS3AKMyqbXOwdLygiLPvLj+LFEYJyvL6l/HOkEc2Ks/pXPGvbugX4PBQ==
X-Received: by 2002:a5d:81c8:: with SMTP id t8mr20788383iol.38.1615239768523; 
 Mon, 08 Mar 2021 13:42:48 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id u14sm6528028ilv.0.2021.03.08.13.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 13:42:47 -0800 (PST)
Received: (nullmailer pid 3004894 invoked by uid 1000);
 Mon, 08 Mar 2021 21:42:45 -0000
Date: Mon, 8 Mar 2021 14:42:45 -0700
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Convert to
 yaml file
Message-ID: <20210308214245.GA2999684@robh.at.kernel.org>
References: <1614909262-205658-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1614909262-205658-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_214249_939564_00EEDE96 
X-CRM114-Status: GOOD (  21.50  )
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

On Fri, Mar 05, 2021 at 09:54:20AM +0800, Shawn Lin wrote:
> This patch converts sdhci-of-dwcmshc.txt to sdhci-of-dwcmshc.yaml
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/mmc/sdhci-of-dwcmshc.txt   | 20 -------
>  .../devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml  | 63 ++++++++++++++++++++++

Use the compatible string for filename.

>  2 files changed, 63 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
>  create mode 100755 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
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
> -	sdhci2: sdhci@aa0000 {
> -		compatible = "snps,dwcmshc-sdhci";
> -		reg = <0xaa0000 0x1000>;
> -		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&emmcclk>;
> -		bus-width = <8>;
> -	}
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
> new file mode 100755
> index 0000000..9d717a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/sdhci-of-dwcmshc.yaml#
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
> +    maxItems: 3

You need to define what each entry is.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      Handle to "core" for core clock and "bus" for optional bus clock.

minItems: 1
items:
  - description: core clock
  - description: bus clock

> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2

Don't need maxItems here (implied by 'items' length).

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
