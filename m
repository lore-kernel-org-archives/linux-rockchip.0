Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78874C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 19:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xxiy8+xLAQyyVgXg5t0Oqa6Apm1iOPEYLwIsTkrVPAM=; b=qHa/v65/Ugk+w1
	quObENPOq2D2sdzTWsTE6BrGFRiLIRoGZPzGW28kzG4ImfczzedUcUW4OP2VCknldNL9St/m/NE7d
	Sq32ueOzzjEJdpGdwm0ZgMyARHgDxf7saRhMXFiCFbCnsTZBQmIDIY91mI/p846vHyx3y9lWplxSv
	Y0jgwATIqU2VUEsnXeDnv6nDlkwRJlF1qtj+phwf3wAIFT3w4kapi0glQaoCULdI5WWN2zUl7MUqF
	/c5T5zPG/FnXZJ/73M/XI/8MH74/lgn+rVyiy2Rixs1TPrKO8sKnPRDxJ66XUGnDCU7C0VfEFFFgQ
	Qu6oM7/ox04iv7gYyIRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAENF-005QGm-0h;
	Mon, 04 Dec 2023 19:12:57 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAENB-005QG1-1M;
	Mon, 04 Dec 2023 19:12:54 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50bfa5a6cffso1466974e87.0;
        Mon, 04 Dec 2023 11:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701717169; x=1702321969; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9kI2ilyfkKMwxxsn/dbQDbgAgwyvM+UnMyDP+dFhIHA=;
        b=P5ZycnLZk9E5W/frrfLo7OhqUVmYDVwLucwVZvxB0Z7X3lVMb5gZqRxoVOLlQkS7Ky
         aFmsOg0RuB7KqqnGtykfSv1Gnq/zVqIaiHdX5kwfg/pLNXeTgMMfWwIg9KfS8PvjoPKi
         KTw3asBg1QzrAe+dsvriR6fGUqDFstTNEL9k3PMF26DXuGzBnCKXm5UC5a6Og1TW5VuG
         6kCOJ8wMZ/xGo/iz8qVJMhXvXcO39MnyzwAilmCYyWfDi1XOLdPKG0wFBeKi2j/EklCb
         ruAxrhLCuQbzLcKIQ6ErMpLUgtjPCImy0mMidnl6ERj3B63YsJopZvpvc5W8C7T1lMrj
         CFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701717169; x=1702321969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9kI2ilyfkKMwxxsn/dbQDbgAgwyvM+UnMyDP+dFhIHA=;
        b=iBaBbd5xU56DIRrx9s0GEVGElH9POI426pJ492RPnMw7BjhuqhYxq/n99GKvkQhCvg
         FqzLrWCi/TcqWRJC/FZ7eimpwUl3TtXVEv6OfLzJONyMUa6gnwXh6z9py6YQen48wBVs
         mLkIwD222dUuQcsr0Dwn2XH18qRjtsburg2tTGwqRAGLg2JiyCfesEUHDX2pWUTphqEN
         ZH5ycnqOhcpc8Eahyg6lDUBdwv+cZV2t53q/3NdehzPyaNMWP1zTLz3jyO61B7+aDK2O
         sNR9w0HipwAz+Fz/drgL9DEszNChz9kXN1qxD51JKvqPYD/HQujYYrW1XfcRg3qrj5CG
         /djA==
X-Gm-Message-State: AOJu0Yy9DUGDaC3fPgu8FnzIMvZnCZPHuuD9oQO1HgffSTMqz2Ayg5AU
	RMjYfKf5ka2BiAhA/CmtYkHgytv+Sg==
X-Google-Smtp-Source: AGHT+IHTxsgENduBkcDZbHkgrnmLVH9Z2liamCQ1LTwaFrtxQoYZXBUeuOLJwNn2dwvUrY6hbJ0M4w==
X-Received: by 2002:a05:6512:158f:b0:50b:f7c6:2f7a with SMTP id bp15-20020a056512158f00b0050bf7c62f7amr1120720lfb.47.1701717168401;
        Mon, 04 Dec 2023 11:12:48 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:55ff:210b:5393:c9d7? ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id n10-20020aa7c44a000000b0054cd6346685sm114391edr.35.2023.12.04.11.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 11:12:48 -0800 (PST)
Message-ID: <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
Date: Mon, 4 Dec 2023 20:12:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add
 hdmi-connector node
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
 <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_111253_503320_8FB861B2 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,
Am 04.12.23 um 18:40 schrieb Johan Jonker:
> Add hdmi-connector node to comply with the inno_hdmi binding.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index 67e1e04139e7..a213333be011 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -13,6 +13,17 @@ memory@60000000 {
>   		reg = <0x60000000 0x20000000>;
>   	};
> 
> +	hdmi_con: hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "c";
According to [0], kylin has an A-Type HDMI port - so this should be
  +		type = "a";

[0] http://rockchip.wikidot.com/kylin

Regards,
Alex
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>   	leds: gpio-leds {
>   		compatible = "gpio-leds";
> 
> @@ -110,6 +121,12 @@ &hdmi {
>   	status = "okay";
>   };
> 
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
>   &i2c1 {
>   	clock-frequency = <400000>;
> 
> --
> 2.39.2
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
