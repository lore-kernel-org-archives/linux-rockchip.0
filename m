Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A4FC38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 08:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v7Ub5jNHAvT08vxt9ptz6ae7XVLUXTYUVCFs9EL/yOM=; b=mUG2ChXUobGhZCTiFoX7jQnuiC
	8MH4D4rFTGal4IrWHkP5Zg7i/kQEUU8Fh57oYjnp+wfyYLVDQXlNnxipC5w5NNbn21gTMIyC33xzj
	3xtpYwMFEmvHm7dJLmF6zYsMDQC4ccsgRmI9tz2iDFA4K4f0quVfutn2NeoehHGFfpC2vCUU5SRwj
	Qtw1QHFsryj1QcfK+nC2rVGTrk/iEUQw6Qy+4LqiS/1kAJc0Dptb4jB4InuxoXA6QLg32Cur0TZqF
	tptYyDw4vueEhweEdViAsHD0Hst+aH9UREwSqRK+3czDfB0Ebh7Wr5TtlveIjlP9SKkbq/lc3zKnW
	/98wDCDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQ2z-009XqU-Lv; Mon, 31 Oct 2022 08:21:29 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQ2x-009Xm7-1f
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 08:21:28 +0000
Received: by mail-wr1-x42a.google.com with SMTP id bs21so14854931wrb.4
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 01:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=B6O0yq/kArzQA3EjTthD7t4BqBLyfgCNNdUUmUdG3qU=;
        b=n2+3G4DwdjxIILUE+TM1kBRvlJ1r5Ef4wwxfEB/z9yEBBjVQ/zvTcveHW9rytFRzZN
         iVHADrFJWkyY26if4PdWZoAaE0CItMH7Xmg2k2W9Ac59XLxBsyqSegC/t4CnJLX5hHkJ
         aObwh9I8MtBOJPyx+s9NrarMSicJBG7k4aZ0Hit0+vNkjQddSvkm5uMR1Tb47CGyfbND
         o0RGKndoy4qEzSCXdIChH1tTDQVcS6+w9R1Lq7HpJEHuuRA7oVLoMc0nQnfUf+hOjRAD
         GJHmxc0P6ipbwEz+FwcPaBve7R3ajScbNjxOGJ/7X35Kq3M7BMeQw9bN9YK8qkUQ2H3U
         m6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B6O0yq/kArzQA3EjTthD7t4BqBLyfgCNNdUUmUdG3qU=;
        b=IyWqqxBw+fE+jIFpFN70iI+lvoG0+2yENpNXBYBUXwiwpjLLKF4rlqyuebexnFMd97
         fZMRWKTq7WfSJYkLjrYMWVPtnjsr/eGPbjmkctJq0PFzUeKZaEiAm2y1gdg6q3oadX0W
         xnQeXb5eSe4SCz35aKYAbgVnMgq4fdCKDhZRlCYMbZ3EZpEtTdsSjysft0G8JRx3m6Wr
         19tiNXuPtwPfUqJ1BJJ60WdgJuN6TVxx1C3G0EIuDO6JkTfrN5FX2Nda1WCkIsv+Dt51
         V2oMZ7MXFqiPFi69U+KnzYXGOc8UjO1a4G7tvKrtsMShxZbmoYAaPmn8Nl/xLpr4oW7q
         l8dw==
X-Gm-Message-State: ACrzQf3xcbwvy3ZQ7CvA0iYd+KQoaPAZnOz18Fk+x7ztD0Q7UTXzX6pa
	SuJIePEvwLSSDixyJdfK9PSAlw==
X-Google-Smtp-Source: AMsMyM57VcVHDP0Am5dwUDQkFQhUoaIjsha3sPb6oMcU0/C65JrHbcwoqHOdZqTThXawgWqT7nV1Dw==
X-Received: by 2002:adf:f88b:0:b0:236:7134:d4ec with SMTP id u11-20020adff88b000000b002367134d4ecmr6779896wrp.669.1667204481398;
        Mon, 31 Oct 2022 01:21:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:898:f380:f572:21f0:736:a7ca? ([2a01:e0a:898:f380:f572:21f0:736:a7ca])
        by smtp.gmail.com with ESMTPSA id k3-20020a05600c1c8300b003c6b7f5567csm21814431wms.0.2022.10.31.01.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 01:21:21 -0700 (PDT)
Message-ID: <3ee78024-036d-d459-50a6-9402a79aee89@linaro.org>
Date: Mon, 31 Oct 2022 09:21:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCHv2 5/6] arm64: dts: meson: remove clock-frequency from rtc
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
 <20221024165549.74574-6-sebastian.reichel@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221024165549.74574-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_012127_096150_4D1E22C5 
X-CRM114-Status: GOOD (  13.69  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 24/10/2022 18:55, Sebastian Reichel wrote:
> 'clock-frequency' is not part of the DT binding and not supported by the
> Linux driver.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts    | 1 -
>   3 files changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> index 6ab1cc125b96..202deb4e2d63 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> @@ -140,7 +140,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> index f43c45daf7eb..b21172ece1fa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> @@ -270,7 +270,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> index b8ef3bd8b840..1703da3235ea 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> @@ -89,7 +89,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   		wakeup-source;
>   	};


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
