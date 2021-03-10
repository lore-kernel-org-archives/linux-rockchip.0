Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58641C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 03:02:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDFBD64FE1
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 03:02:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EDFBD64FE1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VKefEDSaGB5RIyx/Qnle0JUyGrZ3vOHuUCr00U+Edt8=; b=A+Pb+mhG2JfANTkZ77HI9acoP
	oMpCVIh5E0qUkruWpWSjFgK/8PGbMIcQHXxZGXfDIjEWCzP/2n9I72jjv509z+XCuL4pW5sznt4CU
	8dKrY6SErDU+qucAz3FLhf6UKE7Z/FFnTDWgPlXQvuBerrki5HuGo9XXpgARPNlNJUY/37xzBPwZQ
	OeqDRdR3u8W3FVc/SotK7FEhlkHKWilaecDAqxDBWMFV6MgTrGvJ7ZeSsdLZMpdGTq9Gr3d4Rgy97
	8+KGV/VPEMSS08HUeVPSfu8Yiupc0JhC+8IrR0BXIGP4wOglADCxc/tDmso/SyWOXS84L1qHNj/Ki
	8pbZPOQLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJp6l-005rPg-Tb; Wed, 10 Mar 2021 03:02:01 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJp6D-005rLW-QE
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 03:01:33 +0000
Received: by mail-io1-f48.google.com with SMTP id o11so16378579iob.1
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Mar 2021 19:01:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=344tVBROrcGfG7Le5DlzQjIDt0SKG8pa76TGE6syYKo=;
 b=Dkm7KLN+8IFhx4B61ErCIHg2BeBXN7YlYL1GNVLI8MJv/4l5SS9iY7Zd+9MMouzBkN
 PhuGj1ndwkdpx4+pf9/OogTuACcganFOIhTly5gMkkG/i1+WFFhApZgx0nnGoKGnOSic
 8e8HnIPZ6FD/3aAVlwkTUlVulLE64xu80mZ5gG71x7SaDIofYIGQhGhM7tA6HACXd8Cj
 aOYiGgCHhcur1PO2FLZbusmTAWyvoMctWG0q8Y0T2ngD+6LMV6B6Fk9hEMxehyk+Fzqr
 CIEsfLpRP5orzKe4zsuI0owHtrq5Y76FJ2Zm0Xbc39lTDG/Jyxpdbzy2j+6Jg3/jQ5QH
 BeOA==
X-Gm-Message-State: AOAM532RDSg4B6B/L0F5ie+G8xeHWvEzD70k3EZyyENJyYjFP0vgNngy
 5PUjgDNxLBNWQqSXyvu38g==
X-Google-Smtp-Source: ABdhPJylE3SN4ifqoY3q9XY3cnPA0IAuGy62a5W/RzBRG2WNspkLT5vtScelB/9Khap1fxrZ0GXl9w==
X-Received: by 2002:a5e:a508:: with SMTP id 8mr993226iog.135.1615345284888;
 Tue, 09 Mar 2021 19:01:24 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id o7sm8628180ilj.67.2021.03.09.19.01.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 19:01:24 -0800 (PST)
Received: (nullmailer pid 1665491 invoked by uid 1000);
 Wed, 10 Mar 2021 03:01:22 -0000
Date: Tue, 9 Mar 2021 20:01:22 -0700
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip
 support
Message-ID: <20210310030122.GA1664258@robh.at.kernel.org>
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
 <1615254990-192784-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615254990-192784-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_030130_476694_49DCE907 
X-CRM114-Status: GOOD (  17.57  )
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

On Tue, Mar 09, 2021 at 09:56:29AM +0800, Shawn Lin wrote:
> This patch adds rockchip support in sdhci-of-dwcmhsc.yaml
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v3: None
> 
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index f99fb9f..43989f2 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -16,6 +16,7 @@ allOf:
>  properties:
>    compatible:
>      enum:
> +      - rockchip,dwcmshc-sdhci
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
> +    $ref: /schemas/types.yaml#/definitions/uint32

Constraints for this? 0 - 2^32 is okay?

> +
>  
>  required:
>    - compatible
> @@ -49,6 +62,17 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> +    mmc@fe310000 {
> +      compatible = "rockchip,dwcmshc-sdhci";
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
