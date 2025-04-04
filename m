Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 998B7C369A1
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 12:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yg1s62Y/iw8L95oZ5hIyzmDSDCt+ejlMGt8o45yToIE=; b=HIyDRVbZXQ8Wd+
	AIfI6vR2N7TzQXeEGN5Y1OGLg8B1sVUx/8n4d8JThUleuE3AYvQHvX+fO17Ydp9ddDWlj7IE04Smh
	ogG3V4kBcxh/umxeEXLYrpVbTaZG/TCxOPBIbZsiQj+HIwWiZHnBxjk84Ru0uZOJ1bkZD9PXby5kt
	WcgjwniVWeAHF/9MY2wlqYWKoxB/sMjRsjAnu8WJqf+7q4ki/WfaKObIQMdB8aVcPPOTrS2p7Nf/i
	Ocnw2VKp9/YUT4op/6SoG7C2t/y/bvlLsRE20bD7qhR0RW09MqKVnQcoeKHXcB9P7Ru45os0GBFez
	yVAG6UuH+xk1A5v28/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0ftf-0000000Be2F-2ezw;
	Fri, 04 Apr 2025 12:11:43 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0fmz-0000000Bcf6-45wL
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 12:04:52 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5e686d39ba2so3760571a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Apr 2025 05:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743768288; x=1744373088; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ksgi80fBLzSJaAEI7Zj6pS0brYRqc/LQPT3hzVLK7xU=;
        b=MBVG77zuER3xCBQXuZ/FodIRN49BQs1QAIYZiRO93V3icUBoMw481MdNBxmM6/2PtW
         SoI9/zmqg0YYv4qX3bpiRG1m7D3Zl5tZqZeaTufB42gkpI8lwdKX/heHNVXgyBbjjYgU
         LmXm8Ys8Uyj/xlQSwfJ3Zbs9twJF+884Y0hnOlry0sHrY+Z2D54cW00PdXqs4Cb+UeCB
         U/dfS91G0mpWpErZfzWAbnsxi6u7cxrwVHprEyBgjIqjZpCqZWuAt2REEePcFJ1NQjXu
         Gv8VoJQTBgylkuMsvS573NDcajDDkx8RAKEFYK1NZMX/n16ifjqDGJjWWFwK+8t0eoTI
         XmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743768288; x=1744373088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ksgi80fBLzSJaAEI7Zj6pS0brYRqc/LQPT3hzVLK7xU=;
        b=jnOE44jk/qrNS86MIELNfuHUCeZVVR9xUFFYLNbrVUppyHIbyJ/ROyDE0RVe2z8Ovr
         NNYBc6QWU2xRV1l7eLEYiZIbIA5B6kU2ERR8duhZ4D9+c0y64zZf4H1AWxaH9/6hMsX0
         /cs+lrhZcAk6/n65zLHQJ3H2r74YyewcmVjvB9RgpXST1qI84qegrgmCG8OzwA8bL9FO
         CjCrNh0GzSnmVtSXr5Km21mcVuf9mQqDqWq3voXEtwcQ4eO6lqKNhiHmpkYkP22UDC1r
         uZ6TFfsOKzM+3Gp1K8sna9eRQGRdEDZWm9FN2SWK8dz8VKwgf8KorhavyaLKnjELP/GQ
         Zhjg==
X-Forwarded-Encrypted: i=1; AJvYcCWqfJTi5ltJbDPtx3DksQfYzP2PQD2OK2vBeYrpfIO5y3l1XnURwysiapqtfIe8zYRHIn3lbpQBWsYy7CBaLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwvtJbXrAZjeSgZdupWirnmTnfyf7c7667gLVu9k3ruxjgIV+f
	Br1ELgXSKPROio76fDIbbhS0NPTYDMWY42wUVO3ixzR6RTmXMbbvxhaWCxP/bFg=
X-Gm-Gg: ASbGnct4zfEvpUSCOOvZrk3vNDuR++03C4wV0XFnzNexsQsxGe8LvsNpoYPP20Cayla
	8KpPPgcPKRV0pAFgbMAEqYNu5Rf2juG9Qlw7/iNjNBkRvPZJvxgrgfYM2dqxGBK5purEYQxMZWi
	h4Y6TzyaJ4q9o/ZR8kj4BgBvqkCeSPuk5HzZj/pMzVTKbCKMYdSQyFzQ41fhLHiHbCujEHmnsnD
	CZEd4AJYAH0PNYIYzDVXcjRrrY9Eed2y9EMnnd1PQMkMlAkh2qJSOZzW947jcEZGgQvYfxNspef
	E0VuB3he1oNS+JTUTt6pwdTN5YvGRSCbB+DCEoP5vhnuBL1lgPWEv9cy
X-Google-Smtp-Source: AGHT+IH5Ij+fmf2Cv6jAlPmeJCCy1hd8btt4BuhHv/bD/os6ByinB+7Aq8sAGgjUE/8mRPndj8Zo0g==
X-Received: by 2002:a05:6402:2708:b0:5f0:9eb3:8e71 with SMTP id 4fb4d7f45d1cf-5f0b3e34eafmr2516192a12.27.1743768287658;
        Fri, 04 Apr 2025 05:04:47 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:e124:1321:48a4:8c63])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a458csm2276353a12.69.2025.04.04.05.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 05:04:47 -0700 (PDT)
Date: Fri, 4 Apr 2025 14:04:41 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
	Conor Dooley <conor@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mips@vger.kernel.org, imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 06/19] arm64: dts: qcom: msm8939: Fix CPU node
 "enable-method" property dependencies
Message-ID: <Z-_K2XDEcbtcCMVM@linaro.org>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-6-076be7171a85@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250403-dt-cpu-schema-v1-6-076be7171a85@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_050450_024436_FC3B44EB 
X-CRM114-Status: GOOD (  19.20  )
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

On Thu, Apr 03, 2025 at 09:59:27PM -0500, Rob Herring (Arm) wrote:
> The "qcom,acc" and "qcom,saw" properties aren't valid with "spin-table"
> enable-method nor are they used on 64-bit kernels, so they can be
> dropped.
> 

The bootloader we currently use on these devices reads these properties
to set up the spin-table, so removing these will break booting secondary
CPU cores.

The motivation for implementing it that way was that 32-bit vs 64-bit
kernel shouldn't be relevant for the describing the hardware blocks in
the device tree. The code in the bootloader is generic and handles
different SoCs (e.g. msm8916 with 4 cores and msm8939 with 8 cores, the
enable sequences are identical).

Can we keep this in somehow? To be fair, I'm not sure what property we
could match on to check if these properties are allowed ...

Thanks,
Stephan

> The "spin-table" enable-method requires "cpu-release-addr" property,
> so add a dummy entry. It is assumed the bootloader will fill in the
> correct values.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8939.dtsi | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> index 7cd5660de1b3..36f2ba3fb81c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> @@ -46,10 +46,9 @@ cpu0: cpu@100 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x100>;
>  			next-level-cache = <&l2_1>;
> -			qcom,acc = <&acc0>;
> -			qcom,saw = <&saw0>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs1_mbox>;
>  			#cooling-cells = <2>;
> @@ -64,10 +63,9 @@ cpu1: cpu@101 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x101>;
>  			next-level-cache = <&l2_1>;
> -			qcom,acc = <&acc1>;
> -			qcom,saw = <&saw1>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs1_mbox>;
>  			#cooling-cells = <2>;
> @@ -77,10 +75,9 @@ cpu2: cpu@102 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x102>;
>  			next-level-cache = <&l2_1>;
> -			qcom,acc = <&acc2>;
> -			qcom,saw = <&saw2>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs1_mbox>;
>  			#cooling-cells = <2>;
> @@ -90,10 +87,9 @@ cpu3: cpu@103 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x103>;
>  			next-level-cache = <&l2_1>;
> -			qcom,acc = <&acc3>;
> -			qcom,saw = <&saw3>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs1_mbox>;
>  			#cooling-cells = <2>;
> @@ -103,9 +99,8 @@ cpu4: cpu@0 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x0>;
> -			qcom,acc = <&acc4>;
> -			qcom,saw = <&saw4>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs0_mbox>;
>  			#cooling-cells = <2>;
> @@ -121,10 +116,9 @@ cpu5: cpu@1 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x1>;
>  			next-level-cache = <&l2_0>;
> -			qcom,acc = <&acc5>;
> -			qcom,saw = <&saw5>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs0_mbox>;
>  			#cooling-cells = <2>;
> @@ -134,10 +128,9 @@ cpu6: cpu@2 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x2>;
>  			next-level-cache = <&l2_0>;
> -			qcom,acc = <&acc6>;
> -			qcom,saw = <&saw6>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs0_mbox>;
>  			#cooling-cells = <2>;
> @@ -147,10 +140,9 @@ cpu7: cpu@3 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			enable-method = "spin-table";
> +			cpu-release-addr = /bits/ 64 <0>;
>  			reg = <0x3>;
>  			next-level-cache = <&l2_0>;
> -			qcom,acc = <&acc7>;
> -			qcom,saw = <&saw7>;
>  			cpu-idle-states = <&cpu_sleep_0>;
>  			clocks = <&apcs0_mbox>;
>  			#cooling-cells = <2>;
> 
> -- 
> 2.47.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
