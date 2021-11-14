Return-Path: <SRS0=ze+N=QB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEC5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Nov 2021 11:33:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C9BD60D07
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Nov 2021 11:33:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2C9BD60D07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FJJTeW6umyzQgTq8uEXPkwIV8puvQxxXd63xQDQW2vY=; b=JwWzdkqirZKHSOelA7rHveV0Cw
	IR5jMXf6liJQmBpzS43czXxDoVCmccYnT5Cu+7IzlO9P+Jif0vuCNNqdjIF+XYyLWDOG2u0zqWV8y
	iqo/ZZSkkz/tvVZX1i04n0LWv/9SbkRm0bY6gVjCIAlVdu9EBHF8q8D92J2Lo6zHO0n2k6iA1m9K1
	n7gbAhxDsQS0Ji+gYUBKJSQyGOagxRTNFXTbfVJVGVrB5K4l6g7uA6qBMZH9pvsBmRHJy4onp18Sy
	HGxoafw5aOl3VbYJM0hYvVUBNl4sxku7mfCNShm29maVkVGsIaUvf8Nkc982KpdlGH5ozUL02BK24
	NszToVdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmDlQ-00DaZw-4i; Sun, 14 Nov 2021 11:33:36 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmDlC-00DaWf-Bu; Sun, 14 Nov 2021 11:33:23 +0000
Received: by mail-ed1-x52f.google.com with SMTP id m14so58566212edd.0;
 Sun, 14 Nov 2021 03:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ogu/YhyQO8ICUmENU2FAy3SJRpIJSF2lRArsc1NLhYg=;
 b=OGFWL0sRErovz1CmXuD79Pc+BM+1UMzkkpVIsjQEYcS8LH3zaft7m/2u0GqYdhFVER
 cyyCr19jjWUWi3MLXoNrj8bCscylE2dFkS3+IU6gu98WhAWb/cRhxGhvbI+UMsyktXXh
 cWvuxc04U1tdViB+snjeyJIGIZlM1Bph3WkgNMK8T5eqiBt9gYJczxa/xxWd1ndmxXOa
 ljvV685pSS2gvNNJwwqlwd79dkufWsh4utGL6WYcdfK75EbWnV5EzIY/2gsbhR9uVOUh
 o36ALtbxYCLXmmnHWQfTmfsoe2/6MpW+UAaZfuJE7mkPOaRIKcEHOiwErQRo7SQT5cSd
 9qng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ogu/YhyQO8ICUmENU2FAy3SJRpIJSF2lRArsc1NLhYg=;
 b=57FPxiDbtQhSzkOoxz0JeoJ/+FKA4Zp/L/1TjI+arva1PSPiw22/X/i79k9MjuGVtv
 LJboYZSd928axTdnVJvEdxwzMYEcexereg6/NtdkAbdui/ovntJ36DShLUk82qHPAO9/
 5wjOSDGBjL2SjwFANLlmK0aI5a6Xo9Fp+bQaUhSdXBF5nfZ9BD9hguQibDp9147x9j4w
 XIGOtsgZiy6NSH2wUxqEsVAEgWkRxlsVKsy7AOuCpi9bta0gy/z7xPCf9ULYLZEbev8W
 FhuaUs4JbW3a4BZjDuw+fhx8s5tQf+lqr3Ae8DWOU63+gGJGyWIB2EAjDIiOMybFidyI
 3LjQ==
X-Gm-Message-State: AOAM533D28wludtLzZR1K9+hm0t8ivKInceMbZBuUWmCfsT6fVSuio1b
 QZmli/6e7zR0iklq/wiMmxg=
X-Google-Smtp-Source: ABdhPJwV64eWsyJF9IcerkYBp/vULP771LGHIpnfkZPUzLrrkmMRTLPAowgjZeLBZWvUEFXBZNEkNQ==
X-Received: by 2002:aa7:c3c8:: with SMTP id l8mr2270702edr.278.1636889600864; 
 Sun, 14 Nov 2021 03:33:20 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 m11sm5789601edd.58.2021.11.14.03.33.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Nov 2021 03:33:20 -0800 (PST)
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add naneng combo phy nodes
 for rk3568
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
 <20211025080632.32063-4-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <167392de-8b5e-6877-94aa-66d9368e96a7@gmail.com>
Date: Sun, 14 Nov 2021 12:33:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025080632.32063-4-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211114_033322_454290_AE36822E 
X-CRM114-Status: GOOD (  16.93  )
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

Hi Yifeng,

Add more compatible strings to:
Documentation/devicetree/bindings/mfd/syscon.yaml
Also add mfd maintainers and list to CC.

On 10/25/21 10:06 AM, Yifeng Zhao wrote:
> Add the core dt-node for the rk3568's naneng combo phys.
> 
> Signed-off-by:  Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v3:
> - Move pipe_phy_grf0 to rk3568.dtsi
> 
> Changes in v2:
> - Move phy0 to rk3568.dtsi
> 
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 21 +++++++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 2fd313a295f8..4db5d3c2a04e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,11 @@
>  / {
>  	compatible = "rockchip,rk3568";
>  
> +	pipe_phy_grf0: syscon@fdc70000 {

> +		compatible = "rockchip,pipe-phy-grf", "syscon";

Compatible strings are supposed to be SOC related.

compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";


> +		reg = <0x0 0xfdc70000 0x0 0x1000>;
> +	};
> +
>  	qos_pcie3x1: qos@fe190080 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe190080 0x0 0x20>;
> @@ -71,6 +76,22 @@
>  			queue0 {};
>  		};
>  	};
> +
> +	combphy0_us: phy@fe820000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe820000 0x0 0x100>;

> +		#phy-cells = <1>;

Dump things with "#" down the list above status.
> +		clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;

> +		reset-names = "combphy-apb", "combphy";

There are 2 resets. When the reset order does matter then use
devm_reset_control_array_get() to get the resets.
The use of reset-names is then not needed.

> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +		status = "disabled";
> +	};
>  };
>  
>  &cpu0_opp_table {
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 46d9552f6028..4380580d061b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -214,11 +214,26 @@
>  		};
>  	};
>  
> +	pipegrf: syscon@fdc50000 {
> +		compatible = "rockchip,rk3568-pipegrf", "syscon";

compatible = "rockchip,rk3568-pipe-grf", "syscon";

> +		reg = <0x0 0xfdc50000 0x0 0x1000>;
> +	};
> +
>  	grf: syscon@fdc60000 {
>  		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xfdc60000 0x0 0x10000>;
>  	};
>  
> +	pipe_phy_grf1: syscon@fdc80000 {
> +		compatible = "rockchip,pipe-phy-grf", "syscon";

Compatible strings are supposed to be SOC related.

compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";

> +		reg = <0x0 0xfdc80000 0x0 0x1000>;
> +	};
> +
> +	pipe_phy_grf2: syscon@fdc90000 {

> +		compatible = "rockchip,pipe-phy-grf", "syscon";

Compatible strings are supposed to be SOC related.

compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";

> +		reg = <0x0 0xfdc90000 0x0 0x1000>;
> +	};
> +
>  	pmucru: clock-controller@fdd00000 {
>  		compatible = "rockchip,rk3568-pmucru";
>  		reg = <0x0 0xfdd00000 0x0 0x1000>;
> @@ -1077,6 +1092,38 @@
>  		status = "disabled";
>  	};
>  
> +	combphy1_usq: phy@fe830000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe830000 0x0 0x100>;

> +		#phy-cells = <1>;
dito

> +		clocks = <&pmucru CLK_PCIEPHY1_REF>, <&cru PCLK_PIPEPHY1>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY1>, <&cru SRST_PIPEPHY1>;

> +		reset-names = "combphy-apb", "combphy";

dito

> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
> +		status = "disabled";
> +	};
> +
> +	combphy2_psq: phy@fe840000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe840000 0x0 0x100>;

> +		#phy-cells = <1>;

dito

> +		clocks = <&pmucru CLK_PCIEPHY2_REF>, <&cru PCLK_PIPEPHY2>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY2>, <&cru SRST_PIPEPHY2>;

> +		reset-names = "combphy-apb", "combphy";

dito

> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
> +		status = "disabled";
> +	};
> +
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
>  		rockchip,grf = <&grf>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
