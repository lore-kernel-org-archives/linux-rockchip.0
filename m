Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11E4C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:52:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7155460F11
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:52:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7155460F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dbml/atvBc/GeLSCWBiSVe5H0ys32UM6IGqLuUrQMyU=; b=OVl8YlnbA1SDmZi+kZO3l0+ClV
	7ymsG00Pb8+wG5myirvAosyhGSQGKgbd+I7bLeeItLPmAiTIf5a8lLP9ckPUwSKbFg78w7ze1UWJ1
	IcY726nQLOOrDxmh9JPvNXekhUIubmyp0G6EyB4O2qBIfyZ042WxEYykkW2fiUTk5lUOekPquc7vm
	IE1uHaL5DLTPKQWxHGms+fG4DHuRmSNkaKPO7LmFZItqoCPcaPs5IVOQsTR8MY9OlKZvdNjcx4pdR
	mPQnuMbeqtvCDaTNgUvL5MkYdPGVz3jrSEixvHyNHzN8fyTwQVfLDJ/UK/3EbaszubYv5LBJ0elGf
	gpF4KGjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEXbc-00CiKM-Uh; Fri, 13 Aug 2021 13:52:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEXbP-00CiJ3-NY; Fri, 13 Aug 2021 13:52:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBB871042;
 Fri, 13 Aug 2021 06:52:01 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 854913F718;
 Fri, 13 Aug 2021 06:52:00 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210730151727.729822-1-pgwipeout@gmail.com>
 <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <893701da-ea17-00ab-5e31-c745051ac9b9@arm.com>
Date: Fri, 13 Aug 2021 14:51:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_065203_871521_6550FFC4 
X-CRM114-Status: GOOD (  18.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021-08-13 13:59, Daniel Lezcano wrote:
> On 30/07/2021 17:17, Peter Geis wrote:
>> The rockpro64 had a fan node since
>> commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
>> however it was never tied into the thermal driver for automatic control.
>>
>> Add the links to the thermal node to permit the kernel to handle this
>> automatically.
>> Borrowed from the (rk3399-khadas-edge.dtsi).
>>
>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>> ---
>>
>> Changelog:
>> v3:
>> Removed the gpu nodes to prevent in-fighting (thanks Robin!)
>>
>> v2:
>> Adjusted fan setpoints for less noise
>>
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 29 +++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> index 6bff8db7d33e..83db4ca67334 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -69,6 +69,7 @@ diy_led: led-1 {
>>   
>>   	fan: pwm-fan {
>>   		compatible = "pwm-fan";
>> +		cooling-levels = <0 100 150 200 255>;
>>   		#cooling-cells = <2>;
>>   		fan-supply = <&vcc12v_dcin>;
>>   		pwms = <&pwm1 0 50000 0>;
>> @@ -245,6 +246,34 @@ &cpu_b1 {
>>   	cpu-supply = <&vdd_cpu_b>;
>>   };
>>   
>> +&cpu_thermal {
>> +	trips {
>> +		cpu_warm: cpu_warm {
>> +			temperature = <55000>;
>> +			hysteresis = <2000>;
>> +			type = "active";
>> +		};
>> +
>> +		cpu_hot: cpu_hot {
>> +			temperature = <65000>;
>> +			hysteresis = <2000>;
>> +			type = "active";
>> +		};
>> +	};
>> +
> 
> Why two trip points ?
> 
> Why not one functioning temperature and no lower / upper limits for the
> cooling maps ?

Certainly when I first did this for NanoPC-T4, IIRC it was to avoid the 
fan ramping up too eagerly, since level 1 for my fan is effectively 
silent but still cools enough to let a moderate load eventually settle 
to a steady state below the second trip.

Robin.

>> +	cooling-maps {
>> +		map2 {
>> +			trip = <&cpu_warm>;
>> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
>> +		};
>> +
>> +		map3 {
>> +			trip = <&cpu_hot>;
>> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
>> +		};
>> +	};
>> +};
>> +
>>   &emmc_phy {
>>   	status = "okay";
>>   };
>>
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
