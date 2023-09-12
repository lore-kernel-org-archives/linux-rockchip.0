Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FEC0CA0EC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Sep 2023 08:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVHwkMqf/F5IPP9cjl1Em7Pb3LaQ/SnGHgoxwL4qiEA=; b=weeQYtU2OiryGZ
	f5unCM4SQF/ERGx/U3nmCZhIOvxBTNUIK9xq7I4qv0TmHRZkIMSJjh6PFO6bsTRfYaElk+s5oAawo
	O33WRcBHonosN/g2M9g3EX1WO+lBygEnd14twtCiCHYSNE4aBtsqMzDgitwjY2bggeQzV9HZHPJxq
	vkpfMORcoVkAqxBocRLQAcmkx5Sa8a9PF3jM3RYK5Ju2z4dabLmUOVd8weUPmAnLyXIt8DDgaAG3d
	B6C7gZkeMi08ur/8Cco9lBqo5QDsjmN6EJmt6UehLN1bIT7OrDa3r+DmosGllkszHeIDPHBGM/DWv
	l0Ysa0dTE68TApHTYXeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfynu-002a5p-2B;
	Tue, 12 Sep 2023 08:31:26 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfynr-002a5F-2T
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Sep 2023 08:31:25 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-402c46c49f4so57170675e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Sep 2023 01:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507481; x=1695112281; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EuPbN8TWFRxPrQ6A6ygCi5l9ygWOcpZMpfHJfO7mfxc=;
        b=mDnfQd6vrWhXonpe49Or7pyJNPw97b4oKqDYsipiDFP/xTG5kdGVBBfG1pH3S4owkE
         HBraDquw5t/q0Qxq5s630hw45ONic8da+lrRtVQtMKqs1U5igH79lTsfoy+LBN4i1f35
         2XIXHV7DSF8XLnTt3Wf2wJqICSrASFQiDIh+4yE2+UDSjQNQO3j1fFODBjjibYYkOgMV
         cya5oFVerZreRJX1yPTSKC921UgXC75rOLfmAI8nxBYdWTdDralNDDvTcO0HZIX5Ws50
         B0BUUv8ttgIi+2w2goXHdsQqNVnOzTrQAmX7YBgvZnQNqBBFurnc55ODXLKrchzfEN3o
         hTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507481; x=1695112281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EuPbN8TWFRxPrQ6A6ygCi5l9ygWOcpZMpfHJfO7mfxc=;
        b=g9fn0zo+9Wpgp+jwiJsu3lnJeot5IGuk8aZN5WSHTy6SafEUhDHBpNsU1YZ9VuKrA1
         TVg2a0FdJroL0coUhmIxbcgMfzPlHxH4GuhtMEN9lenR4mNGwIoNT4a6OMFR1Ih5h3B6
         zrCcm7Qhb7gLzXV4Nk7M6f9/Sa2txZJGv+frzeclu66/147s7jrH2kn21m9wFEYaskVJ
         Ew+VbycxfRS3bE6ZFSCKihi7d0m9eHKoQBExJfVPBOc8DM5YaBYhl2Nz+xFf8gBI/078
         gtxGeLK6x+uXm6KM0rQkaDyf/R+IpozdzEr5RiFIHc692InrmRvtzoUw/Hv7RyoZaOCE
         gDsw==
X-Gm-Message-State: AOJu0YzZY9t/UWd2zxCyGTVQzcvMCGWktWlQJPUww4q3w1CpYh3m5MMg
	uWvRbIaaa8QObIcFQLfoHRVjFw==
X-Google-Smtp-Source: AGHT+IGcBBT6wOhCVomMeTq3Kvc61fMeSjhPUWmFmjot9Cxcj45vnlU9NKqKg0QurbXi6tUnv0pUmA==
X-Received: by 2002:adf:d082:0:b0:31d:c3d2:4300 with SMTP id y2-20020adfd082000000b0031dc3d24300mr8070196wrh.71.1694507481356;
        Tue, 12 Sep 2023 01:31:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id h13-20020a05600c260d00b003fe4ca8decdsm15516833wma.31.2023.09.12.01.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:31:20 -0700 (PDT)
Message-ID: <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
Date: Tue, 12 Sep 2023 10:31:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, jagan@edgeble.ai, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908164156.2846-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_013123_825885_90C448D3 
X-CRM114-Status: GOOD (  17.78  )
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

On 08/09/2023 18:41, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
> found on the device. The buttons are documented as "boot" and
> "recovery". The boot button is used by the bootloader to boot into USB
> recovery mode. The recovery button use is currently unknown.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index 1e2336d3065b..4c2d662d9c97 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -3,6 +3,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
> @@ -11,6 +12,34 @@ / {
>  	model = "Indiedroid Nova";
>  	compatible = "indiedroid,nova", "rockchip,rk3588s";
>  
> +	adc_keys0 {

No underscores in node names.

Suffixes usually are after -

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
