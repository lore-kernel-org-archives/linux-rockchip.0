Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33EE8FA3740
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRX7jHf6uHgs0GAb4mBRxVIRem40TFLzBEEjHzSbOcg=; b=hSB0zj2+zAA8Mv
	JEWEZHya9bRkT6tYb+ODT44ct77Xw2UrCChKTorOjbUB0Ufj5eI8A5I1wpM9/DgDp0O7X22NVvAEm
	dgdMjpe8NwCaVnP9mRMIwVPmdkVMcPQqq+xQesJXOi3h+qDv/XIQca8mh62g94ll7jscnFaL22taP
	uQqS3MGOp35hg+Fv6wbtQbMWxvaXq1fyqqlk/QUbEhl2ykq1qdrK6BOqprg2+d4Nakn8gXmNHHjek
	V9azhEV+iGnq7OpooqIlf24aZ/GnMcUT54apwmfSlcmwejB3GU+ItAePIH40lAUEIBqISUlKTSdQY
	tycdEYKkXLuXDdtEkIZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4N8-00DwNQ-QI; Thu, 27 Oct 2022 15:00:42 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4Mi-00Dw50-5T
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 15:00:17 +0000
Received: by mail-qk1-x730.google.com with SMTP id l9so1080994qkk.11
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EmShqsgjReuSlQ39YbD/kmka875yPOjELnt/kPrlVCU=;
        b=Z48pJJ47oTLq8C2Vx3cKEumhdQ6iM4gOlUrK8dIDkDeTO14ftEvPo06sR3x/kpRUr+
         jzYqKKpp5DOl9NjjkpzL4wI4T4spuqKBNdxQnH9BTxf9KMkx8WVwiswrhWJsWOSLllai
         3yVhi77oClci8RQCCreVzg/bABGMqpGdELUgII8I971onXiWl56vnlDv0fq914OByYY+
         9H8JJFt8+amwGnSPGxkI+VKiRfFLVeV5p9VGl1cVkBv9oG9KvL6ArfyVkBmKzA3BcFjM
         DG/9OAjUGQ0vhxyO9RO2trk4GTzzcxU2ZQMGo2LPDxI2z04igXalS2Aopu3/zC5epkba
         J8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EmShqsgjReuSlQ39YbD/kmka875yPOjELnt/kPrlVCU=;
        b=yzwm4Penr8Gx+4Pa8uxA4rwuQe5hHpzRIgfAw07Q4qXQjpsyGVYsO6q249Xi8KwwGy
         YdN6n6NC60FoOI6iEvT+alA8oIniO+tO77nDRjuh5bF9nLzGb6f6iAxdUYPmLXTnkRjW
         i8un9sUmbUP1AYHkvOPtOpPCqFBL1pfjvmpQkJZv963FUpGXBm08/iDc8Jaq3QQEq8uL
         2R0bxS8BotUQD8rxeUfYW9iqbXR/RJSRnVpqbIBzIf9wd4hXYTkDR8L64T3dpC02A1KB
         KamdmVDHov8Y42uWCXDzK4fePybWKa+jCv7U2MUvnpgbCmVQZmJfObSyX4usN8pff6RF
         xEcw==
X-Gm-Message-State: ACrzQf0CCHDWiRsTlyQkahig00wyyc+bkEl87cBJb4yqfy022LNwvQNr
	VXefUMvcIJtlj0j98nsHJvxFvw==
X-Google-Smtp-Source: AMsMyM6wb7umR/R2rOX8AUcsRn7/fxrKV4r3sUFfTg81TBymC2MmGlahWia9RE9wrnaKeN+womk7aw==
X-Received: by 2002:a05:620a:4548:b0:6ee:deba:2795 with SMTP id u8-20020a05620a454800b006eedeba2795mr35412612qkp.621.1666882813995;
        Thu, 27 Oct 2022 08:00:13 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bs15-20020a05620a470f00b006ec09d7d357sm1134232qkb.47.2022.10.27.08.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:00:13 -0700 (PDT)
Message-ID: <2a09aec9-96c3-0ea9-a2b5-4a04c9982bb5@linaro.org>
Date: Thu, 27 Oct 2022 11:00:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 1/3] dt-bindings: rtc: convert haoyu,hym8563.txt to
 yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_080016_251737_1995869C 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
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

On 26/10/2022 18:58, Johan Jonker wrote:
> Convert haoyu,hym8563.txt to yaml.
> 
> Changed:
>   Add clock-frequency property
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
>  .../bindings/rtc/haoyu,hym8563.yaml           | 60 +++++++++++++++++++

https://lore.kernel.org/all/20221024165549.74574-7-sebastian.reichel@collabora.com/

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
