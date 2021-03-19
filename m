Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F3BC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:13:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 16D7A64DEC
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:13:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 16D7A64DEC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hg5nSJCEKT8yZ2bBSNjuCz3cLszjQ/EQlSX2KNPQPw4=; b=XTzE8fiu7PonSnP9abjFbZLRK
	cn7/9ozXj1IJmdrwYI8z1G7wHt79hXqgY5T9aatXBHe8wZXxApQ/30L3EYvuibeTb1P484YgHu+TS
	zrjY6YFaE4LQUWrz9P2uGJ3T/lWoRxqES8l03PRjapMc5zGP2F+23I7uhA2/GLo5zLDI9m6EZLZbI
	/aT7af9lekjtWr8znwJyAgI/5uqa1vKzvl6usRdYh/CqFbmZ6NsPo6wanWB8+c0M0qov8+Fym47uU
	g+IeLokOVfaZ++lODggTJRqAZPU2rkFE8ROOBP72lrg46nkVXW5rgwhoqrTK+g4TeipEr/QQbD7VS
	k6nCMQoNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNFs6-007WSt-WD; Fri, 19 Mar 2021 14:13:03 +0000
Received: from mail-ua1-x936.google.com ([2607:f8b0:4864:20::936])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNFs3-007WS9-IZ
 for linux-rockchip@lists.infradead.org; Fri, 19 Mar 2021 14:13:01 +0000
Received: by mail-ua1-x936.google.com with SMTP id v11so3092408uao.0
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Mar 2021 07:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PWgAYd4GZnp/T9aLTG5OoUnHXCTXz0kWLYL1sUoKSAs=;
 b=pE55rx/nQAWWiRcoufqivpmIlRzEZI94QO9TqdlQvOOAyIVhYB3wg9rKP28xSWSdND
 8ejGpFL7Hru1KdgUfbnz9esO6B16LKif/0/V93pB+dueCVSqoitKE554m26G3jJAz/4W
 K5TTrMnG0fx4HWa+ZI0nFwWdXE4jNXVx4bul67ywCLG1BREjNCWtUYFJ63DtoXjusnG1
 pzRj2CxrhTm3rHroP4F1mLECTFH+vnaCi+JdUoOqweNNkvI3DWtfZuULjiSg08LUL0F4
 Hr0CU8bi/+ER4v0ZVkNtB0vWix01KeTgAKV1xg4wiKRU9fitdxo9sW86UIl/a2uCfgNw
 4q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWgAYd4GZnp/T9aLTG5OoUnHXCTXz0kWLYL1sUoKSAs=;
 b=UNp9uwfAowWm4CBjK2AcYUJn+RCJB0AJVpkz8TfJ50NorsFcKrdU2gr+CYjtAy5Tl9
 eeTLU9cyQ3gCOxR8q+avXeF2Sl6RpzhrNoxRE6F3qpCsKGFlsDwcX/GiaULKhJKIpKFg
 f3AAlLqYsBi+HX+Tp2sZNPhWub+kHFTTT1i3VOZJYzhot9Q+2mdVpYP6Sfb6FdsW+WnH
 Fm0g0hdO2hXNRDVDT2NrFozAmBlur9bfBS4ilzcH8s2f5dhRA3t5l7jmoKawNkfxjV1d
 CU3Pmm+H3ckP9CIgp7sQWBnF4Zk00FALrQe1VCdOOy1cVTG/0qVS7uYDMxa45afjYYOQ
 Vadw==
X-Gm-Message-State: AOAM532sCx3P1hsNqZeOibPBNMVp1s0TYIiOtoVGODtwKF6zAsXyXw9m
 xXyoLurlof7Y3AlLnFP1qKTfqwtBVW18bEp9ZOan81MyFQ08YA==
X-Google-Smtp-Source: ABdhPJybbh/9ZCCPoUUBxpdshVjauryv12ykA3cCDS1cePj8MJAy6TjeAM1Lg26t8d7/zZ7mGyc6CxPIuECyP0fWj0g=
X-Received: by 2002:ab0:6f0e:: with SMTP id r14mr5394574uah.15.1616163176593; 
 Fri, 19 Mar 2021 07:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <1615879102-45919-1-git-send-email-shawn.lin@rock-chips.com>
 <1615879102-45919-2-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1615879102-45919-2-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 19 Mar 2021 15:12:20 +0100
Message-ID: <CAPDyKFoANfvc1-jnM6+kSprzxoefECvDoRW5K07aU11QaNsdoQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip
 support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, DTML <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_141259_703494_1AC80610 
X-CRM114-Status: GOOD (  17.43  )
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
> This patch adds rockchip support in sdhci-of-dwcmhsc.yaml
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v6: None
> Changes in v5: None
> Changes in v4:
> - rename compatible to rockchip,rk3568-dwcmshc
> - constrains rockchip,txclk-tapnum to u8 to match the register map
>
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index f99fb9f..e6c9a2f 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -16,6 +16,7 @@ allOf:
>  properties:
>    compatible:
>      enum:
> +      - rockchip,rk3568-dwcmshc
>        - snps,dwcmshc-sdhci
>
>    reg:
> @@ -31,12 +32,24 @@ properties:
>      items:
>        - description: core clock
>        - description: bus clock for optional
> +      - description: axi clock for rockchip specified
> +      - description: block clock for rockchip specified
> +      - description: timer clock for rockchip specified
> +
>
>    clock-names:
>      minItems: 1
>      items:
>        - const: core
>        - const: bus
> +      - const: axi
> +      - const: block
> +      - const: timer
> +
> +  rockchip,txclk-tapnum:
> +    description: Specify the number of delay for tx sampling.
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +
>
>  required:
>    - compatible
> @@ -49,6 +62,17 @@ unevaluatedProperties: false
>
>  examples:
>    - |
> +    mmc@fe310000 {
> +      compatible = "rockchip,rk3568-dwcmshc";
> +      reg = <0xfe310000 0x10000>;
> +      interrupts = <0 25 0x4>;
> +      clocks = <&cru 17>, <&cru 18>, <&cru 19>, <&cru 20>, <&cru 21>;
> +      clock-names = "core", "bus", "axi", "block", "timer";
> +      bus-width = <8>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +    };
> +  - |
>      mmc@aa0000 {
>        compatible = "snps,dwcmshc-sdhci";
>        reg = <0xaa000 0x1000>;
> --
> 2.7.4
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
