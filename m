Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACB3ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 16:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fplyusqRAa1H8mHd4vV8aPP5vJqDRFIX+bzP/2AgPiw=; b=tJFjFcjUR1f0Tu
	YcwYFOwZ6KRnl5LhdXAfIW+byoctyNudoXoERkBvtCBpZqJ34pyoTREVI+0byRe2DrexLYpoSGSJv
	+4krqfq0i/ejOzuePcFbkoCjywvng6Im3JK3Zp4lbsKoRzT39qiyjXy10+jgigzwwFwTXtNP7x5df
	ezPHlVRMLxRGpN5L/48rQQqgyhhf/UUpkT/kerhWvT5GH1ksnhV1jj6MjEKqlO+BZO3hTSBBjiE6t
	/1iYKU+cRvTr4alMSEisN+kJgq55uLH45SIIiEiJYgOrO8iYZGMQQUpr9BPjhZ7QXwXj/7RhoR9JP
	5p75zL5MgPncW8ZQ6Sig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbP5-00FOfN-H0; Tue, 06 Sep 2022 16:26:23 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVb8Q-00FDTe-4X
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 16:09:11 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k18so12780049lji.13
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Sep 2022 09:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AGK+sz0TUJzswJkzOmTR5fSgFOVg40XnbGraCYktuRI=;
        b=YV6RiYWlaxRg3F2sQWOI/4595QNSgL803EFFmBrTXsH5iWmLZfk7YWLJHq3XVIIwJa
         hxl+VwKFMhTxFnrkxuDCyXuQ+K3BUNio/2Uz1Cj3Z8Ld/zDpqzViGK2Wb+In2+3Zst4W
         4Ukw1xIobhTtwDJDAX+BUL0xXyDEvBXrRBVFZifXsRsocs23Zx7ot3n9v2shnG21ouqj
         dD8Q2r5Iy3PjggOI9A0Eqa8SNvGEBhHiQdcDKInbQd/s0SGiooQTwrIaxYPyghQjR9OU
         Ji42uU6jDDUFFg3P46B0nJ/eowqzyVn3qD/2MnubUhjEiYzcaPKBAKGJR+QLsjKgsm75
         bxoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AGK+sz0TUJzswJkzOmTR5fSgFOVg40XnbGraCYktuRI=;
        b=jXeALn+ckjB61RyzGI1tEiVbEHJt2nANg/l+slyj0WpbpPKwwPrREhRUq3onWgIS9o
         HxU+NB8a3HYb0Vxyl4xJ4HDksYUSvbogVTWiLvjYYHbSXcY7FujDi6ZOhg3OsZsG9aia
         DVXA+4JOQ6bIzL97se7DAkLEOQac1PSu08gARmS/olZ8rA+0rukzOalLwtJTSaNgGvle
         /iLbTygw9PhH3fQO6t6tIJa7Wi6XCwKcLr7Fi97W1AzpJ96Np0Bbsmz3RoxUkFMY/0Y1
         log2fo6j/5bNg4EvEVfESnRVDdzfRFEG6FbzIYffE4PFc9BBATA+uyZLHor5YbZpXIBd
         M93Q==
X-Gm-Message-State: ACgBeo1WunapDXn5T4g5Owkrkll3FMgsy5e6NyBwVC9GULu+SUoooakM
	JigK2DQ5ZQC4L1nYcSrsOhZZEw==
X-Google-Smtp-Source: AA6agR5Kirr92vR6Rq3sIqfLkPRppOYzJYHA1JIEFOhXtrzV+nker1w3wl7GyeY06o7nqTZrRlU6Vg==
X-Received: by 2002:a2e:92d5:0:b0:26a:8d21:1e37 with SMTP id k21-20020a2e92d5000000b0026a8d211e37mr1983172ljh.449.1662480547690;
        Tue, 06 Sep 2022 09:09:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g1-20020a056512118100b00492e570e036sm1819953lfr.54.2022.09.06.09.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 09:09:07 -0700 (PDT)
Message-ID: <78a86b33-689a-cc03-b2eb-2fb9d7b6169b@linaro.org>
Date: Tue, 6 Sep 2022 18:09:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulator suffix to BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220906155503.10971-1-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906155503.10971-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_090910_284130_372335CE 
X-CRM114-Status: GOOD (  15.70  )
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

On 06/09/2022 17:55, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add -regulator suffix to regulator names on Banana Pi R2 Pro board as
> discussed on Mailinglist
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220825193836.54262-6-linux@fw-web.de/
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 7a8d55a898f5..432469697544 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -46,7 +46,7 @@ green_led: led-1 {
>  		};
>  	};
>  
> -	dc_12v: dc-12v {
> +	dc_12v: dc-12v-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "dc_12v";
>  		regulator-always-on;
> @@ -66,7 +66,7 @@ hdmi_con_in: endpoint {
>  		};
>  	};
>  
> -	vcc3v3_sys: vcc3v3-sys {
> +	vcc3v3_sys: vcc3v3-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_sys";
>  		regulator-always-on;
> @@ -76,7 +76,7 @@ vcc3v3_sys: vcc3v3-sys {
>  		vin-supply = <&dc_12v>;
>  	};
>  
> -	vcc5v0_sys: vcc5v0-sys {
> +	vcc5v0_sys: vcc5v0-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_sys";
>  		regulator-always-on;
> @@ -146,7 +146,7 @@ vcc3v3_ngff: vcc3v3-ngff-regulator {
>  		vin-supply = <&vcc3v3_pi6c_05>;
>  	};
>  
> -	vcc5v0_usb: vcc5v0_usb {
> +	vcc5v0_usb: vcc5v0_usb-regulator {

While at it drop underscore in node name (hyphen is ok).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
