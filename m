Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93A76C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLQ3yoTPWp5x1myjfRzF1mULn/208MnOzjlhi29EZfI=; b=m2tJWS1XnK+aMW
	VHfMcdpCRSCDgRdVCNF/NSJ0v1Qfsit78ZcJeCEOBVKdy68NCei0Lwm2QnpBMz4ecMrHkmGvkkszz
	N1yPLJ1p7GkjYEldNtgCvcMfVmfgv6Tr8zNI5ubA5goyvWajN5PWFJlq1D1nLiC+LAFGIhs+nqk0C
	l/SJmDV27PpLbmWYnx3nvKwI/NKV612xpWJoqhrcNi3q09NX2tosgw9XWikbJSa+1jlOtW5tYd009
	w2wRp+UKWwWFrMY/bUf5GgfIb05yKhdWji/uR6t9/0lQ2KQSfzKfwOY7Mq3/oEdJYttoX6349NiSb
	F7q9ZXytAT+rjL2wNI8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCcV-0000000BFpE-3kFX;
	Thu, 06 Mar 2025 14:54:43 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCcT-0000000BFnt-0PSO
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 14:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741272879;
 bh=FKaVUl5lLXUSuhCF1ZlPAyZO1YDz2MZPYUTwBAZE0yM=;
 b=NAi+7axKjQMlr6jzLc9Sfc9umGsALhz95nONBl61YGvzqvMq2ykPwMshVGDY4AySONyQqmXxs
 V2iaKeYlRLHD7sqdHs3rXTdned4r0b2kjioD5WRjPSyryCb4rvP9CJR6PfzvmPbHFqz7iU/cyji
 PWRQjgQUCejsOA3u/GE53ME17xgnT38Wz6HFexvx1Bqv1m20nvdmzhO79/aqe+7HxpkdYUXk2yN
 riBCo/sEbOasXM/aaT5O0d2MgEJ5t+LyAgQQOl8tqR7irH/JYMugS0JTf7O9mMUBIDQRvafkmN1
 eow47paShKcy3wauMeKvZUEMaqMizezWEZex2OIgMVyw==
X-Forward-Email-ID: 67c9b7257d53aa09926020ca
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3181e8a0-b98f-4860-a0fa-abc3130c9b35@kwiboo.se>
Date: Thu, 6 Mar 2025 15:54:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250306131016.281290-1-amadeus@jmu.edu.cn>
 <20250306131016.281290-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306131016.281290-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_065441_476527_147B19E8 
X-CRM114-Status: GOOD (  13.91  )
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

Hi Chukun,

On 2025-03-06 14:10, Chukun Pan wrote:
> Same as RK3568, RK3528 uses SCMI clk instead of ARMCLK.
> Add SCMI clk for CPU, GPU and RNG will also use it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index 0c0e7f151462..aa68c2fef2f3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -59,6 +59,7 @@ cpu0: cpu@0 {
>  			reg = <0x0>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -66,6 +67,7 @@ cpu1: cpu@1 {
>  			reg = <0x1>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -73,6 +75,7 @@ cpu2: cpu@2 {
>  			reg = <0x2>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -80,6 +83,22 @@ cpu3: cpu@3 {
>  			reg = <0x3>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
> +		};
> +	};
> +
> +	firmware {
> +		scmi: scmi {
> +			compatible = "arm,scmi-smc";
> +			arm,smc-id = <0x82000010>;
> +			shmem = <&scmi_shmem>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			scmi_clk: protocol@14 {
> +				reg = <0x14>;
> +				#clock-cells = <1>;
> +			};
>  		};
>  	};
>  
> @@ -110,6 +129,19 @@ gmac0_clk: clock-gmac50m {
>  		#clock-cells = <0>;
>  	};
>  
> +	sram@10f000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x0010f000 0x0 0x100>;
> +		ranges = <0 0x0 0x0010f000 0x100>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		scmi_shmem: sram@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x100>;
> +		};
> +	};

This does not look correct, the shared memory is located in DRAM not in
SRAM. I used reserved-memory in my work-in-progress commit for adding
the GPU [1], something like, not sure if this is more correct:

	reserved-memory  {
		#address-cells = <2>;
		#size-cells = <2>;
		ranges;

		scmi_shmem: scmi-shmem@10f000 {
			compatible = "arm,scmi-shmem";
			reg = <0x0 0x0010f000 0x0 0x100>;
			no-map;
		};
	};

[1] https://github.com/Kwiboo/linux-rockchip/commit/f1cd58b2431a01e8cf6a430922204a71fee484f3

Regards,
Jonas

> +
>  	soc {
>  		compatible = "simple-bus";
>  		ranges = <0x0 0xfe000000 0x0 0xfe000000 0x0 0x2000000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
