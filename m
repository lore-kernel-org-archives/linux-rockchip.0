Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF3FC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:45:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8378660EB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:45:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8378660EB2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J56r+tBlg5P5AKswlYq8eztVlXBkwYhPRE0agmQMNKk=; b=LEYo790LWObI8FVRLGdMb4wM4z
	hRNRjXeHHu4dyGmaAvnphsgIZMccTARda0F6s4I0E7sKZBgQZ+7OS/J+dLVXt2/H7MAinZN71EZZN
	qjkqy8zeyYjMWiHleHwAnTa3Fb9NLTANM2hbI2Prhq35NtG5FJK0Q/uuJ4abKsSxYy5TDw2DWUIMF
	SrWg/AJdXYqHn7JcFDettnR9jpyh727K5wsBCfqmPA0jUaTLu5zTHWZo33UFpWmaeXss71i23KCvG
	HW6y3bb5WMXWP+zspeLnDS4SMWgoDx5oVLKJM/1va/8WWx6GWK8k/hAEw/D2lfuHaF+DQ8EBOrX+0
	TF910WZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8mgr-001hq0-7w; Wed, 28 Jul 2021 16:45:53 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8mgn-001hn8-3A; Wed, 28 Jul 2021 16:45:50 +0000
Received: by mail-ed1-x533.google.com with SMTP id y7so1883555eda.5;
 Wed, 28 Jul 2021 09:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TGfA1NrZyQu1R2a0GsuAljWypmKOfYdM6LECx2rex44=;
 b=HRJgApN2/CKWbs9hr+WFXtAIgadljNcdJPQRjHz7pIzlU8wYsvU2xwPdYaZctom5YM
 868KASENk4JOJZVCvGOomxLzc2xczWUPAC82JHgtK75pCNnsrwCXPnvFnO74TuGmr3ku
 5c7IBjOT/2DNJuPypDpKomQOXdDVLBLvLzBZCPNgv9pXCNcqe7i0myBvEEWurCB2F812
 fWJvsjOrVG30AMDEcGsTz3A+F946LOimskwfiYe8uG862hEvGSo9OF/Qf01pdc9w47+p
 MYgkcOnBOaFu6vtOmXhrhL1PI6aqjY+Ab82HUoOJBO6L1qzY+7oO3IqTfuw+ICsovIvP
 wKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TGfA1NrZyQu1R2a0GsuAljWypmKOfYdM6LECx2rex44=;
 b=Umw+v8EZOYSVhz4Skc4tSx+ZAFh4xMAONGo7IYjLwvekCkB73slSXej+M6l/e5ZYCJ
 4qdcRZd+Gw+3woNQCLRJiiby6QZJUp9C1izlLGAphmVj+R2bIiP5hpgZzjQzE6KkZMa8
 z/NKLVBv1xoSzZveS+Ydk/WitoExDWpa0X7t9pvVFPyWwuGz5pc9kMejUKVUgNw5pcuV
 U4yGTjYJ4dAQrEJwIR9DYeTntLXZ6YQU74AFHcSaQtzyExHg8U6Sj/jbqfwxElj1SU41
 h7+PaYo+8HyGTT3mDHzv1jX2reIidKOoNKObsk9oj97rJTScKIoI1/cekYTa5dlRgWit
 h0Uw==
X-Gm-Message-State: AOAM530XniDMz2SyzF1BOgnv9QLK/xlcNFHdQGwEvnZgxBcMHOmagoLO
 nUsPQEnFRtabaCPwTH4IIdlTHp6YFMI=
X-Google-Smtp-Source: ABdhPJytWGmxMlsX7P0Mt6mcG7wJoKfTFU8iv0Jiw9IHj/VGfVHrqPBGug3j3yVFepDVDbGW+XESLw==
X-Received: by 2002:a05:6402:2228:: with SMTP id
 cr8mr854158edb.309.1627490747347; 
 Wed, 28 Jul 2021 09:45:47 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 c7sm121524edn.45.2021.07.28.09.45.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 09:45:46 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Simon Xue <xxm@rock-chips.com>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-3-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <eb5932de-bd6c-de5e-d130-5252f98a12c7@gmail.com>
Date: Wed, 28 Jul 2021 18:45:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728161020.3905-3-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_094549_272740_8B393373 
X-CRM114-Status: GOOD (  15.76  )
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

Hi Michael,

On 7/28/21 6:10 PM, Michael Riesch wrote:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 69786557093d..8f4c40d71914 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -13,6 +13,11 @@
>  	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
>  	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
>  
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +	};
> +
>  	chosen: chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
> @@ -67,6 +72,70 @@
>  	};
>  };
>  
> +&gmac0 {
> +	phy-mode = "rgmii";
> +	clock_in_out = "output";
> +
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
> +	assigned-clock-rates = <0>, <125000000>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +
> +	tx_delay = <0x3c>;
> +	rx_delay = <0x2f>;
> +
> +	phy-handle = <&rgmii_phy0>;
> +	status = "okay";
> +};
> +
> +&gmac1 {
> +	phy-mode = "rgmii";
> +	clock_in_out = "output";
> +
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
> +	assigned-clock-rates = <0>, <125000000>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_rgmii_bus>;
> +
> +	tx_delay = <0x4f>;
> +	rx_delay = <0x26>;
> +
> +	phy-handle = <&rgmii_phy1>;
> +	status = "okay";
> +};
> +
> +&mdio0 {

> +	rgmii_phy0: phy@0 {

Could you test with ethernet-phy.yaml?

  $nodename:
    pattern: "^ethernet-phy(@[a-f0-9]+)?$"

> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reg = <0x0>;

Sort order is:
compatible
reg
(interrupts)
The rest in alphabetical order.

> +	};
> +};
> +
> +&mdio1 {

> +	rgmii_phy1: phy@0 {

dito

> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reg = <0x0>;

dito

> +	};
> +};
> +
>  &sdhci {
>  	bus-width = <8>;
>  	max-frequency = <200000000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
