Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E17CCF259D
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 04:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxtix0HYdzPgBaZdN2NMxytBcIPAeqMIBMyeqpC9Ds4=; b=OOGqdGTncs4D5c
	MhIWVXGMp9FGcJjhubisqQeEYQ9DD+DDF7c9ap2+Ybh/aWg9r10LqRnaZMHHV3tQBLD0NqdrgXZ/t
	4M6pJJsb9qY9ioBSb8+S3OwULPlr9b49cUVS29WXd06Pr6NLKgiUY64gVRugYjWnWfeGBMvFqKYZR
	Q64H3MMslAhkcoDs+7SMbOoFVzlPq+lOra2vUNhl0FFjA1OLa3AxXSqL3kdFolp/Rdmyo3icmwMRw
	96k3M9kjunPpqBi7SBARHQyXsLwXggkWyiZ3gYO0kXZUQWNrTHmt+/CQdBqths4QKxeL0IlD68kWm
	1rLzr1DRbxTppjHuRbiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Csp-00000003jUh-170M;
	Mon, 14 Oct 2024 04:40:39 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0CrN-00000003jNb-1ZN3;
	Mon, 14 Oct 2024 04:39:14 +0000
X-QQ-mid: bizesmtpip4t1728880692tn6r7d7
X-QQ-Originating-IP: EQSBChDx8AzRGfPF8zb2/7A9tODnohSmh1T0qLU6P6M=
Received: from [IPV6:240f:10b:7440:1:5070:3965 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 14 Oct 2024 12:38:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13288931529560564606
Message-ID: <CE605641E53903DC+0f0ea6b2-9423-4aa2-ac9d-652a9ac5c237@radxa.com>
Date: Mon, 14 Oct 2024 13:38:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add new SoC dtsi for the
 RK3566T variant
To: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, TL Lim <tllim@pine64.org>,
 Marek Kraus <gamiee@pine64.org>, Tom Cubie <tom@radxa.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MIAHdi1iQo+zGLmod/lFAZ+sJWqjxNFjrzNKtQxpQ7Qh7sH0GnY9GFFW
	clm2hQyONOPq5VUiS4aFX1PzeBy98EfISfbw8qB6RSgZiZ+ug+YF9hPC0mDgki5W6HxUnjc
	SFpfj+wMvmi/6+2TY4gGK2G4KUHHc00ZuXF4h9C3WVgPkucW/2jt6qpOAJMteJqMRTONjUf
	QNfmTmKYsD3Oc+H7qagEOmnqHxmpwvMPud+GA/iwZgUtvnFprNfXzQbF8ZTCWLwnY54KNEU
	NCJKzhabdruv5SaZJ8ug1psplR0c3+7yyFb177vHjyDzEltrTfahmXuyh+C3R0sppdlINyE
	E6Y8bfBZx4SJ37SDg/H1toGRjjVzS0SeX3BRNKfeCpaeSAWYOSj5EeaNXLDCG5zbaCWOtvu
	wesH1zUZrhoOgQR6+nw7wTuM1+3fWskV4gLvK0uZjYX8erFPgHH5+PW17vM41QLerH4i1QS
	oPwArPjO3tUNdVrIjl2hFqnP2VyzXcF/vKJTAU3puFMB9f2coNFQiDIZ2q3RqblGx9ZgLzM
	RH78mTK8MH9rhdTvxS5eZe2ZW/M3jeFPjK/PX4lrWC+nzAXK0b9X4xIZQR/NAOGVPAiSMWM
	MoCEMP4YgbMbFqnPvbTNn7RxpuTcNYPR9CynJNYacjf0xuLJkVwoZn/i8GFqU6fK/vEJw6i
	P0O/7ZFHpcXCOTXOB6OnrvcbzAs4IoEhrqmm2nqZrJaMZaLd24oWkZyvV4iEHcQ4vBM2Xzy
	CBtt26DnfH7mbCY7apBNy6Nmfko2Ha9rRB2yqTDqmsg4mkGn+RvimIbkp/UauBu95JC/lb2
	+zF4s9iqODbezhTYdBih4aeOXErrvYmR1mV0nkC+aRQ0bUO7Up6NPfoPf+yVWjWE/0Lgf5N
	5o03LfThyuuWbUhOzRxDJfmNLKFbbgRbMIHlHLIiUwPpve4MGG7DDL5dgqutgmwurfKrCg/
	K1tmuC976qqrdvI0fWkm1u56GQWUiVE1+RQTG675aIc8fSQ==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_213909_948676_F0028657 
X-CRM114-Status: GOOD (  25.10  )
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

Hi,

On 10/13/24 02:04, Dragan Simic wrote:
> Add new SoC dtsi file for the RK3566T variant of the Rockchip RK3566 SoC.
> The difference between the RK3566T variant and the "full-fat" RK3566 variant
> is in fewer supported CPU and GPU OPPs on the RK3566T, and in the absence of
> a functional NPU, which we currently don't have to worry about.
> 
> Examples of the boards based on the RK3566T include the Pine64 Quartz64 Zero
> SBC, [2] the Radxa ROCK 3C and the Radxa ZERO 3E/3W SBCs.  Unfortunately,
> Radxa doesn't mention the use of RK3566T officially, but its official SBC
> specifications do state that the maximum frequency for the Cortex-A55 cores
> on those SBCs is lower than the "full-fat" RK3566's 1.8 GHz, which makes
> spotting the presence of the RK3566T SoC variant rather easy. [3][4][5]  An
> additional, helpful cue is that Radxa handles the CPU and GPU OPPs for the
> RK3566T variant separately in its downstream kernel. [6]
> 
> The CPU and GPU OPPs supported on the RK3566T SoC variant are taken from the
> vendor kernel source, [1] which uses the values of the "opp-supported-hw" OPP
> properties to determine which ones are supported on a particular SoC variant.
> The actual values of the "opp-supported-hw" properties make it rather easy
> to see what OPPs are supported on the RK3566T SoC variant, but that, rather
> unfortunately, clashes with the maximum frequencies advertised officially
> for the Cortex-A55 CPU cores on the above-mentioned SBCs. [2][3][4][5]  The
> vendor kernel source indicates that the maximum frequency for the CPU cores
> is 1.4 GHz, while the SBC specifications state that to be 1.6 GHz.  Unless
> that discrepancy is resolved somehow, let's take the safe approach and use
> the lower maximum frequency for the CPU cores.
> 
> Update the dts files of the currently supported RK3566T-based boards to use
> the new SoC dtsi for the RK3566T variant.  This actually takes the CPU cores
> and the GPUs found on these boards out of their earlier overclocks, but it
> also means that the officially advertised specifications [2][3][4][5] of the
> highest supported frequencies for the Cortex-A55 CPU cores on these boards
> may actually be wrong, as already explained above.
> 
> The correctness of the introduced changes was validated by decompiling and
> comparing all affected board dtb files before and after these changes.
> 
> [1] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> [2] https://wiki.pine64.org/wiki/Quartz64
> [3] https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
> [4] https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
> [5] https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
> [6] https://github.com/radxa/kernel/commit/2dfd51da472e7ebb5ef0d3db78f902454af826b8
> 
> Cc: TL Lim <tllim@pine64.org>
> Cc: Marek Kraus <gamiee@pine64.org>
> Cc: Tom Cubie <tom@radxa.com>
> Cc: FUKAUMI Naoki <naoki@radxa.com>
> Helped-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> Helped-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>   .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |  2 +-
>   .../boot/dts/rockchip/rk3566-rock-3c.dts      |  2 +-
>   arch/arm64/boot/dts/rockchip/rk3566t.dtsi     | 90 +++++++++++++++++++
>   3 files changed, 92 insertions(+), 2 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index de390d92c35e..1ee5d96a46a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -3,7 +3,7 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/leds/common.h>
>   #include <dt-bindings/soc/rockchip,vop2.h>
> -#include "rk3566.dtsi"
> +#include "rk3566t.dtsi"

could you drop this change for now?

We(Radxa) think we use RK3566.

and vendor kernel[6] refers efuse value to determine it's -T or not.
can you do similar way?

>   / {
>   	chosen {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index f2cc086e5001..9a8f4f774dbc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -5,7 +5,7 @@
>   #include <dt-bindings/leds/common.h>
>   #include <dt-bindings/pinctrl/rockchip.h>
>   #include <dt-bindings/soc/rockchip,vop2.h>
> -#include "rk3566.dtsi"
> +#include "rk3566t.dtsi"

same here.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   / {
>   	model = "Radxa ROCK 3C";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566t.dtsi b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
> new file mode 100644
> index 000000000000..cd89bd3b125b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include "rk3566-base.dtsi"
> +
> +/ {
> +	cpu0_opp_table: opp-table-0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <850000 850000 1150000>;
> +			clock-latency-ns = <40000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <850000 850000 1150000>;
> +			clock-latency-ns = <40000>;
> +		};
> +
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <850000 850000 1150000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +
> +		opp-1104000000 {
> +			opp-hz = /bits/ 64 <1104000000>;
> +			opp-microvolt = <900000 900000 1150000>;
> +			clock-latency-ns = <40000>;
> +		};
> +
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <1025000 1025000 1150000>;
> +			clock-latency-ns = <40000>;
> +		};
> +	};
> +
> +	gpu_opp_table: opp-table-1 {
> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <850000 850000 1000000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <850000 850000 1000000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <850000 850000 1000000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <900000 900000 1000000>;
> +		};
> +
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <950000 950000 1000000>;
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	operating-points-v2 = <&cpu0_opp_table>;
> +};
> +
> +&cpu1 {
> +	operating-points-v2 = <&cpu0_opp_table>;
> +};
> +
> +&cpu2 {
> +	operating-points-v2 = <&cpu0_opp_table>;
> +};
> +
> +&cpu3 {
> +	operating-points-v2 = <&cpu0_opp_table>;
> +};
> +
> +&gpu {
> +	operating-points-v2 = <&gpu_opp_table>;
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
