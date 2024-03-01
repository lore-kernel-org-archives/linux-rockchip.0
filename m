Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39233C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 06:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kMHE56iO01WsyuOovv7oyhtqAzMF2HtqVBCXdba/Mi8=; b=iaUWW+yY8G41zdWuuTBRQaNOX+
	jpcDKhQpQA++xDdlw083zl89ZPNnoswtoqEuw1nNHOL0UORPZM1uaGhWJjYgnMvvdPPhpwWrmSQr6
	0X27v8fKbUkwV2x2j9ZnuFn1noxaS9lh508xcRR8quuUg+vNfWQIdU0ATdQdAzSD1SjEIJClo282N
	zl1uljO98wwQzJTUMBWPWXPknlYInoB82us1qU7ZdlQtMBeE9sKgul3dQxu+pEYghWMwXLBb7f80Y
	LPyVCsXSHq6W1CDTqPtdntmxTi4929bpuhSUxVPzyxXfeGeq+s2RRZeteqkmO2yBTKDQrlownd+UU
	yVjzehbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwVM-0000000Gakc-0kx0;
	Fri, 01 Mar 2024 06:36:24 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwVI-0000000GajY-1duL;
	Fri, 01 Mar 2024 06:36:22 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709274978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J6gzN4EuRpgmrmWnxz0mdsD/+1mrLoS4280/mKFSM0Y=;
	b=Vo8SonFQqGUwQAwgGoSShVQajvLDVoAP3kz46mC4H61QgvNUwypN0Q/uuM5dK5ybyRI35D
	jXC5EAwOUgt+YD6S5cfU9OrM3xFIVr1eGJ+UWHHZn+3e7gx/NAtCI9LWxikEvKAqqpgM1m
	bzOO6+xNS/35cy82r7o5s/MMZgyC8NLzhTuFyicpjurZ6t8oNJrkYpKWkiQJHPQdMk1WgM
	gktWzmAm3MaDre0DIKd9tiGQQMjEh3hi3/d02ZoiXxcnpo0OZyUZdA1Sm0ci+PEyXMsLZa
	R30DuLTGgmHoFodYTuSMp7S2oUJqqqA9klNuVelqaGneI2HvZHET3PlJqgetSQ==
Date: Fri, 01 Mar 2024 07:36:18 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] arm64: dts: rockchip: Add further granularity in
 RK3588 CPU OPPs
In-Reply-To: <20240229-rk-dts-additions-v3-5-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-5-6afe8473a631@gmail.com>
Message-ID: <5e088e85cd006dc0d9cdefc2b39b4ff0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_223620_784694_8CF4218E 
X-CRM114-Status: GOOD (  14.00  )
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

On 2024-02-29 20:26, Alexey Charkov wrote:
> This introduces additional OPPs that share the same voltage as
> another OPP already present in the .dtsi but with lower frequency.
> 
> The idea is to try and limit system throughput more gradually upon
> reaching the throttling condition for workloads that are close to
> sustainable power already, thus avoiding needless performance loss.
> 
> My limited synthetic benchmarking [1] showed around 3.8% performance
> benefit when these are in place, other things equal (not meant to
> be comprehensive). Though dmesg complains about these OPPs being
> 'inefficient':

As I already promised, I'll perform additional testing, in a 
reproducible
way, and come back with a detailed report.

> [    9.009561] cpu cpu0: EM: OPP:816000 is inefficient
> [    9.009580] cpu cpu0: EM: OPP:600000 is inefficient
> [    9.009591] cpu cpu0: EM: OPP:408000 is inefficient
> [    9.011370] cpu cpu4: EM: OPP:2352000 is inefficient
> [    9.011379] cpu cpu4: EM: OPP:2304000 is inefficient
> [    9.011384] cpu cpu4: EM: OPP:2256000 is inefficient
> [    9.011389] cpu cpu4: EM: OPP:600000 is inefficient
> [    9.011393] cpu cpu4: EM: OPP:408000 is inefficient
> [    9.012978] cpu cpu6: EM: OPP:2352000 is inefficient
> [    9.012987] cpu cpu6: EM: OPP:2304000 is inefficient
> [    9.012992] cpu cpu6: EM: OPP:2256000 is inefficient
> [    9.012996] cpu cpu6: EM: OPP:600000 is inefficient
> [    9.013000] cpu cpu6: EM: OPP:408000 is inefficient
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#me92aa0ee25e6eeb1d1501ce85f5af4e58b3b13c5
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 87 
> +++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index bd39c5c47bfb..6b4ecc7ab37d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -360,6 +360,21 @@ cluster0_opp_table: opp-table-cluster0 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1008000000 {
>  			opp-hz = /bits/ 64 <1008000000>;
>  			opp-microvolt = <675000 675000 950000>;
> @@ -392,6 +407,27 @@ cluster1_opp_table: opp-table-cluster1 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1008000000 {
> +			opp-hz = /bits/ 64 <1008000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1200000000 {
>  			opp-hz = /bits/ 64 <1200000000>;
>  			opp-microvolt = <675000 675000 1000000>;
> @@ -422,6 +458,21 @@ opp-2208000000 {
>  			opp-microvolt = <987500 987500 1000000>;
>  			clock-latency-ns = <40000>;
>  		};
> +		opp-2256000000 {
> +			opp-hz = /bits/ 64 <2256000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2304000000 {
> +			opp-hz = /bits/ 64 <2304000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2352000000 {
> +			opp-hz = /bits/ 64 <2352000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-2400000000 {
>  			opp-hz = /bits/ 64 <2400000000>;
>  			opp-microvolt = <1000000 1000000 1000000>;
> @@ -433,6 +484,27 @@ cluster2_opp_table: opp-table-cluster2 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1008000000 {
> +			opp-hz = /bits/ 64 <1008000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1200000000 {
>  			opp-hz = /bits/ 64 <1200000000>;
>  			opp-microvolt = <675000 675000 1000000>;
> @@ -463,6 +535,21 @@ opp-2208000000 {
>  			opp-microvolt = <987500 987500 1000000>;
>  			clock-latency-ns = <40000>;
>  		};
> +		opp-2256000000 {
> +			opp-hz = /bits/ 64 <2256000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2304000000 {
> +			opp-hz = /bits/ 64 <2304000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2352000000 {
> +			opp-hz = /bits/ 64 <2352000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-2400000000 {
>  			opp-hz = /bits/ 64 <2400000000>;
>  			opp-microvolt = <1000000 1000000 1000000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
