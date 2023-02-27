Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93492C64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 16:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdIdRzRGo6SEgCXJaAgUiPfFbYpRZhb4X0Eeh6oL0Qw=; b=27FRcjCMAXfFnj
	jTFNbGEPUJEh/gtu3ZoLe7uXCehi/mZiz8nBMIouyJst2HSLFD36Ig85W9ciwems5i6KR829rr/2T
	KhZcyMqntRx+MezZuQz1aEPIt+jJnAHQlpa+YzmTwMEGXXyirPdjyLP0xgDYqiEfmlXDfCxF5K3vt
	1HhZUvZIHLP1c6QXuV3OZqySVcLVD1cgisdo/XmjB5rbUp09KNdTl/+hmq4XWaoGSn/oRX5+dzO46
	fVDLDS0wIJUzEoch3zIr+bfUWCqf3fZpJxyA++2xo6N1ntHiNO6MTYe4QUTJap0kJoIDxxl7xhV7e
	78Mg+ecoS95inYIph08Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgXP-00AOCO-VM; Mon, 27 Feb 2023 16:39:43 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgXN-00AOAo-85
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 16:39:42 +0000
Received: by mail-wm1-x335.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso4212487wmp.4
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Feb 2023 08:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=crbERNB/KRiPX3Ns+MACGOaRXuvcwQ4dJP1SUBpCJ8g=;
        b=Gdw1WjhW8fLA8jwW+s+geHgS3eG/p54KN9TXeayWH39nZnfmEv52LDFWQV2UBRD57L
         I6H+KGeaboGegcC363z2APwz2ABZuqCQ7ksqMdNcciFAQ5Fxik6FVfgCQytgljyejMAJ
         /R9av1khB9IWzoQMmBD+IF9MYWZWrQEvVEFLcE5dd/LNNEJGIOstujWzpT8gxWkYkVHD
         BzoUvkxWKR3w2N0J/FE+9p9NpZ0Ho0h5eaCm/LRXD9We7FYL5nfkHkA8kOKVM6zuE156
         AbZOtSR+Zm8FIZPdyTQrqU7U3ZdCg+9cHIICwLjzGp47OGEtuiUqTPFDHmxBBWdyDUn5
         T1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crbERNB/KRiPX3Ns+MACGOaRXuvcwQ4dJP1SUBpCJ8g=;
        b=AFJatavolUoMn1fQutZeveCgpoh64GzfUYhOlKap0D9r0uElwQDGFR3iTLXwmwreQh
         QGG6uQJfHWP+Pg29FfISNFnd0mgMg87uIA1Z697yQVCjOw8DFuL1IPMP7jDi2K2jqBIu
         JceT1RQ4sqtg6YSqLCHJEZvSSX/d2Mv6PhXJDNI+CidsdZBt7ro08nUpxbgzXPmqYcgG
         yGgMQKYWGYAfdOmjiSCrSds7geYEFV411EiGiYej4Lynu4k/dnM9tsspQ2MfzC/qOZbd
         9Y/IK6ZFjjKhr+AnNwvdZVmt8zVAuCnp1tTMFXfI8y09JPmzsBlfVdeTCKA4Qz166OVZ
         mv8A==
X-Gm-Message-State: AO0yUKWBvcmhWeqywH7RVZUuPOHU7a4QynHWK7Qq5KZmGrxRGUzux7j2
	c88bXjsyx8a3wpR6ao0YtlmvBw==
X-Google-Smtp-Source: AK7set8klad7bCsER3tYb5FwPiD6RW3fkao5lu6U9BHq6wZUQtRDDX+xscy8gxmRafyasXusCVWgcA==
X-Received: by 2002:a05:600c:3586:b0:3df:9858:c039 with SMTP id p6-20020a05600c358600b003df9858c039mr6870854wmq.14.1677515977564;
        Mon, 27 Feb 2023 08:39:37 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c20-20020a7bc854000000b003dd1bd66e0dsm9630740wml.3.2023.02.27.08.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 08:39:37 -0800 (PST)
Message-ID: <a90451df-0191-a2fb-060d-66ce5afb55d2@linaro.org>
Date: Mon, 27 Feb 2023 17:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V3] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
 johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230227163027.130292-1-macroalpha82@gmail.com>
 <20230227163027.130292-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230227163027.130292-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_083941_341164_FE08BD69 
X-CRM114-Status: GOOD (  15.37  )
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

On 27/02/2023 17:30, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 25 ++++++++++++-------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 143b5667abad..198c5dd1f257 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -4,24 +4,31 @@
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
> +      - items:

Now you added items which were never here... You have only one item, so
no need for items.
Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
