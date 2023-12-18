Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37EDBC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 07:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7xCJRvunUUHOTVzsxk78Jw1+doioLggrjYq3X1wvSU=; b=AGmCBiE2AZVFUY
	Ux/2BqEigpD5CDkUmgQVx/WZ6ozdKECg/uQyF8fy1NdxnFodj0fL0AnLn/YIYmRuxW76w2z2jmxBu
	2mu9kVkzwvP84DA2qv8z1ykuLF/MkK8cxGMCI6fA0uqurNs+YyNcH+2B/gNm8K+7U8Ou0EWxwDUJ3
	2oczp+c6/Rs5fjRaTSuBF53a1ELF6cS8ZvE22B7ILoD2nyP0mkK3X0pIurUj5o590EvafzVCmkF9K
	pND/hY95fgoUHDpl9rsbG2+hPCihCZWSTFw4NuyDzeRDVz2deCuKCqwXQHve+2DOdAXwuBLedHk+U
	n8W29x4eEd/MA54XqbMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7zx-009LSM-0c;
	Mon, 18 Dec 2023 07:25:09 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7zo-009LNl-1f
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Dec 2023 07:25:02 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-553046ea641so1608633a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Dec 2023 23:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702884298; x=1703489098; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z6qsvUViIy5kHRO5N1dKdbt/rQsdz6PsfozqZJLrOGM=;
        b=w02nTz4V3sEMywnJHhz22r94WZa287Euctg/C88lgdBZ2JGnAM9lt+TFALiSQu3rVa
         CoLPHQXfPkl5yzPSMQvTlqcT5fOYppO5YOWtQCiSnR/uXy7yshCYkrAtkXnVP1O+RfS8
         ml98+qBG7yp+mVjjSFWqWRgaADDVgGEA00hnENbzds62d/L97tXvsDf7hS/NpL8GXpXX
         bmf0qrh7kvqcq7FjYQH4GASxBbt4YmwCc6zZ4EdydkamFO5DetbcHD5os+7PR7NCejhq
         WjWwovtbikOJSBHFM5ImoRhNmOVwuiLeYtLtjO+7Ruqf/VMSZJWJZApmnETBenAxXDK1
         uLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702884298; x=1703489098;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6qsvUViIy5kHRO5N1dKdbt/rQsdz6PsfozqZJLrOGM=;
        b=E10NFl7W4RdTK5238g3xSaAv8IfvqMd5P4ItNI66VLYm/IMqAxgjD7RMchrG+4Xgpo
         Yyx1deotTpaVTV4dx5NSVLS0dC11W/EgLC+sT6AgZ8EXo8aH/ZKtniEMH+dp+Q4db9Qe
         nys/4BYlC4mDfrlF9xZ7NdvoCsT9b2j6sJ5rrRpovmx5V195N/mn2p5/7h6LYUoG7wL1
         rj35cn+p082E5XE7xE+60quYrifpsIRFDwgkIRdMXvQFMxbc7nOcJwlgYXIdbFbRqPHw
         SKj/6RuqeDOFJBj+ZtiAW0t64uyNtaxihhjZRFKX7al6f1lex25q+TwGvKmtnJsEGQOo
         aJXQ==
X-Gm-Message-State: AOJu0Yx/yoJamHxl6yp3Nei2jVeXgc0f1ifGb1HX/syUmHLGzNsHVmNC
	pB6dOYuyOfV8x2A8d9GHk3En0Q==
X-Google-Smtp-Source: AGHT+IEzk1oaWh+i7tL6Jk5qCikAuT73A5/Ms5ACQPK2kFjoFgrnQcGsZLu2EW3+0QXAdcNgIi60OQ==
X-Received: by 2002:a50:aad0:0:b0:553:3a99:4ca7 with SMTP id r16-20020a50aad0000000b005533a994ca7mr589637edc.78.1702884298101;
        Sun, 17 Dec 2023 23:24:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id ew12-20020a056402538c00b00552691fc7f9sm4233391edb.66.2023.12.17.23.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Dec 2023 23:24:57 -0800 (PST)
Message-ID: <93e07033-6596-44a2-97bf-22425dfaee42@linaro.org>
Date: Mon, 18 Dec 2023 08:24:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add support for NanoPi R6C
Content-Language: en-US
To: efectn@6tel.net, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 sebastian.reichel@collabora.com, jonas@kwiboo.se,
 Muhammed Efe Cetin <efectn@protonmail.com>
References: <cover.1702647349.git.efectn@protonmail.com>
 <923b4d9bb60fecd080e7c348ec0d4630392eb091.1702647349.git.efectn@protonmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <923b4d9bb60fecd080e7c348ec0d4630392eb091.1702647349.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_232500_552034_9BCF1F34 
X-CRM114-Status: GOOD (  14.85  )
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

On 15/12/2023 14:55, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> NanoPi R6C is mostly same as R6S variant. It has M2 port instead of a
> NIC port and different led labeling.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |  3 ++-
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts | 14 ++++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ed2583dcd..261505081 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -114,4 +114,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
> \ No newline at end of file
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
> \ No newline at end of file

Still warnings...

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> new file mode 100644
> index 000000000..8031098c3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-nanopi-r6s.dts"
> +
> +/ {
> +	model = "FriendlyElec NanoPi R6C";
> +	compatible = "friendlyelec,nanopi-r6c", "rockchip,rk3588s";

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
