Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C2D3C369A2
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 12:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2/J5SG7x4iSuoRpL4FO7H7Tq156owLyiv1TXVt0GlM=; b=t3B0O4aVh9HS1C
	x7mCzJHSTVMin/npaBG1OoBn3zdvWhfHJKgzRU76XLucyht8xIqbYFOoVO8XB01NSrMlZ/OWKtnmK
	AJfyizrP9pusP+Bgd6mycjEB9U3ixQLL4aNiImrgY89Se+0pv4WQEvVrwbZPOFu+pPgAqYD2kt1SZ
	dW7Uzh0M/sZO4RiiXwz67CiMHc/jQb8IPAowLYn0L0jitWybV874dWPHPPpC0CJyIqajEahxnMuO0
	tcAqBOY8h72Cqn/LMe60Yuell3iasA2+0fz9ojUPfRrQZ+CDqzwLk8PV54v81gtah5Tj6WDyomp1I
	/IjeKmskeK4QRYdd6laA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gOF-0000000Bhsr-3bic;
	Fri, 04 Apr 2025 12:43:19 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gM9-0000000Bhhq-3tIK;
	Fri, 04 Apr 2025 12:41:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39AA31515;
	Fri,  4 Apr 2025 05:41:02 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF7A53F59E;
	Fri,  4 Apr 2025 05:40:53 -0700 (PDT)
Date: Fri, 4 Apr 2025 13:39:58 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, "Rafael
 J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Vincenzo Frascino
 <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sudeep
 Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
 <konradybcio@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd
 <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, Conor Dooley
 <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu
 Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund
 <Steen.Hegelund@microchip.com>, Daniel Machon
 <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org,
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 01/19] arm64: dts: allwinner: h5/h6: Drop spurious
 'clock-latency-ns' properties
Message-ID: <20250404133958.5361be95@donnerap.manchester.arm.com>
In-Reply-To: <20250403-dt-cpu-schema-v1-1-076be7171a85@kernel.org>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
	<20250403-dt-cpu-schema-v1-1-076be7171a85@kernel.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_054110_063039_D3F5B162 
X-CRM114-Status: GOOD (  13.16  )
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

On Thu, 03 Apr 2025 21:59:22 -0500
"Rob Herring (Arm)" <robh@kernel.org> wrote:

Hi,

> 'clock-latency-ns' is not a valid property for CPU nodes. It belongs in
> OPP table (which has it). Drop them from the CPU nodes.

Looks alright, only affects H5 and H6, and they indeed have it in their
-cpu-opp.dtsi:

> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 4 ----
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 4 ----
>  2 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> index d3caf27b6a55..48802bf02f3b 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> @@ -16,7 +16,6 @@ cpu0: cpu@0 {
>  			reg = <0>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  		};
>  
> @@ -26,7 +25,6 @@ cpu1: cpu@1 {
>  			reg = <1>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  		};
>  
> @@ -36,7 +34,6 @@ cpu2: cpu@2 {
>  			reg = <2>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  		};
>  
> @@ -46,7 +43,6 @@ cpu3: cpu@3 {
>  			reg = <3>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  		};
>  	};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 2301c59b41b1..73e8604315c5 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -27,7 +27,6 @@ cpu0: cpu@0 {
>  			reg = <0>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  			i-cache-size = <0x8000>;
>  			i-cache-line-size = <64>;
> @@ -44,7 +43,6 @@ cpu1: cpu@1 {
>  			reg = <1>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  			i-cache-size = <0x8000>;
>  			i-cache-line-size = <64>;
> @@ -61,7 +59,6 @@ cpu2: cpu@2 {
>  			reg = <2>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  			i-cache-size = <0x8000>;
>  			i-cache-line-size = <64>;
> @@ -78,7 +75,6 @@ cpu3: cpu@3 {
>  			reg = <3>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
> -			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
>  			i-cache-size = <0x8000>;
>  			i-cache-line-size = <64>;
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
