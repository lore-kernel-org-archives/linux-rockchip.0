Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61B4EEE27A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 04:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FveRDNi0Q8RinbL/AAtg7SlKQ3m+Q0qEKVTpigTY8YQ=; b=F8ze1rBJceB/+P
	AVs3j3ajq/ke4rpWf9GmwyrzX1dCuzB+zK83TdJKaVKq8ZlIcodeJC0J45BysYukYYO4LgdYY+sW5
	x/ade7XPBs47LMz2lTpYUN0uI0go7piGQHLDku+oTknE0bONHLlhiTnc0lDZ97zJPyXlF/uezzKYU
	EIe+10h8HdgM1HIjRS/J601YaEt0cDZZMi2AmaHBWUMfFywLc1SjQl6Q5o+2TZ0uyLBZdW/i+jHGJ
	LW2JW/cTAcSJHet9aOyogK6RgS6RtuwsMHx7kR3y8l9MzyPTugm7H8qYHYZN+6PCzkuJcAOZx+TP/
	LWCUVXb1veXMmXOMmiTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soxoK-0000000EtGh-424F;
	Fri, 13 Sep 2024 04:21:32 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soxoH-0000000EtFy-0qIf
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 04:21:31 +0000
X-QQ-mid: bizesmtp90t1726201270tbned9o5
X-QQ-Originating-IP: BNu9z6G4zOKMTE/Lb//qJ51H6v1ZhoO5jzzRUXYBVQM=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 12:21:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1246690651998139195
Message-ID: <DBE2633C9C284F67+3d59ded2-665f-4640-826d-4e2ec88b5d51@radxa.com>
Date: Fri, 13 Sep 2024 13:21:08 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK
 3A
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
References: <20240912235923.1013-1-naoki@radxa.com>
 <20240913033018.28400-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240913033018.28400-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_212129_620042_1A7134F4 
X-CRM114-Status: GOOD (  10.17  )
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

hi,

On 9/13/24 12:30, Chukun Pan wrote:
>> @@ -119,14 +123,10 @@ vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
> 
> Please add /* actually fed by vcc5v0_sys */
> 
>>   	vcc3v3_pcie: vcc3v3-pcie-regulator {
>>   		compatible = "regulator-fixed";
>> -		enable-active-high;
>> -		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&pcie_enable_h>;
>>   		regulator-name = "vcc3v3_pcie";
>>   		regulator-min-microvolt = <3300000>;
>>   		regulator-max-microvolt = <3300000>;
>> -		vin-supply = <&vcc5v0_sys>;
>> +		vin-supply = <&vcc3v3_pi6c_03>;
>>   	};
> 
> I recommend renaming vcc3v3_pcie to vcc3v3_pcie30x1, which better
> matches the schematic.

ok

>>   &pcie2x1 {
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie_reset_h>;
>> +	pinctrl-0 = <&pcie2x1m1_pins>;
>>   	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
>> -	vpcie3v3-supply = <&vcc3v3_pcie>;
>> +	vpcie3v3-supply = <&vcc3v3_wf>;
>>   	status = "okay";
>>   };
> 
> Please separate the changes for pcie2x1 and pcie3 into 2 patches.

ok

>> +		pcie2x1m1_pins: pcie2x1m1-pins {
>> +			rockchip,pins =
>> +				/* pcie20_clkreqnm1 */
>> +				<2 RK_PD0 4 &pcfg_pull_none>,
>> +				/* pcie20_perstnm1 */
>> +				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>,
>> +				/* pcie20_wakenm1 */
>> +				<2 RK_PD1 4 &pcfg_pull_none>;
> 
> Why not pcie20m1_pins?

$ make dtbs
   DTC     arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:656.32-664.5: ERROR 
(duplicate_label): /pinctrl/pcie/pcie20m1-pins: Duplicate label 
'pcie20m1_pins' on /pinctrl/pcie/pcie20m1-pins and 
/pinctrl/pcie20/pcie20m1-pins

we need gpio pin for reset.

>> +		pcie3x2m1_pins: pcie3x2m1-pins {
>> +			rockchip,pins =
>> +				/* pcie30x2_clkreqnm1 */
>> +				<2 RK_PD4 4 &pcfg_pull_none>,
>> +				/* pcie30x2_perstnm1 */
>> +				<2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>,
>> +				/* pcie30x2_wakenm1 */
>> +				<2 RK_PD5 4 &pcfg_pull_none>;
>> +		};
> 
> Why not pcie30x2m1_pins?

$ make dtbs
   DTC     arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:665.36-673.5: ERROR 
(duplicate_label): /pinctrl/pcie/pcie30x2m1-pins: Duplicate label 
'pcie30x2m1_pins' on /pinctrl/pcie/pcie30x2m1-pins and 
/pinctrl/pcie30x2/pcie30x2m1-pins

> Also missing blank line.
> 
>> +		pcie_pwren_h: pcie-pwren-h {
>> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>>   		};
> 
> Thanks,
> Chukun

thank you very much for your review.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
