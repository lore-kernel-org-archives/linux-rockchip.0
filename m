Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2DCC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1t82kCV1wiOtIFdHWB8bKAUt4RC1bVR3MDKXgNooMWk=; b=Nuf0HAZa68vnA4
	mlcUl3auKzWrEfS/6oM1VklqTphvhxkuDYg/5nYo1GZmNcbHNGxvA7fqWxl65Eb+AmuE5gvHbPCZG
	XpNFBTFDqmZzEgahWNsK9SNCBf6AvqFBIepUUEp43OsSG3owQUSQZRG+kaC8f8J8uOlKiC5xg2LNa
	Ee8by1xKqtucHyOwoZexOvkYZHgNDgMFIguJKBcJacdiAGI0ytykVEp031RxABZPfp66z5ntsJOiS
	/3yavPN8XuFq7DDHxXkvIJyOiRBQ6kQKHUpObevmXClqhp4YnUQD87gyKcR4wqFvLtfrGdAB3W2Bc
	Q7vnMrZW4HFmY7nV2QsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgMpK-008FMO-0z;
	Sun, 26 Mar 2023 09:38:14 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgMpG-008FKh-2V
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 09:38:12 +0000
Received: by mail-ed1-x532.google.com with SMTP id eg48so24224866edb.13
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 02:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679823488;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ZrBuJiIoQK2v1CW9coA2UE02/s0G06cmU89tU/gP2E=;
        b=jMBSiE/53ZDBTd2s3jj2WfxJQOtKbHxGyPe3PymEn3WvXUiVT1DMVDD/LGE2BuHPZz
         TEaEGjsmeDpUoSRCc4ArK1WMdYMaGEiPK2KNPLnOrkPWPVOj3J8UnYES6TU6KrDODsGo
         hNKQK/AM8KOkqTg5X7S06SjRXOEF3Wntp0mcnkaamSK1GJwu3hETvJDHEbk7dLv5tg2l
         QirjaXfdHM5gQV4QfDuar1aicPjBuHd/OGltjwMGcMh/BZI3uw7eiGw/cfSqtay9sdXj
         kVcLDdNh0jQvvbKHR8R4pNQTfZJGvesQBinBQqNfrRHCtcLx2ji9ly3qrlaUfIrzgf9b
         yw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679823488;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZrBuJiIoQK2v1CW9coA2UE02/s0G06cmU89tU/gP2E=;
        b=moCE2z+u0sZsaLwES+RmcSotr9vLcpAN363AeJgdTnuGsEHrdQMnJtX3t/jmia0nnq
         214fYogBFp2KRtl4zTR68x5OuxzeRCQdyPSbndY/D/C1qvBdpOtaDNPS5MEv0vNglV9F
         hRTSovyyifiIbm4/phTBFrlW7busR5jegYB+I2Y1X9sRAZ9i1UeQE4LOXUzLXJORmZXo
         NcwxTvmAISaDma70xfGcgQHj9weWvskw+rXPYkwXYPsv0kppk1MnnU4KwZpkPzAxR6t8
         AqCGboFFKenSOTPAVi3wN2NbKwvsroHSJFTr5TXlxtd7Qtu6jHnWLbBrZ+OKAIc1yT9W
         Rf1Q==
X-Gm-Message-State: AO0yUKWOX8/6zX4CHsJ8EjVvgYWaE7AbQL6/SSariLd+fwhGHGRK4Iz0
	APHvZyfxU4JjM/ZDkku4Ni8lEw==
X-Google-Smtp-Source: AK7set9Wdnq4Hya0KycQsDYZzYTaBke37/nQ5a3vtW+4Iv/3ZShUaYWQ/4+8D8cBldBVx7qAB5rhJw==
X-Received: by 2002:a17:906:c781:b0:8b1:2eef:154c with SMTP id cw1-20020a170906c78100b008b12eef154cmr15293793ejb.0.1679823488416;
        Sun, 26 Mar 2023 02:38:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6cac:926d:a4f2:aa09? ([2a02:810d:15c0:828:6cac:926d:a4f2:aa09])
        by smtp.gmail.com with ESMTPSA id o12-20020a170906358c00b0093b6d1db84asm6384747ejb.120.2023.03.26.02.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 02:38:08 -0700 (PDT)
Message-ID: <a5966d2b-3e8f-3518-8f71-a4ed8de4b725@linaro.org>
Date: Sun, 26 Mar 2023 11:38:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] arm64: dts: Add basic NanoPi R6S (RK3588S) Support
Content-Language: en-US
To: Shane Francis <bigbeeshane@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326001535.149539-1-bigbeeshane@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_023810_815042_9F73276E 
X-CRM114-Status: GOOD (  14.41  )
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

On 26/03/2023 01:15, Shane Francis wrote:
> This adds basic support for the NanoPi R6S SBC
> 
> Currently working :
>   - UART
>   - mmc storage (internal)
>   - RGMII / GMAC 1Gb ethernet
>   - SYS LED
> 
> Signed-off-by: Shane Francis <bigbeeshane@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 126 ++++++++++++++++++
>  2 files changed, 127 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 99a44c400d6a..39cad757d29d 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -91,3 +91,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
> new file mode 100644
> index 000000000000..21b26539a855
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "rk3588s.dtsi"
> +
> +/ {
> +	model = "NanoPi R6S - RK3588S";
> +	compatible = "friendlyelec,nanopi6", "rockchip,rk3588";

Missing bindings documentation.

Please run scripts/checkpatch.pl and fix reported warnings.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
