Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 652C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ust5yrZw8vVFmu3+cbFSlWDzKp73yuBbl0Qjb9gFaYc=; b=iW0p5DB7oukhCE
	VXI41U/Bdxay2NSe2WaMndsp+cgYREX/LVCj/hf1evemHzuGxfw4vBv4mVllPg0O7PMrYgoSLyVd/
	hN+r64rYCWQ3aVVYh6oAPl/4BbvW61mZuDFsKWJhAuP7XiFPQg1754cFP7mtJtYAMzvA+X+Pyu8IV
	XbibfDek9G44L+jzrBETIoUkb1Pr8oav+58/LunZFeV6i9qn5ryI5jhXKXUEo+D9pmCrSIPxk+SgF
	i2jKZCqCY+zK1LVwkrMPHtcepqc+VGLVjNN2GT/UCDmCS3SZSVkhqADstWcF5p+Vhe9EmCq2g6TLf
	rYJGH9ySlXoopDdL+zCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHx2v-0026Ll-D4; Thu, 10 Feb 2022 00:10:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHx2i-0026KM-Lp; Thu, 10 Feb 2022 00:10:38 +0000
Received: by mail-ej1-x62e.google.com with SMTP id fj5so8541878ejc.4;
 Wed, 09 Feb 2022 16:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=KuWfWfuWnqE3Lf1pLThOJ9cbGV0fB5/az1fd713TDVM=;
 b=eORsgRc5opCCy82zZDyt/YscGu57swjkPfQHflgTUMgjhFWIaTU9Avbx8cRoq0Ja+0
 pPdE0URc2/SwKMYrfmpYNRCJlHk9mHA9K6htJlKYQkVrIVjWCL41AaKObtFjGuIbBb6m
 hafyl4vx9aXs9g6fxXOF8xxNLh56Nr+2udy3B6Uy8hagxNMDojP5oKiFOECZJ/S5n4l3
 3AaeEKJbs8rAmJNha6Mj8uASFVLRJNnl0Y4A8t7V4I80A9SG/2jG5uoDSwDc+ldo8UoO
 Cd+Q+oxKWOFppQQz+jeUO69JYP6ixXpx/38c+iUWuwM6JoabkalmscwpEj4hQ3LIZYuw
 DZsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=KuWfWfuWnqE3Lf1pLThOJ9cbGV0fB5/az1fd713TDVM=;
 b=09b3vVNsZAy1KcSABrZDNdJVyeFlZnw+zHwN1yea3hDgw11lbBEXEJwi4FQ1wzLdRl
 uW81P93k8kGYu6Hea1Qz9q6QJdFHjwQ/12M/geXa0OaGnV7fCnLGjdH2EnRhZJmuIOLz
 MpIClRhUWWfXpN37NjFSRutSuQ8FpOowrBu6M1DfLyiinL5FntOTVa5U8E3jXGiGW0z5
 Ujfu5SH2iryT2bGeyqca2G3iKaOYN+cerlWwsc6MsnX2Kk2fuDi8I1S/vU2/P53hMTUC
 UH9/87wtC62Zo2TkD0w/9hz/cjz/J9KFsGdI2p1DunPspXgnfX4tdpP3Cn5m9J4VsUHW
 5Abw==
X-Gm-Message-State: AOAM533ijqLQJdYvenFzxGrKcyntjFefOAQtYytPif+4gXHD2gWGwC1d
 nZiThfNNEUYoGg+QVOJVUik=
X-Google-Smtp-Source: ABdhPJz5HdwaLCZg0YGvrdms4wZCJ7d2vvjkkE7V8xjEya3YrI6hanWQq3TZeFNN4LgM/36xxIBSKQ==
X-Received: by 2002:a17:906:4781:: with SMTP id
 cw1mr4273977ejc.264.1644451833902; 
 Wed, 09 Feb 2022 16:10:33 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 i6sm8992267edf.20.2022.02.09.16.10.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Feb 2022 16:10:33 -0800 (PST)
Message-ID: <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
Date: Thu, 10 Feb 2022 01:10:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-20-s.hauer@pengutronix.de>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220209095350.2104049-20-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_161036_762060_7EB2EE66 
X-CRM114-Status: GOOD (  16.46  )
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

Hi Sascha,

Something with port and endpoint gives notifications.
Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
options were checked/covered (see rk3328 and rk3568).

Allow multiple vop:
port or
port@0
1x vop -> endpoint

2x vop -> endpoint@0
       -> endpoint@1

Also allow for connector:
(not all existing DT have this yet)
port@1
      -> endpoint

See also at graph.yaml
===

dtc -I dtb -O dts rk3568-evb1-v10.dtb
<stdout>: Warning (avoid_unnecessary_addr_size):
/hdmi@fe0a0000/ports/port@1: unnecessary #address-cells/#size-cells
without "ranges" or child "reg" property
<stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@0:
graph node has single child node 'endpoint@0',
#address-cells/#size-cells are not necessary
<stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@1:
graph node has single child node 'endpoint', #address-cells/#size-cells
are not necessary

===

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml

  DTC     arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dt.yaml
/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dt.yaml: hdmi@fe0a0000:
ports: 'port' is a required property
	From schema:
/home/user/Downloads/linux-next-20220202/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
  DTC     arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml
/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml: hdmi@fe0a0000:
ports: 'port' is a required property
	From schema:
/home/user/Downloads/linux-next-20220202/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml

===

On 2/9/22 10:53, Sascha Hauer wrote:
> This enabled the VOP2 display controller along with hdmi and the
> required port routes which is enough to get a picture out of the
> hdmi port of the board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - Sort nodes alphabetically
>     
>     Changes since v3:
>     - Fix HDMI connector type
> 
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416a..18f0f5abddcf 100644
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
> @@ -33,6 +34,17 @@ dc_12v: dc-12v {
>  		regulator-max-microvolt = <12000000>;
>  	};
>  
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>  	vcc3v3_sys: vcc3v3-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_sys";
> @@ -106,6 +118,25 @@ &gmac1m1_rgmii_clk
>  	status = "okay";
>  };
>  
> +&hdmi {
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;
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
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -390,3 +421,20 @@ &sdmmc0 {
>  &uart2 {
>  	status = "okay";
>  };
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@RK3568_VOP2_EP_HDMI {
> +		reg = <RK3568_VOP2_EP_HDMI>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
