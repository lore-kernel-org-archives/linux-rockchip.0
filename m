Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF82C27C76
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jan 2023 13:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVKiFo6OBWnmaWMQr1dhHmGw/9rCXrbw1GBQ1H/mnNQ=; b=ExY9ZvFsPY4HoD
	Hl+4OrlCsfcVBd3mjURAKvsmFswml6jMC945Jpac+bOlo2FypKbDdRPs3aIyCreBMB1bwmZisDpO5
	AL8Xy8/YHbnUZpDZkn41TX0d9kB3/vMlyrqSuf93hO9/Il5+iAdwuT1o2Jvu6MznIpdQBTfdO7Qnr
	N67RWV7nDGUAxWdSqFs0WAC43QXIaLgn12QSOxU5qJQ/ZuBTMj+vzH73ZgWrMI/ZGpTe16AaBeSER
	jvKVuj8kxMqvXlQ2xUnr9cL1G3veksmP/6o1eZ6qpEqW3YeDJ7mdDo3dCdj1i3TVdesxZ/rC3pZ7F
	duR2wLc6hqRhSSh2FLbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJamC-00FNVC-D1; Sun, 22 Jan 2023 13:52:52 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJam2-00FNSx-HU
	for linux-rockchip@lists.infradead.org; Sun, 22 Jan 2023 13:52:43 +0000
Received: by mail-wr1-x42b.google.com with SMTP id y1so4102360wru.2
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 05:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KsFQoxntUEMKG4+ARLmikKjFVw81S61EgSCu1Qy3vpA=;
        b=LguRAKctglMkYAlkR0q7Se29qBW8QMYfJ+SeBavnV+whWe6xFirpcG/fTUUJQv9uu8
         K84poSEaVOnfWQjNWTlmdZLXgQGNT2Vn8UQw2pmHbVWE2pevu9CA6KoENYU0FB3DzQk+
         8cLrx3zmbv8lR2dkC0XILEOaumGpsZG6wNMbHl1wE7S/j+2KNMZOKRZMpLeaO9HD/Ftx
         CrEj9fDyS4dQFIvkWYKM80bUv+ILDLAqGCMJL5dZVIaeaFFhVucDeRTrvwTe+16eSlZ6
         T4dlG5uJIzMuSyoECrHVzLeZisLSIGyYpBwIjpDDWa/hQVyPILU8Msmp4n3slWN/4rO8
         H/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KsFQoxntUEMKG4+ARLmikKjFVw81S61EgSCu1Qy3vpA=;
        b=J2UHJLEL++CFivuyfNnzY8cXbDEdWAouY6csBRMTgz8bgFCTrwGspTzx+kjJ3fGzAA
         qHDNXsioRbQvZqEbY6eHHh0C9EVVdFl/ubXom4I4KrrqmREztsmXQecJsjq00YvGAPS/
         JZJigPJ0F5e9rUywuyX9cFiPn5plOii4Y9ikXlXl8/KjmIuowtQ3Q0nU7vVvLmoAOi+J
         9jeENEzAMylCMrw3WMdY3+h8W8HywA/+sSpA7qzmrP9jmi5hGrXpxYa1ZIroFdDqlXUG
         bWgvBI7OModPQ1ygBwGG8W/ijV/fbEyj5fDhLNIKK/zjcdTpWvkE2cf4fcOebbiPPDX8
         +Lzg==
X-Gm-Message-State: AFqh2krVmb7wbhGiOI9N0h0a4dXi9ZWQHbSLYZNpMORUXLTswjGwEY1G
	bv7GN0GVCIAxAPp5nrLR2Dqy1A==
X-Google-Smtp-Source: AMrXdXu9rjfV7o7q3z/mrw8B4LNoGjFeBeukadWnDG+Pl5w6ReXv2THh7/euOg4HR+E16W+I/jqc2w==
X-Received: by 2002:adf:e912:0:b0:2b9:3cbb:6e02 with SMTP id f18-20020adfe912000000b002b93cbb6e02mr18277539wrm.27.1674395560165;
        Sun, 22 Jan 2023 05:52:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d6787000000b0025e86026866sm3800468wru.0.2023.01.22.05.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 05:52:39 -0800 (PST)
Message-ID: <d449d8f1-c5ef-89ea-49b9-aa0cfb5283f0@linaro.org>
Date: Sun, 22 Jan 2023 14:52:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_055242_602952_D64CB85E 
X-CRM114-Status: GOOD (  11.64  )
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

On 21/01/2023 12:06, Johan Jonker wrote:
> Currently all Rockchip gpio nodes have the same compatible.
> Compatible strings should be SoC related.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/gpio/rockchip,gpio-bank.yaml     | 26 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index affd823c8..a604c3638 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -11,9 +11,27 @@ maintainers:
> 
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,gpio-bank
> -      - rockchip,rk3188-gpio-bank0
> +    oneOf:
> +      - const: rockchip,gpio-bank
> +      - const: rockchip,rk3188-gpio-bank0

That's an enum so keep them like that

> +      - items:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
