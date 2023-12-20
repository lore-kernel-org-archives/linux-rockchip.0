Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA39C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 11:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FquY2kJTylCmuwySrRCgrNzHo4ua7XLov2sdLHDJZ/U=; b=uXfzhKBYKbzPHP
	YVGL7U1VTHsxULw98ZgsMuQ5oy3ann9la34wiNGAFbN6EgjgrTm7+x7mltJXsySfDEYmQDMw5ip3+
	hgOSLpsMN8DTyEgEjZkK1NTrU6Ic5Hs5qO1baVS1IfvXFjGGIoGMe/uB0lB6p6y7tnAbldVEzfDjB
	7Hre/hrXy+9iMx9Ysx8Yw10pmE5rjuWX5wo4rjJWU92KURy4ZRKpmlsJrgFQn1MjNzglvipZtyMeg
	YxhKRUIyM/GD5nHN0PsoddXiJgHa5GJmJYfx6MgFt51QiegzqeJxVF0y76AUHustkJN7RnCZycWRb
	PlyCCuOB6UQk6MYfzLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFuYn-00H2z2-1g;
	Wed, 20 Dec 2023 11:16:21 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFuYk-00H2xv-1V;
	Wed, 20 Dec 2023 11:16:19 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3365f1326e4so4172840f8f.1;
        Wed, 20 Dec 2023 03:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703070976; x=1703675776; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1l9W12oVHW6Mudh64wfNHZpVn/IQivfs/Wow957VWA=;
        b=KBn/jF4uSe0yE8PpHcFiBd6L9xJcCU87oInA4Ah+Sy5qca7ftDk4+za+VTEBX77Bwq
         dK7WvXS+k4QUjb9Bdoy0f3lOwaXbGlsuH3eWWnWDIfcWKmZXHepM4N2hpgZreUzaOFz2
         gOzSUtkciG4PQDqKSss4fMsNhqiRJl+OKTE2kjdRfXQoxGALuIgX7iRI7YhUPV6AGsl/
         ucqqnQFbzJxC5sOCi1QNgkqyAEHw0/d5hOh4EBORCni7UVl9Qim911qQIXMLriC2/RUW
         /kWFT3rcZR4ALo4eWvHFnYMBkqgQB51j7y/aRx1Geasdh1XsFJ0BrES94Px2Ul/AyrxT
         llSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703070976; x=1703675776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V1l9W12oVHW6Mudh64wfNHZpVn/IQivfs/Wow957VWA=;
        b=wdJ41kVZ6T2gX99oLUDaOg3QUj/DLmNtsY4aHvLn8fmDiAgD/2x3tAFC/vNdvlVPqV
         3zMcbi9lghP8i/gkyFS9PjC90XLc6UyH37ak9tp4NnfqEZGZzsnO5cuhN7EQz+fvuPVf
         Pd0Fy0C1CJ+Vik85Na6thzhoZ2k3Xq1gWa1oNOEEk5DmgyC9Wby44NBtXsWozQ7tmoRH
         3bzs0j1siA8xu0R6ZZTWu/NXDf8klKbgBwJyw5G6x8FlZ/Xm11OUaud/z4EnlUdK/Fbd
         LhWXzlqf/4ydIfvb2Za1HaorFDKseRrzYNnfmNeJFLjTCIxp6KyKopRaYmF5Fp8QqJKY
         z7GQ==
X-Gm-Message-State: AOJu0YxV5wmXX8kb5UR207gGM0eAY7LPOZeyR8R+MDm3zBBUQ77kD9xl
	qnWmUW9JnTWkoIJFq9Di8Q==
X-Google-Smtp-Source: AGHT+IF5wvzfwQ+hjD/XU60WGWTBgHhchDr15sag5KKIqkbkYic8Aa8RlY878ZK2ZIERBVuyftN2RQ==
X-Received: by 2002:a05:600c:3795:b0:40b:578d:2496 with SMTP id o21-20020a05600c379500b0040b578d2496mr9056448wmr.27.1703070976123;
        Wed, 20 Dec 2023 03:16:16 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:7b59:686f:618b:4bd? ([2a02:810b:f40:4300:7b59:686f:618b:4bd])
        by smtp.gmail.com with ESMTPSA id e7-20020a05600c4e4700b0040c41846919sm7051751wmq.41.2023.12.20.03.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 03:16:15 -0800 (PST)
Message-ID: <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
Date: Wed, 20 Dec 2023 12:16:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 zhengxing@rock-chips.com, Andy Yan <andy.yan@rock-chips.com>
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-2-andyshrk@163.com>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20231218105523.2478315-2-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_031618_507486_16459F3C 
X-CRM114-Status: GOOD (  15.17  )
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

Hi Andy,
Am 18.12.23 um 11:55 schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The system will hang at bringup secondary CPUs
> without psci node.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v1)
> 
>   arch/arm/boot/dts/rockchip/rk3036.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 78686fc72ce6..5344803442a1 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -67,6 +67,11 @@ display-subsystem {
>   		ports = <&vop_out>;
>   	};
>   
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
I don't think that's an good idea. You most likely need that because you 
have downstream bootloader installed on this board. PSCI implementation 
takes place in TEE-OS for Rockchips ARM SoCs. There is no support for 
RK3036 in upstream op-tee OS. It's pretty much the same for RK3128 and 
RK3288.
If you use upstream u-boot it should be good as-is.

Alex
>   	timer {
>   		compatible = "arm,armv7-timer";
>   		arm,cpu-registers-not-fw-configured;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
