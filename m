Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A26B0C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 11:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbMzH6mptQhYVi7P0+KV1subt8B03VuHMq/g1JfzOeg=; b=fCYIDV9O8ZHzaO
	Z3uiZdAEzrK7FwNH18hdflcdHZUMrGuEK4BYkhyE8KhmPGID7Mr+xQ/RIhNXa62Exsr5bYaa/2a5t
	yANK+6owNDeue5OhNP8QX0xbGHHO3vQrodnMSBTt93h67jvcCf2suRfwcI/vXjaLGzemR08BNjSxY
	kfcEcRcvmRR2FSkKsT3p+5bgTKAt16mVfkZFUqfJi+bj72tqUA1YtRB7QdTjFkGta+Ep7zbMq1vKL
	Chv2nBqJWr9NVLIk4j5oQSy+l46TRi28hDAoYqI9u1Jx3pV2gCGbqKfzxPKELOOvfWfRrxXGjLadD
	C2ASxihk8VINFKKQbqGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pojtv-0021d8-0A;
	Tue, 18 Apr 2023 11:53:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pojtr-0021Zm-1W;
	Tue, 18 Apr 2023 11:53:33 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9EAE96602338;
	Tue, 18 Apr 2023 12:53:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681818807;
	bh=F5bJnkMDohUh9rvK2TZXfUylvPcAO2pWW9e3hN5M+kk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YUXB4mlxVMv26uwQoJfBYvXdX77LTIslHy9CnC5wqb8CG8myJhTIkm6RVp5YmcgxL
	 ge0idkj7yJrWuACks2Xkogd89V1gPN6lT4cu4zf9RQYEeKmxXy7UdsSb+OSaOIXseu
	 D7mPLcyA9SATfml8FhdqfFc0nOO2u255937/Nucn1hcn6vu1sH/zO5x3M8UUaSRNVW
	 B/K2EIy1nKFL1y2dU6/0x5/MqO/3n/ZH7gh8YOS6DvmX6OSeCHvv2q68j+xygd7xBG
	 M1lr1afoplg/nviV3FCBg5ijeVfbjq2QntsfyHEDDs1c+xFU58+JMCc5V+aDCPRpyG
	 BVLwQ58BhymwQ==
Message-ID: <e2e59d5d-89cb-ba82-f0fc-ecddb9bdfc2a@collabora.com>
Date: Tue, 18 Apr 2023 14:53:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588 timer
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
 <20230418095344.274025-4-cristian.ciocaltea@collabora.com>
 <a8a9e82b-996e-2b0d-4e3b-9ceda0ab81e4@gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <a8a9e82b-996e-2b0d-4e3b-9ceda0ab81e4@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_045331_719922_941BE421 
X-CRM114-Status: GOOD (  15.29  )
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


On 4/18/23 14:29, Johan Jonker wrote:
> 
> 
> On 4/18/23 11:53, Cristian Ciocaltea wrote:
>> Add DT node for Rockchip RK3588/RK3588S SoC timer.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> index 657c019d27fa..acd89a55374a 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> @@ -1400,6 +1400,14 @@ i2c5: i2c@fead0000 {
>>  		status = "disabled";
>>  	};
>>  
> 
>> +	rktimer: timer@feae0000 {
> 
> There are multiple timers.
> Use a label in line with the TRM.
> Maybe change your label to "timer0" in that trend?

Sure, will use "timer0".

>> +		compatible = "rockchip,rk3588-timer", "rockchip,rk3288-timer";
>> +		reg = <0x0 0xfeae0000 0x0 0x20>;
> 
>> +		clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_BUSTIMER0>;
>> +		clock-names = "pclk", "timer";
>> +		interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH 0>;
> 
> Heiko's sort rules:
> 
> compatible
> reg
> interrupts
> [alphabetical]
> status [if needed]

Thanks for pointing this out! The sort rule was not obvious as there are
many other nodes that don't conform.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
