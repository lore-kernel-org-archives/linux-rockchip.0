Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B57EB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 20:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8y165q4pWENw4BTJ0451w3WjUOvwM5TuFhVcg/otv8=; b=u/3L8H50Ye7rV9
	ApOp3i7rW+UEx3oi5J2JcTrjsYy5swaLj2+JCFrnbXb5/NzecIK7VR1pwZPTOGaz6I0Zk6eq5Fmy1
	FV+1oFw4ZlAc5m2pvo1z/HLH/XPTD4GSix8OETydfB8GO2xb+nZMsudG+7w+7rKpUY9sY8EmwEF8r
	Xt/W1CEpw5kcLKQNlQCRXuNTMVPhYq2ZNDE8l2ZmpOnmDoj4UU0+rRPcEEyHnsJncL/6WQIg26UVh
	o3jZOUZU4Mkj9ZjcoaNI+o6ITGBOejPjAs+crzPYnVOJhfI3bisfMGcO/8Ru5RrNP0gZ1+2tcRMNi
	SnBfO13YJfDXqI2l62tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHs0b-005cfg-35;
	Fri, 07 Jul 2023 20:24:53 +0000
Received: from ip-89-177-23-149.bb.vodafone.cz ([89.177.23.149] helo=ixit.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHs0W-005ceM-1w;
	Fri, 07 Jul 2023 20:24:52 +0000
Received: from [10.0.0.209] (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 999CC1606BD;
	Fri,  7 Jul 2023 22:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1688761474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vBGIgaXWfJ9MjRfBvCBMndi1eM82yolDh4VLL1fxh38=;
	b=TtVlZfjUjVqryACLzMiaCWW+AchdHouydS0TpeLEOFb38B8D27xZLv2qo1UK0FClAtJafd
	o/ClurDiBrn+B6sRUTlndK6AMRX8TEK2tewpy2dClvFWavJ3MzoZ8ogMrnhzndkPGvwDOz
	/Iyp6+kik2FwIP0VdhVbahapZIMiACg=
Message-ID: <709d585b-8ea6-4588-7d15-2119bd9bdca5@ixit.cz>
Date: Fri, 7 Jul 2023 22:24:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid
 regulator-init-microvolt property
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Jensen Huang
 <jensenhuang@friendlyarm.com>, Chris Morgan <macromorgan@hotmail.com>,
 Fabio Estevam <festevam@denx.de>,
 Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
 Furkan Kardame <f.kardame@manjaro.org>, Yuteng Zhong <zonyitoo@gmail.com>,
 Wenhao Cui <lasstp5011@gmail.com>, Lev Popov <leo@nabam.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Peter Geis <pgwipeout@gmail.com>,
 Dan Johansen <strit@manjaro.org>, Frank Wunderlich
 <frank-w@public-files.de>, Alex Riabchenko <d3adme4t@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Tianling Shen <cnsztl@gmail.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Andy Yan <andyshrk@163.com>, Aurelien Jarno <aurelien@aurel32.net>,
 Dongjin Kim <tobetter@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>,
 Anand Moon <linux.amoon@gmail.com>, Shengyu Qu <wiagn233@outlook.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
Content-Language: en-US
From: David Heidelberg <david@ixit.cz>
In-Reply-To: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_132449_121656_50FE31CD 
X-CRM114-Status: GOOD (  16.55  )
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

Reviewed-by: David Heidelberg <david@ixit.cz>

On 07/07/2023 18:22, Cristian Ciocaltea wrote:
> The 'regulator-init-microvolt' property is not currently supported by
> any driver, it was simply carried on from downstream kernels.
>
> The problem is also indicated by the following dtbs_check warning:
>
>    rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
>
> Remove the invalid property from all affected DTS files.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
>   arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
>   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
>   arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts      | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 4 ----
>   arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts      | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi     | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi     | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 -
>   19 files changed, 46 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> index 7ea48167747c..9232357f4fec 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> @@ -106,7 +106,6 @@ vdd_core: vdd-core {
>   		regulator-name = "vdd_core";
>   		regulator-min-microvolt = <827000>;
>   		regulator-max-microvolt = <1340000>;
> -		regulator-init-microvolt = <1015000>;
>   		regulator-settling-time-up-us = <250>;
>   		regulator-always-on;
>   		regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index a71f249ed384..e9810d2f0407 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -105,7 +105,6 @@ vdd_core: vdd-core {
>   		regulator-name = "vdd_core";
>   		regulator-min-microvolt = <827000>;
>   		regulator-max-microvolt = <1340000>;
> -		regulator-init-microvolt = <1015000>;
>   		regulator-settling-time-up-us = <250>;
>   		regulator-always-on;
>   		regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index b6e082f1f6d9..7c5f441a2219 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -375,7 +375,6 @@ regulator-state-mem {
>   			vcc_sdio: LDO_REG4 {
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <3000000>;
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <3300000>;
>   				regulator-name = "vcc_sdio";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> index a2c31d53b45b..8cbf3d9a4f22 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_logic";
> @@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_gpu";
> @@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <712500>;
>   		regulator-max-microvolt = <1390000>;
> -		regulator-init-microvolt = <900000>;
>   		regulator-name = "vdd_cpu";
>   		regulator-ramp-delay = <2300>;
>   		vin-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> index ff936b713579..1c6d83b47cd2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> @@ -218,7 +218,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -233,7 +232,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -259,7 +257,6 @@ vdd_npu: DCDC_REG4 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index 8d61f824c12d..d899087bf0b5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-always-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu_npu";
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 25a8c781f4e7..854d02b46e6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_logic";
> @@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_gpu";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index b276eb0810c7..2d92713be2a0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> @@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <900000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index 42889c5900bd..938092fce186 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -278,7 +278,6 @@ vdd_log: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> @@ -291,7 +290,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-min-microvolt = <900000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index 31aa2b8efe39..63bae36b8f7e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -234,7 +234,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-state-mem {
> @@ -249,7 +248,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   					regulator-state-mem {
> @@ -272,7 +270,6 @@ vdd_npu: DCDC_REG4 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_npu";
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index ff0bf24cc1a2..f9127ddfbb7d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -308,7 +308,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -322,7 +321,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -346,7 +344,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 674792567fa6..19f8fc369b13 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -307,7 +306,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -331,7 +329,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> index 25e205632a68..89e84e3a9262 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> @@ -173,7 +173,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -187,7 +186,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -211,7 +209,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -330,7 +327,6 @@ regulator-state-mem {
>   
>   			vcca1v8_image: LDO_REG9 {
>   				regulator-name = "vcca1v8_image";
> -				regulator-init-microvolt = <950000>;
>   				regulator-min-microvolt = <950000>;
>   				regulator-max-microvolt = <1800000>;
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> index e653b067aa5d..a8a4cc190eb3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> @@ -243,7 +243,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -258,7 +257,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -284,7 +282,6 @@ vdd_npu: DCDC_REG4 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> index 58ba328ea782..93189f830640 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> @@ -232,7 +232,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -246,7 +245,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -270,7 +268,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> index 59ecf868dbd0..a337f547caf5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> @@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -305,7 +304,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -329,7 +327,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index c50fbdd48680..45b03dcbbad4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -163,7 +163,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -177,7 +176,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -201,7 +199,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 917f5b2b8aab..e05ab11981f5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -350,7 +350,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -364,7 +363,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -388,7 +386,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index afda976680bc..51537030f8e3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -337,7 +337,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <550000>;
>   				regulator-max-microvolt = <950000>;
> -				regulator-init-microvolt = <750000>;
>   				regulator-ramp-delay = <12500>;
>   				regulator-name = "vdd_vdenc_s0";
>   

-- 
David Heidelberg
Consultant Software Engineer


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
