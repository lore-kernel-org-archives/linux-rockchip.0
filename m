Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C44F53D6D
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 16:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWAqzB5c9MZA0oD5rmP64Eht0xvyW7s/9NzoyfuWXYc=; b=xcBIWGbCEx7IMx
	H8glWmAHuPthom/V5SV++igPIdR87X/0iIgA78mkYT8y7he6R/yaT0b9MIq/yonN1rR6nGjxRCSDO
	vFF3CO33DJBKWo/68jqjti6JEzMjMAWicvcqea0ttD7Wosn0u/eJS5lJcDqAssj3TgzcT7m4lUb4z
	EuCuuw2hffqW4AOuE0X14v5Y759vQ2I6c5hprpFRTiT99yeRDGkc4vxiSRJk18dczRoPr+Q4FxG/a
	JKjjAI8U/skfcGvH/O2u0ihXQxDbImYVMJS3zI8pInks8Lqe8U36tTvXfR+Qds68WL9axlsn3E9KA
	nOdJm7z8mLV6iN45iwHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AiG-00000004ReV-2IXK;
	Mon, 16 Mar 2026 16:22:40 +0000
Received: from out-171.mta0.migadu.com ([91.218.175.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AiE-00000004Rax-1YWs
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 16:22:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1773678128;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sKiVBNoA5DEu7rqy18+2ZGT3Fg9uiPh7qLdQNWRH0EY=;
	b=G1CHmcKbFX5mwfpFjdibARdCz8T1tfgVZCAJgRPK8uxCx5g8EmpSMyA3J1ZTg5s4BoBcin
	ToynlxXlMxee8q7yw6iQsBhbucNcQyXnlP3hTiyAqYLsv5Cfsj2+a6fdaQvzMTuE6DY3wM
	CVy4ZRAE7v2uTo8rHvZf/98ai/dhfJ8R18VM9vRchKjEDNT6i7JhZxlP6AggU0+LX5YIKi
	S2hnC05U37pqE+45ot88biPiXWVku3sujcSj2Mxt+FIoP3FUHt+OfeLQ8s22wJqlPVjXBV
	kY3cALfz34v+iGuEV5ORqMc5a6wy3v13PZgA53fCpqBH6ZzNEHqNy1Hdabo4OA==
Date: Mon, 16 Mar 2026 17:22:05 +0100
Message-Id: <DH4CF5YNUZ6S.3DOP275H6TBVN@cknow-tech.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Enable OTP controller for
 RK356x
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <kever.yang@rock-chips.com>, <finley.xiao@rock-chips.com>, <w@1wt.eu>,
 <jonas@kwiboo.se>
References: <20260312213019.13965-1-heiko@sntech.de>
 <20260312213019.13965-3-heiko@sntech.de>
 <DH4BCBM75EA1.3S6GHUO64SAMA@cknow-tech.com>
In-Reply-To: <DH4BCBM75EA1.3S6GHUO64SAMA@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_092238_556466_139A670E 
X-CRM114-Status: GOOD (  11.64  )
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

Hi Heiko,

On Thu Mar 12, 2026 at 10:30 PM CET, Heiko Stuebner wrote:
> Enable the One Time Programmable Controller (OTPC) in RK356x and add
> an initial nvmem fixed layout.

I build a kernel with the nvmem patches and your patches from this
series and tried it out on my NanoPi R5S with a RK3568 SoC.
Navigating to ``/sys/bus/nvmem/devices/rockchip-otp0/cells`` and then
doing ``hexdump <cell-name>`` showed all kind of values.

Then I did the same with my PineNote with a RK3566 SoC and that gave
different values, except for npu-leakage, which I guess is fine?
So feel free to include my

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPi R5S, PineNote

Cheers,
  Diederik

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 68b48606f601..c8321af7de7d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1123,6 +1123,52 @@ rng: rng@fe388000 {
>  		status = "disabled";
>  	};
>  
> +	otp: efuse@fe38c000 {
> +		compatible = "rockchip,rk3568-otp";
> +		reg = <0x0 0xfe38c000 0x0 0x4000>;
> +		clocks = <&cru CLK_OTPC_NS_USR>, <&cru PCLK_OTPC_NS>,
> +			 <&cru PCLK_OTPPHY>, <&cru CLK_OTPC_NS_SBPI>;
> +		clock-names = "otp", "apb_pclk", "phy", "sbpi";
> +		resets = <&cru SRST_OTPC_NS_USR>, <&cru SRST_P_OTPC_NS>,
> +			 <&cru SRST_OTPPHY>, <&cru SRST_OTPC_NS_SBPI>;
> +		reset-names = "otp", "apb", "phy", "sbpi";
> +
> +		nvmem-layout {
> +			compatible = "fixed-layout";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			cpu_code: cpu-code@2 {
> +				reg = <0x02 0x2>;
> +			};
> +
> +			otp_cpu_version: cpu-version@8 {
> +				reg = <0x08 0x1>;
> +				bits = <3 3>;
> +			};
> +
> +			otp_id: id@a {
> +				reg = <0x0a 0x10>;
> +			};
> +
> +			cpu_leakage: cpu-leakage@1a {
> +				reg = <0x1a 0x1>;
> +			};
> +
> +			log_leakage: log-leakage@1b {
> +				reg = <0x1b 0x1>;
> +			};
> +
> +			npu_leakage: npu-leakage@1c {
> +				reg = <0x1c 0x1>;
> +			};
> +
> +			gpu_leakage: gpu-leakage@1d {
> +				reg = <0x1d 0x1>;
> +			};
> +		};
> +	};
> +
>  	i2s0_8ch: i2s@fe400000 {
>  		compatible = "rockchip,rk3568-i2s-tdm";
>  		reg = <0x0 0xfe400000 0x0 0x1000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
