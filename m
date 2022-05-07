Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 876A6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKB+K3WRkiddtConrLJsLG8toRnpJMO/qjGw1ZJDey8=; b=QhjeZ8XPkF+uEa
	w+C2p7rQjZsXmGecitMmwOhqQ1A4/clh7f+7ArYBf0EuKZhZ5VFq+b3bKlRK0tthVkM7zZJrYsqBw
	nf4HW8JI52zuhEZhq2z+QZKgSR+0YKX2NcgpzHwcpR35H0w3hdlNEmBgYXGV8oHWXAJ/oyMNqnK4l
	reT/AmmD4v604c4Hw/9aFEsEiDLGu/g9syg47kWHcBm+TUwXDqMgA+q22YWuyLr868MSJFsCe6vB8
	IwG517ypr71t/Ba+PEAjxT8aY5fVrKNzOgebGKgDqxczezQjFIJN5zbWAze0B0oKCMkTj9jr2clc2
	MusQnJ76LE1XAjGoaZqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnQav-008CYW-1X; Sat, 07 May 2022 20:00:01 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnQaj-008CWB-Vz
 for linux-rockchip@lists.infradead.org; Sat, 07 May 2022 19:59:51 +0000
Received: by mail-ej1-x62b.google.com with SMTP id l18so20031880ejc.7
 for <linux-rockchip@lists.infradead.org>; Sat, 07 May 2022 12:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=CdoG5uiVasejnemLfedUgLlvjuPyIUBH7WuMB7uxqPM=;
 b=G8Vjn90QHh4oxbaJwezEh8X4SVtSXeFZn8VXZRUxQIu0HU1b7VGHwI7AG+kOTaDjFS
 yi8t3CePCvXmRG135Rn5jZUd0Pf6LyYi0WuHbYD2PpZga7fl7oyGrmn6MFrDhvuqEYOu
 5xZxpHJKHa77j+O5RX4Xv8H9jZgjvgFLM2zWTncqdFngFlMcF66c5aWQqI/PS9zVm1A2
 RpiMCR/KX6xO+X5w7WkaKovW1gAWSrV3pNNV2iGvAGptglr99z9bDWlhnK62MH+cD2Pc
 bYHBlSkRMm6iTkShZl3yjUGaslFLd8tceWpLTUZA6BM8nVBcF6H1ZrZlwqoWHi5ECnDt
 BJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CdoG5uiVasejnemLfedUgLlvjuPyIUBH7WuMB7uxqPM=;
 b=3YdwtwNnYouCVBACbYFK6DauGrc0yLCDI1KnsmQMiBnGLbVyYdL0K/PKsdEhvExtjk
 3G/47TQSLKSJmOGQNbIxN2Bt1G+xRFcJeSxYd21BLQwQqDa4bxKK7gXARhm+SuLNHyq+
 txDhAPYfgvmgMa9WIgVr2Tg9BMgtY5QWrWc7WU6+f2Ok0+qnnSV+HQ8HiOn+a53MWnrR
 fHkBkCXFveAmZE1XwXLsso3lTdVtpDcNb/oAgFjbjERxwGyeJzYmSRp3BS+gsAxkaN7R
 7tGYWq9vMmE4CZ2mgB+tFQMJ1WxZFQqh4EZRacSx1wDw4k2U3b0ERl2solE9awjrLncx
 KAUg==
X-Gm-Message-State: AOAM532hQwAw+r+ziB/8kF9UGRSTV8m5R+Ke4CLTErXy+d3m8Rv/o2Fw
 zbo0GYKGOBxf36THpapE/MdMqw==
X-Google-Smtp-Source: ABdhPJxDyRdhI3lmezTH/4XlyD6pWqtW8AtiH011+LGHZ7x81uRCA7+9hB4bLPR29SliclbWIzW34w==
X-Received: by 2002:a17:906:32d5:b0:6f3:be75:8485 with SMTP id
 k21-20020a17090632d500b006f3be758485mr8393835ejk.685.1651953588123; 
 Sat, 07 May 2022 12:59:48 -0700 (PDT)
Received: from [192.168.0.235] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 wi7-20020a170906fd4700b006f3ef214dd4sm3265880ejb.58.2022.05.07.12.59.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 May 2022 12:59:47 -0700 (PDT)
Message-ID: <e7fe1268-8604-4d50-08be-d83bcf2e9537@linaro.org>
Date: Sat, 7 May 2022 21:59:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/6] dt-bindings: net: dsa: convert binding for
 mediatek switches
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, Andrew Lunn <andrew@lunn.ch>, 
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Greg Ungerer <gerg@kernel.org>, =?UTF-8?Q?Ren=c3=a9_van_Dorst?=
 <opensource@vdorst.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <20220507170440.64005-1-linux@fw-web.de>
 <20220507170440.64005-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220507170440.64005-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_125950_087851_477684E6 
X-CRM114-Status: GOOD (  19.61  )
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

On 07/05/2022 19:04, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Convert txt binding to yaml binding for Mediatek switches.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v3:
> - include standalone patch in mt7530 series
> - drop some descriptions (gpio-cells,reset-gpios,reset-names)
> - drop | from descriptions
> - move patternProperties above allOf
> 
> v2:
> - rename mediatek.yaml => mediatek,mt7530.yaml
> - drop "boolean" in description
> - drop description for interrupt-properties
> - drop #interrupt-cells as requirement
> - example: eth=>ethernet,mdio0=>mdio,comment indention
> - replace 0 by GPIO_ACTIVE_HIGH in first example
> - use port(s)-pattern from dsa.yaml
> - adress/size-cells not added to required because this
>   is defined at mdio-level inc current dts , not switch level
> ---
>  .../bindings/net/dsa/mediatek,mt7530.yaml     | 423 ++++++++++++++++++
>  .../devicetree/bindings/net/dsa/mt7530.txt    | 327 --------------
>  2 files changed, 423 insertions(+), 327 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/dsa/mt7530.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
> new file mode 100644
> index 000000000000..a7696d1b4a8c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
> @@ -0,0 +1,423 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

I don't see any acks here so that part is unresolved.

Rest looks good:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
