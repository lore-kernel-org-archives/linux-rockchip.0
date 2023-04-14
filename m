Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2EB3C77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 10:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFjV8GJOtGXa07liD3r0OpwdkalxGVzVluoDz8Vv5ak=; b=ZMpn+KAmMRfKtt
	mScxnohk9/2ucQ5g3MabPfCT60p8liMyxqODhnsNYVMqtwpLCCx0nd4B16bZ4wvhwUQIwQNm2ZAaX
	c+W47vcwQ6pRxzc9mRAXbWrsDC+lkkJj29ovNu/0Rp17bVOLkdPe8OzR1eLxg11o3mBnKDINqOtgc
	J3ptAiWyLcoR/+HfPtn9C/ymNXT677vyB+jYrFZ94/MhFgNdPAd4brdTCveDyBq0Ggo76cZ8bQPvn
	Y9Wuhoa5hoC4lEB/g24XB6oOT4y2LJTwTjQcOuQy0M8P/1X85FCWMqULxOjOFs37hj+ME4EBNiAuY
	l5ARk2HdayLp5d/7YehQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGrZ-009CkY-29;
	Fri, 14 Apr 2023 10:41:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGrV-009Cj0-2p;
	Fri, 14 Apr 2023 10:41:03 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0FEB26603222;
	Fri, 14 Apr 2023 11:40:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681468859;
	bh=vfh35bWjaeukPfJ1DTroLll07PP0VwQUozLzA1ckpqQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Li6V/wHS/HhegSta0kxWzRHlEOSFjcQkRDODVv9z0+kKynYwrL9opHtf4hreYsCyj
	 VHLjGoyaG1QlFRN+H3YSS/ZdnJCI6pI8+dqEe9qsWhlukkwrFQFPen5yQ7TdikUg1M
	 5Llpj7+1ot+gXzM3nE33sSnv5bJgjzAMnDYYFyEXf03I0BNChmtO/qJIVT/ctp8MGX
	 5OWce8AkA2UiWtskG2YFlK7OInKvUY14+cjPFdX3wmFBnsTPXoEIT10dxtoIC4eH3l
	 uSPSBVEmSLGPo/2Qv+XASr4KeakEU6UhJwUInK7oUTAhIXIMUJKKqjOdcNMUcHLoy8
	 3fsnq4Fafo7DQ==
Message-ID: <36d8050b-0636-2b30-f3fc-7f7d96bec253@collabora.com>
Date: Fri, 14 Apr 2023 13:40:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add vdd_cpu_big regulators to
 rk3588-rock-5b
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-4-cristian.ciocaltea@collabora.com>
 <0cbafc31-9b46-54df-f569-810a8781743c@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <0cbafc31-9b46-54df-f569-810a8781743c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_034102_065797_75C7D8C4 
X-CRM114-Status: GOOD (  16.86  )
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

On 4/14/23 13:27, Krzysztof Kozlowski wrote:
> On 14/04/2023 11:34, Cristian Ciocaltea wrote:
>> The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
>> the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.
>>
>> Add the necessary device tree nodes and bind them to the corresponding
>> CPU big core nodes.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 56 +++++++++++++++++++
>>  1 file changed, 56 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> index 8cc97d146a73..3e4aee8f70c1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -53,6 +53,62 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>>  	};
>>  };
>>  
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&i2c0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c0m2_xfer>;
>> +	status = "okay";
>> +
>> +	vdd_cpu_big0_s0: regulator@42 {
>> +		compatible = "rockchip,rk8602";
> 
> Looking at your next node, this is surprising... Double check if you
> have correct compatibles everywhere.
> 
>> +		reg = <0x42>;
>> +		fcs,suspend-voltage-selector = <1>;
> 
> Does not look like you tested the DTS against bindings. Please run `make
> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
> for instructions).
> 
>> +		regulator-name = "vdd_cpu_big0_s0";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <550000>;
>> +		regulator-max-microvolt = <1050000>;
>> +		regulator-ramp-delay = <2300>;
>> +		vin-supply = <&vcc5v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +
>> +	vdd_cpu_big1_s0: regulator@43 {
>> +		compatible = "rockchip,rk8603", "rockchip,rk8602";
>> +		reg = <0x43>;
>> +		fcs,suspend-voltage-selector = <1>;
> 
> Does not look like you tested the DTS against bindings. Please run `make
> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
> for instructions).

I mentioned in the cover letter that the support for the RK860X 
regulators has been recently merged via [1]. The patches in this 
series have been verified on next-20230413.

[1] https://lore.kernel.org/lkml/20230406194158.963352-1-cristian.ciocaltea@collabora.com/

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
