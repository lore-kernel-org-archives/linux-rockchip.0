Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C4C4C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 19:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7meanWHXg5hE6ECh1U1QBEcdKts/VdZ/jlBE0yFxu7Y=; b=wUkH9/AcE4CCmfBt7cXxV5dqiU
	/KJx2oPV3KtRVqkd+VOsbxy9iwqCd8jcYBoh5zJ2zkwr/SAqIIBPVIMuuKkNYnus/3lLZegLS3XQU
	Qnz4l6axC75QiueyJjperfDi9ehQpE7PcKeGbsnqt1TeKyj3WdoNJp1CCshiaVf3CZMh+e6DuHXF9
	hkszdMGazofGXCFEJ6LYMlUxrVJf0snlPEgfbguu+/QIFNMxn8uMhrqE+bMJgkGc9670Qbemz7zpV
	V7ccPTXGDORtW5xF3xWeSvE72+u6mNTg6qhRPX2Ljlv6qQbqxwsqXKmtjoZSGOZGznit1DeufyZdR
	zDK5N2Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1regM9-00000002Jpx-09wF;
	Mon, 26 Feb 2024 19:09:41 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1regM4-00000002JnH-0gwQ;
	Mon, 26 Feb 2024 19:09:38 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1708974566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MhPScaDHRZdhouzkoYyad3R9PfIyEE1nMSKg/JolwpQ=;
	b=I9egwK4T0p5eJfARevw+aGPmERrw3GF5gjjW79/nE95wu9QItS2TbWjRXlRTj4HfZzW31w
	Yaw8zlGTOSWMOlovsfFbnOIzVh5XFZDPSdA78Fvn4vMx7+yb+HwnxRPPk+OkpNDlYd8HoB
	1zbPKHe8+raiZJt9WfpUUFzyw9uB4rtdlrw9HhCAjsWXaZU63W0XaZ9ZXEjLp50F9eGen0
	gu8Lm/+hFZg3K1gC9PLBjqKAOshVEGLYMBUibpYrdkuj+gP0XmbSWMSdUmHid2ozYNc+dT
	OrxUt278Ydtbg2X1HwGgh8a/EEoBrX0Qv8oEHkcbkCpIPhQkUwTyZvDsZAw0Jw==
Date: Mon, 26 Feb 2024 20:09:26 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add cache information to the
 Rockchip RK3566 and RK3568 SoC
In-Reply-To: <20240226182310.4032-1-linux.amoon@gmail.com>
References: <20240226182310.4032-1-linux.amoon@gmail.com>
Message-ID: <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_110936_849847_CA17F333 
X-CRM114-Status: GOOD (  16.52  )
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

Hello Anand,

On 2024-02-26 19:23, Anand Moon wrote:
> As per RK3568 Datasheet and TRM add missing cache information to
> the Rockchip RK3566 and RK3568 SoC.
> 
> - Each Cortex-A55 core has 32KB of L1 instruction cache available and
> 	32KB of L1 data cache available with ECC.
> - Along with 512KB Unified L3 cache with ECC.
> 
> With adding instruction cache and data cache and a write buffer to
> reduce the effect of main memory bandwidth and latency on data
> access performance.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

I was about to send my own patch that adds the same missing cache
information, so please allow me to describe the proposed way to move
forward.

The way I see it, your commit summary and description need a rather
complete rewrite, to be more readable, more accurate, and to avoid
including an irrelevant (and slightly misleading) description of the
general role of caches.

Also, the changes to the dtsi file would benefit from small touch-ups
here and there, for improved consistency, etc.

With all that in mind, I propose that you withdraw your patch and let
me send my patch that will addresses all these issues, of course with
a proper tag that lists you as a co-developer.  I think that would
save us a fair amount of time going back and forth.

I hope you agree.


> ---
> [0] 
> http://www.rock-chips.com/uploads/pdf/2022.8.26/191/RK3568%20Brief%20Datasheet.pdf
> [1] 
> https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 ++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index c19c0f1b3778..49235efefb6b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -56,6 +56,13 @@ cpu0: cpu@0 {
>  			clocks = <&scmi_clk 0>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
> +			d-cache-line-size = <32>;
> +			d-cache-size = <0x8000>;
> +			d-cache-sets = <32>;
> +			i-cache-line-size = <32>;
> +			i-cache-size = <0x8000>;
> +			i-cache-sets = <32>;
> +			next-level-cache = <&l2>;
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> 
> @@ -65,6 +72,13 @@ cpu1: cpu@100 {
>  			reg = <0x0 0x100>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
> +			d-cache-line-size = <32>;
> +			d-cache-size = <0x8000>;
> +			d-cache-sets = <32>;
> +			i-cache-line-size = <32>;
> +			i-cache-size = <0x8000>;
> +			i-cache-sets = <32>;
> +			next-level-cache = <&l2>;
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> 
> @@ -74,6 +88,13 @@ cpu2: cpu@200 {
>  			reg = <0x0 0x200>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
> +			d-cache-line-size = <32>;
> +			d-cache-size = <0x8000>;
> +			d-cache-sets = <32>;
> +			i-cache-line-size = <32>;
> +			i-cache-size = <0x8000>;
> +			i-cache-sets = <32>;
> +			next-level-cache = <&l2>;
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> 
> @@ -83,8 +104,24 @@ cpu3: cpu@300 {
>  			reg = <0x0 0x300>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
> +			d-cache-line-size = <32>;
> +			d-cache-size = <0x8000>;
> +			d-cache-sets = <32>;
> +			i-cache-line-size = <32>;
> +			i-cache-size = <0x8000>;
> +			i-cache-sets = <32>;
> +			next-level-cache = <&l2>;
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> +
> +		l2: l2-cache0 {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-unified;
> +			cache-size = <0x7d000>; /* L3. 512 KB */
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
>  	};
> 
>  	cpu0_opp_table: opp-table-0 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
