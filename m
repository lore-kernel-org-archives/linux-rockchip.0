Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E42B5C00A8F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Oct 2023 20:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjQuHoSUS7xYwnMV0HBu/w7UT0TOmovh8bKIbaz3AyI=; b=MwJ6Hsm2urEep6
	+YK/59px01kLJGXwWutwD2mof6bolzjEnaHUhqizg6BwuIH/j/yXliBzTMbAfocd/2N7Bp+uXMK0s
	eLyBMTPcuUziAAzpqYB3tBPRabw7HpWnDNGBtC69aHCVDOFQ6pA9XNWqmWtzV2JEoaHvbM+Dls8Pp
	SHYIZTqvsgZvq2j8BdXnxacJirsDpH9siVcaqrtaKaGytvo7UgfLvPqafbTxrAxSe+PGuaGGfsFqx
	qJd40xVOzB7Y6tnqvK3uou4zTEqfDDx0JCZ3Vx+2kwGyI9oJz3kx2nJLI7iiy585D97ZB+Jkn1Ur2
	sHFksK6FGyd4w0lrIhkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qufJA-005uyL-08;
	Sun, 22 Oct 2023 20:44:24 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qufJ2-005ux9-1j;
	Sun, 22 Oct 2023 20:44:21 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32d81864e3fso1744682f8f.2;
        Sun, 22 Oct 2023 13:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698007452; x=1698612252; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ubgw7EUHwh2i5TKOLdKPVsembpOTYUP/UvZXFU0rg78=;
        b=BToEc3QdiQghkBcqil+1CUxiGVYR3Hu4m/Ua+DOfjDRLbSnTLl7zzBUV5FAUkQpdzN
         RQjAnSCWtXVSWTfMekXlpiSRCjZwwIkG+s4zsr4Fe0PaL4nC7IhHVJ6qwpIlomp2FOpG
         BGIMCjz4UlnMaxM2HccmBE3a00EmKWjvdyvX0t6p3SFoi21p2PccIfiNb9VD2OTHmQoM
         jW2T1yOjEgbYsTVF5cdY5defpU36MEAeUuILJqKLktHBliop4XD6QAZnYfWc1ykDr8E2
         XtjsqP0OlelQbgMp0JaqlO+b8zZpjpbeHbaIXm7RoIP4MHRpGIOXQtv1XPGC3dmgLV2P
         23yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698007452; x=1698612252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ubgw7EUHwh2i5TKOLdKPVsembpOTYUP/UvZXFU0rg78=;
        b=uDZ1bn5ychmYterFCDcdhjmLzg/aLWisWKmPf/BPNdTjw+PkXjigFB7b+gxod76iYB
         YgW6HW0rwAAVNa3PZktTsrYnMftjhY+P5TV30Cs5SlgL4iaaJDbEKvzO/9kTIWyF5s01
         Qa+sS9fpxg/y41G/crgmiQRN/uv6q4oGWf6EuHLEsjag17bB7lqfUiW5EgKcxHj2SpKp
         h8GsSKT7gSFEpeN9GyhlWkNcrKqHzybWdJPHr8WVPaUV1OJR3g84tGTlNA8tcx7ui+xJ
         5nHpx8nWIvB2vvjbVKaraONDH3iYggUGC47qwvPOh7uyI8+LgdY/kwKrVPW5Gxzx6otO
         zUIg==
X-Gm-Message-State: AOJu0Yy4GaSVKznveLv0hzw8Tvnp4QUaXyMgEz+seFv21ZAi3U2X+8jR
	MjY08sGqUcgIaNj0/7H8C38=
X-Google-Smtp-Source: AGHT+IHZYO1YiVrh2DH1F+7+TsN/xjQg42iDfCcbvE3YbjU49pCuy7+y82CN88ZfctX3IIhkTcppsg==
X-Received: by 2002:a05:6000:b11:b0:32d:b6a2:8de2 with SMTP id dj17-20020a0560000b1100b0032db6a28de2mr5271520wrb.39.1698007452174;
        Sun, 22 Oct 2023 13:44:12 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id n18-20020a5d4852000000b0032db4e660d9sm6259104wrs.56.2023.10.22.13.44.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Oct 2023 13:44:11 -0700 (PDT)
Message-ID: <6ea02e5e-bc95-48b5-d6e3-15338ebd0a4d@gmail.com>
Date: Sun, 22 Oct 2023 22:44:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: usb: rockchip,dwc3: fix reference to
 nonexistent file
To: Vegard Nossum <vegard.nossum@oracle.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
References: <20231022185150.919293-1-vegard.nossum@oracle.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20231022185150.919293-1-vegard.nossum@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_134419_609780_1EE0E542 
X-CRM114-Status: GOOD (  14.74  )
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



On 10/22/23 20:51, Vegard Nossum wrote:
> This file was renamed but left a dangling reference. Fix it.
> 
> Fixes: 0f48b0ed356d ("dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml")

> Cc: Johan Jonker <jbx6244@gmail.com>

[PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2 phy binding name
https://lore.kernel.org/linux-rockchip/f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com/

Already Acked.

> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> index 291844c8f3e1..c983dfe0f629 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -15,7 +15,7 @@ description:
>    Phy documentation is provided in the following places.
>  
>    USB2.0 PHY
> -  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +  Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>  
>    Type-C PHY
>    Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
