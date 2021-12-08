Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B8CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pqriOZDpRhUOqH4X3ezzwKPCW3hiCmLYrYoFGK+QQ0U=; b=NK8x2DcrypZVGKB/aBCPKmIUGA
	7oR14QoDp/Tw7cSG5p1XV13mRT4RXeW6XWqc7ghGtEGZhvkONnjuV9pe2lWE953L7I+ylLzGuB6CH
	8sdk7d0wIT6coSqgJepOnKXB9ETAbi9gBmiC1JfVJrlmAzVbiOg2BOQX6X8KgGnd2Yi0gUaOHQ9RK
	h819HJQ5OVKMkiRvhCvjLRc2x8pB/QFmxqfccYOpoXE/a4UtWIKny4IbBt3FpmVNvTmHELna8zhKu
	7m5GEhvfwc8D63axwY6Q1nqYd9LFxzZhOkOk1YnC9boayrrj4MebNfaZebVhWXMEQqUbG36sEqfEL
	+oRGEOug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0lx-00DjJE-Pz; Wed, 08 Dec 2021 17:30:29 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0lv-00DjIB-D5; Wed, 08 Dec 2021 17:30:28 +0000
Received: by mail-ed1-x533.google.com with SMTP id x15so10986480edv.1;
 Wed, 08 Dec 2021 09:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ydOJ0hWrH2W863CXj5rQJLRBf2Rbaq8al5HKjs+MyVo=;
 b=ShR73ntBzMEb995czFVKuH8ZLEJZUxeLPIVLlBpLGte9x1IWheq8x2oO+lV0T+F+um
 m46ZS5+GKmoKJKgUtdans/WAj35TOVx9K3fKTnVjIz0AHutPzKgIjw9hDnqalTmq0BNr
 hSTGLd9E4+yuIzOMoiSf5YVcBvL1xmlKG3pIRta6N/kKtVGwk0/oj8dWzOtVCZb7ru02
 7jIgmhaA8b+ZCK1zpAmFZUZi9a0A3lL0+Tkw68q/6zlp7d+I74e7lwyH1vs/RgfXeMsc
 znyMmIkygAi/pTEf3e3uan9mcNlCVceFHkd/fEixT4FXOeYvFX376EXSEXXvt17EXMsx
 v3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ydOJ0hWrH2W863CXj5rQJLRBf2Rbaq8al5HKjs+MyVo=;
 b=MTZ+hwQdSfrAlhqlvjUQrSkh9BO/tDAxRwl1UUSgiN9EskrnphPDvAXoRICccHxjA3
 POAO+nEg9O62/JpE0nrpb+6RtibFAl6JE3NS641UJ3qSJbY4fsex3yOlzVBLtpKD3vsg
 SHTiXSIeSiDYYGRZYGK7SmnZKdLOaMyniStt67t0WKLBbT7bU1aHLTwbkr5d0/HReqCi
 /5VSU4Q1tep8PUj6I5raFlMGlrXer+EWgEi+VNP2orOg/E5v1SfiYU3jlcBhjVc32b6B
 cFoyhfFr+Hke6acQSYcODfbKpqo4IlqV+1IgBWZip5DD1aPfoziQlU+CnEFMq8whlKvE
 9x7A==
X-Gm-Message-State: AOAM5309tTD70yzK+hZNCmy2dzZfQytBujy+B8q9d4Zx+wvjR3M0KS7K
 k9PBaq8PumcwqB2Cf+jEia8=
X-Google-Smtp-Source: ABdhPJw+ovJtjKkNdHnhkIk7BXnlqFxjaC23mAjpEC1jxW/SwfvYnT2NSYbB3BCv0AVqIS77XrEyRQ==
X-Received: by 2002:a50:9eca:: with SMTP id a68mr21586619edf.127.1638984625713; 
 Wed, 08 Dec 2021 09:30:25 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 sd2sm2012033ejc.22.2021.12.08.09.30.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Dec 2021 09:30:25 -0800 (PST)
Subject: Re: [PATCH 13/18] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-14-s.hauer@pengutronix.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bed5f9a3-611b-86be-798e-1034b25e7ba1@gmail.com>
Date: Wed, 8 Dec 2021 18:30:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211208151230.3695378-14-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_093027_479845_C68113F7 
X-CRM114-Status: GOOD (  17.93  )
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

Hi,

Could add a patch version to the subject?

On 12/8/21 4:12 PM, Sascha Hauer wrote:
> This enabled the VOP2 display controller along with hdmi and the
> required port routes which is enough to get a picture out of the
> hdmi port of the board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416af..b1b0963fa8525 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -7,6 +7,7 @@
>  /dts-v1/;
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include "rk3568.dtsi"
>  
>  / {
> @@ -106,6 +107,12 @@ &gmac1m1_rgmii_clk
>  	status = "okay";
>  };
>  
> +&hdmi {

> +	status = "okay";
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;

status below

> +};

===
Example from rk3066a-mk808.dts
In dtsi:
	hdmi {
		ports {
			#address-cells = <1>;
			#size-cells = <0>;
			hdmi_in: port@0 {
				reg = <0>;
				#address-cells = <1>;
				#size-cells = <0>;
			};

			hdmi_out: port@1 {
				reg = <1>;
			};

===
In dts:
	hdmi-con {
		compatible = "hdmi-connector";
		type = "c";

		port {
			hdmi_con_in: endpoint {
				remote-endpoint = <&hdmi_out_con>;
			};
		};
	};

===

&hdmi_out {
	hdmi_out_con: endpoint {
		remote-endpoint = <&hdmi_con_in>;
	};
};

===

> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -390,3 +397,27 @@ &sdmmc0 {
>  &uart2 {
>  	status = "okay";
>  };
> +
> +&vop {

> +	status = "okay";
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;

status below

> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint@0 {
> +		reg = <0>;
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@RK3568_VOP2_EP_HDMI {
> +		reg = <RK3568_VOP2_EP_HDMI>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
