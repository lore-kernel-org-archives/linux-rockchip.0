Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20432C64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 07:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnUAmZB+CylwySsQAivJHlKEqgRWauN6dmleXCbWEv0=; b=QwSvKuEL2y6jis
	nQaesDs0PXEw3m+dlttRGXatGOCcNp9gKmOI2whV+2xNRZuiZXxM7HPBo8lTzgLrnrtsQ5Uzhype3
	HDyKNx3tNiS9vSZ1JMlqbIa/djcYz8xfHCv/+mtepvOK4JlN1bhR4Tx7xKsCcRLqLgSE3DEj9htJU
	bJvWHFFOgdHviNGHyQmCKjgIQ5nGDA/F2ZliYQzXqM9Jc1MxiSE5tFnWnD76cPQYM/WIDApTHEsI9
	oEXuN/bqM2fS3WKMvucp0sgJBEAeFgUsnSaxwA6vIzKG2xAa8D6ryeeuQtf5Fd9PcLTvLHYPUwt5V
	xr/hENrR4ZbnXotzsTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWYGG-008i73-7o; Mon, 27 Feb 2023 07:49:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWYGD-008i5x-GX
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 07:49:27 +0000
Received: by mail-wm1-x32e.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso3225993wmp.4
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 23:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Ycf/1DHiIBJkbJqFKgRbDTb3vkYPvA2yBL4QswDweg=;
        b=Nsn29ewV25HyLTZv5+ulCGCQ9jawCqsPKc3XsTvputqhHssrh503KI7JFAZRiQNGJn
         OfuM2jptrFVnxLyLhr5sTtMP4M+dN4odb2Vh22mwWBLATyhQNcpmRow/REYcn//PSFPQ
         QLhNyXPYFU55+SZaUSr7zSp/LYLN7mlcjfiYkWOTNXZuQJKCTJAsh+B6efzE18EJSLy3
         cQLfTFpzKxdNzBXvYeeJgn+Y7p9bAg4IXGFUizmnfaQ8AkrQWepPjz2o+t/Fi9IbSInf
         BiZETxf0mEuZlF/Mbdm2A4CP3bCHiwb2cwNwtOYDLx2yUtYIpAhThoCwZuSFTFcA/WcV
         iIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ycf/1DHiIBJkbJqFKgRbDTb3vkYPvA2yBL4QswDweg=;
        b=TYQsnSp+x1LlE2VmNfRe19ohjxhwJadWtFj/S/xbT0VXtZQ9jvHTpXI3T5UZg41s8e
         mZggKCP20jvG/eMJw572PO/le4W6joTCLQUI9ZIoK//eBEMr5KjEsp2matLtQxrvhDWm
         U9lDFxkHuzz2b2KuvmwPnmlEfvzR+h/9bWl/XlEEeRnjbbsFv1fGnqdfX+htfdGI1m7h
         y+AszAz4a5aNrP9KeRm3zD5ZpHhfa7dkC3UvOqSXBIjSjEaitpLhoIv3NN9k430sCcTV
         eisFxklkiaPTzxE6TlTr2jsXygWHMNhk+07PvFOqmP1fCF5GO1gc9qwFeujymEQ4k6Xb
         YFVQ==
X-Gm-Message-State: AO0yUKUVe5KxzNsKFrlhdohx1zpnmiAaApwS8t3WSlB1EFLeIJ7UNyVV
	nyZgIqxh4vqn923ZtTutVSag1A==
X-Google-Smtp-Source: AK7set+uy4CIbgfqr/4vF66YLepUH0oqU0k8NTYmHMRLV9U0XEzhPXvIX66mYumEFmhYIpRHt2JVLA==
X-Received: by 2002:a05:600c:16c7:b0:3eb:cf1:f2b6 with SMTP id l7-20020a05600c16c700b003eb0cf1f2b6mr8365815wmn.14.1677484162669;
        Sun, 26 Feb 2023 23:49:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c028200b003e9ded91c27sm11701671wmk.4.2023.02.26.23.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 23:49:22 -0800 (PST)
Message-ID: <25558bd1-a79f-0356-1471-7c00bdedc553@linaro.org>
Date: Mon, 27 Feb 2023 08:49:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V2] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
To: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
 johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230224232339.124969-1-macroalpha82@gmail.com>
 <20230224232339.124969-2-macroalpha82@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230224232339.124969-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_234925_673406_3708B7AA 
X-CRM114-Status: GOOD (  14.10  )
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

On 25/02/2023 00:23, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 23 +++++++++++--------
>  1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 143b5667abad..f91d06d629b9 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -4,24 +4,29 @@
>  $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
> +title: RTL8723BS/RTL8723CS/RTL8821CS/RTL8822CS Bluetooth
>  
>  maintainers:
>    - Vasily Khoruzhick <anarsoul@gmail.com>
>    - Alistair Francis <alistair@alistair23.me>
>  
>  description:
> -  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
> -  SDIO, while BT is connected over serial. It speaks H5 protocol with few
> -  extra commands to upload firmware and change module speed.
> +  RTL8723CS/RTL8723CS/RTL8821CS/RTL8822CS is a WiFi + BT chip. WiFi part
> +  is connected over SDIO, while BT is connected over serial. It speaks
> +  H5 protocol with few extra commands to upload firmware and change
> +  module speed.
>  
>  properties:
>    compatible:
> -    enum:
> -      - realtek,rtl8723bs-bt
> -      - realtek,rtl8723cs-bt
> -      - realtek,rtl8723ds-bt
> -      - realtek,rtl8822cs-bt
> +    oneOf:
> +      - const: realtek,rtl8723bs-bt
> +      - const: realtek,rtl8723cs-bt
> +      - const: realtek,rtl8723ds-bt
> +      - const: realtek,rtl8822cs-bt

These still should be an enum. Why changing them?

> +      - items:
> +          - enum:
> +              - realtek,rtl8821cs-bt
> +          - const: realtek,rtl8822cs-bt

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
