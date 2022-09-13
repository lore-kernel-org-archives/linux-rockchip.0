Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 518DAC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 15:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrFr/x8luTvUMEgJFQep7SCzSyoPe/YIhWshLblYWto=; b=ObcwqaAZzAhNa3
	H184dnglJ1KJNV7SJ5bFJhc7Sgo058Ip/N3mwmAeo0IhtTfAvGcWcaqns2W/uCjwgEeb79Udo+1NV
	FvSnHBehY87Ez3mSu0aFh+/01BG4OvZnSprzVGmOAPzRaMPQWt9H2Im81wC5A06svVsQ0NJuCf5nk
	aREkbKesrkHvJWGnBfTa1YeYQouIk8jVdTTofC0pl31CTzCjdUv3Afj2Gj2dJs2SrDQevz9gUhSq2
	wDVqvuv9YJyVMTePOFxCu4vmxXelHkqt8OiBJZhAnmGakrWwdsBQwWnb9QobocZZZl8AkDzwOhCSD
	RQcERRohZ6VEUUexgfgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7y6-00Cd07-0V; Tue, 13 Sep 2022 15:36:58 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7u7-00CZID-6e; Tue, 13 Sep 2022 15:32:55 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-12b542cb1d3so23334115fac.13;
        Tue, 13 Sep 2022 08:32:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NHkxcPH5FKv85ET3//U58TPQlebHVHmJ2tvNIdZ+Pnk=;
        b=L+uGvePlF97n4HWvTgZDN5CLDFE9WNySLgT2/14lB5kywBozy5U5/JJDMQ3xcCN488
         BY5OMRpNF/WAEoomkWjMNziS4C7LsLUJ/51KpfglGo2U6Tsaf9lKHX/oFNlQF67KEHr7
         d4A7S9poUWvf/b9Z2HgXS/TAGPFeQoS9NwVAQulCFTFVn92JRaNU1d6+1upFZc5OJris
         tbqMyAUNFQUGZFCbGbHAMZuNh16YjwJPvwJZ91HJMWtdSXHqDq7lkYtJHe+EWfWtG/Va
         L5zqj1wYj+gKumBCuHB4y6RwankTcDPTEfzEyTUYrRvIpM963AeWBS/qxuO5WBwhRBkn
         hgYQ==
X-Gm-Message-State: ACgBeo1GFZEd21UEs3zoUb1R6TAWMjywb7C9AeezZQB9SpHsRCRAYAyu
	zq1OMJdy7OQyXU3TkNr6mw==
X-Google-Smtp-Source: AA6agR7/9mHH3ZQG6E/UF5ELa28GzOs6gjtCqRrgLO2UV3sUe47CiR9I5zbcMrvbHWigfDm8U1Xr1g==
X-Received: by 2002:a05:6870:4586:b0:10d:2ec7:be6 with SMTP id y6-20020a056870458600b0010d2ec70be6mr2203912oao.7.1663083166741;
        Tue, 13 Sep 2022 08:32:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r35-20020a05687017a300b0011e37fb5493sm7354117oae.30.2022.09.13.08.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 08:32:46 -0700 (PDT)
Received: (nullmailer pid 3776213 invoked by uid 1000);
	Tue, 13 Sep 2022 15:32:45 -0000
Date: Tue, 13 Sep 2022 10:32:45 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,rk3128-cru.txt
 to YAML
Message-ID: <20220913153245.GA3769654-robh@kernel.org>
References: <76d87f49-6a44-0a05-c9dc-af870fade924@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76d87f49-6a44-0a05-c9dc-af870fade924@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_083251_358663_A889C09B 
X-CRM114-Status: GOOD (  25.24  )
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

On Sun, Sep 11, 2022 at 11:20:10PM +0200, Johan Jonker wrote:
> Convert rockchip,rk3128-cru.txt to YAML.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3128-cru.txt    | 58 ---------------
>  .../bindings/clock/rockchip,rk3128-cru.yaml   | 73 +++++++++++++++++++
>  2 files changed, 73 insertions(+), 58 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
> deleted file mode 100644
> index 6f8744fd3..000000000
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -* Rockchip RK3126/RK3128 Clock and Reset Unit
> -
> -The RK3126/RK3128 clock controller generates and supplies clock to various
> -controllers within the SoC and also implements a reset controller for SoC
> -peripherals.
> -
> -Required Properties:
> -
> -- compatible: should be "rockchip,rk3126-cru" or "rockchip,rk3128-cru"
> -  "rockchip,rk3126-cru" - controller compatible with RK3126 SoC.
> -  "rockchip,rk3128-cru" - controller compatible with RK3128 SoC.
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- #clock-cells: should be 1.
> -- #reset-cells: should be 1.
> -
> -Optional Properties:
> -
> -- rockchip,grf: phandle to the syscon managing the "general register files"
> -  If missing pll rates are not changeable, due to the missing pll lock status.
> -
> -Each clock is assigned an identifier and client nodes can use this identifier
> -to specify the clock which they consume. All available clocks are defined as
> -preprocessor macros in the dt-bindings/clock/rk3128-cru.h headers and can be
> -used in device tree sources. Similar macros exist for the reset sources in
> -these files.
> -
> -External clocks:
> -
> -There are several clocks that are generated outside the SoC. It is expected
> -that they are defined using standard clock bindings with following
> -clock-output-names:
> - - "xin24m" - crystal input - required,
> - - "ext_i2s" - external I2S clock - optional,
> - - "gmac_clkin" - external GMAC clock - optional
> -
> -Example: Clock controller node:
> -
> -	cru: cru@20000000 {
> -		compatible = "rockchip,rk3128-cru";
> -		reg = <0x20000000 0x1000>;
> -		rockchip,grf = <&grf>;
> -
> -		#clock-cells = <1>;
> -		#reset-cells = <1>;
> -	};
> -
> -Example: UART controller node that consumes the clock generated by the clock
> -  controller:
> -
> -	uart2: serial@20068000 {
> -		compatible = "rockchip,serial";
> -		reg = <0x20068000 0x100>;
> -		interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> -		clock-frequency = <24000000>;
> -		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
> -		clock-names = "sclk_uart", "pclk_uart";
> -	};
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> new file mode 100644
> index 000000000..03e5d7f0e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3128-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3126/RK3128 Clock and Reset Unit (CRU)
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3126/RK3128 clock controller generates and supplies clock to various
> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3128-cru.h headers and can be
> +  used in device tree sources. Similar macros exist for the reset sources in
> +  these files.

> +  There are several clocks that are generated outside the SoC. It is expected
> +  that they are defined using standard clock bindings with following
> +  clock-output-names:

Which node does clock-output-names live in?

From the description, it sounds more like this should be 
clocks/clock-names.

> +    - "xin24m"     - crystal input       - required
> +    - "ext_i2s"    - external I2S clock  - optional
> +    - "gmac_clkin" - external GMAC clock - optional

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
