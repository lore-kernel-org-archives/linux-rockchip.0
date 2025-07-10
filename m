Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE7DC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 00:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QxGd/4kySY4CUOmQY+uD+gxzICWgNzqPNBQJZFMDKw=; b=TuCzb44FAnoXTP
	ztTXOYWb4af3vGjTu2e1ywgHY3R6UCM6pP3aq97vhBJDo53Hx75c7oCR8WsbZjCLyPVcR8Du7yIR5
	7d7XIl3UeYgTOeuEZw6cM8uMnH+/+87tGWNeGGuj6QCrKQxIfXDgTOGPq4GeKc/c2ngDTr7UdHgUC
	NNI/WGY7zTH+5FYagO6NztqBeSZi7lDcEfxuqIBQrN2eh4KLrG2BxPtCONHgId9g3zorJgIN9P1XJ
	I0atSneK8B8R8oZ1DY1qg+f7wCZwU+ZxiErpkrR35adyOz5bILw6XF2tYFSpdM+AtyXJw+lGXmtEp
	I0RkxmHwoKw0k6AWW+MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZekq-0000000AID5-3SAj;
	Thu, 10 Jul 2025 00:03:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZeiY-0000000AI6Z-0L3y
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 00:00:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1752105648;
 bh=vkPooPX6zi3QRoM9CrTsbZoAxP36NlshDQEMrww4eZw=;
 b=BJfgIgfcHeBADU194dOrcMsRYvJIrYXXWa2HZRF22PfKQ9zu8q1QRTQBcaXYYQ0VJ8wobpxfQ
 1l7YFGR4d1GgxmXm6DvyPZzv+jDtuAPc8sCIngjS3nhj8rX0I6pPNk9MkvSQtCJSQAeDBwdWJHl
 kUJAFWquXOm78DlQQCByZaB3fP3PRUIXy8IRM85k30LLB/kDa9cDJnriuswyNl2TNdmg/swTkSg
 M4GKtFOSCzLOHngg0L3p9Tbd3awgkt1a0vmxLDqfPUYI1kPCIVwxUmhhLq6zbuIv4nvMKzFh5EU
 /HX4Obk/s49YyHto+XRhnGTFV9XMxLDNHOFmlOz5MsRQ==
X-Forward-Email-ID: 686f02a6cecacbdaffda9867
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <87c6249a-96f1-4557-b4eb-70e69e6d773f@kwiboo.se>
Date: Thu, 10 Jul 2025 02:00:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org, ziyao@disroot.org
References: <20250708224921.2254116-5-jonas@kwiboo.se>
 <20250709070003.53484-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250709070003.53484-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_170050_151214_79D14BFF 
X-CRM114-Status: GOOD (  13.71  )
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

Hi,

On 7/9/2025 9:00 AM, Chukun Pan wrote:
> Hi,
> 
>> +	vcc5v0_usb1_host: regulator-5v0-vcc-usb1-host {
>> +		compatible = "regulator-fixed";
>> ...
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> ...
>> +	vcc5v0_usb2_host: regulator-5v0-vcc-usb2-host {
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> ...
> 
> I think these two regulators do not need boot-on?

Agree, will remove the boot-on in v2.

> 
>> +	rfkill {
>> +		compatible = "rfkill-gpio";
>> +		label = "rfkill-wlan";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_reg_on_h>;
>> +		radio-type = "wlan";
>> +		shutdown-gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_HIGH>;
>> +	};
> 
> Why not use mmc-pwrseq instead of rfkill?

Not sure, have changed to use mmc-pwrseq in v2.

> 
>> +	rfkill-bt {
>> +		compatible = "rfkill-gpio";
>> +		label = "rfkill-bt";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&bt_reg_on_h>;
>> +		radio-type = "bluetooth";
>> +		shutdown-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
>> +	};
> 
> Why not use shutdown-gpios of bcm43438-bt?

Sure, will use that in v2.

> 
>> +&i2c0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c0m0_xfer>;
>> +	status = "okay";
>> +
>> +	hym8563: rtc@51 {
>> +		compatible = "haoyu,hym8563";
>> +		reg = <0x51>;
>> +		#clock-cells = <0>;
>> +		clock-output-names = "hym8563";
> 
> CLKOUT pin is not connected.

Thanks, will remove the clock-output-names for the Sige1 and the NanoPi
Zero2 in v2, #clock-cells seem to be required by the dt-bindings.

> 
>> +&sdio0 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	disable-wp;
>> +	keep-power-in-suspend;
>> +	no-mmc;
>> +	no-sd;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>, <&clkm1_32k_out>;
> 
> I recommend using clkm1_32k_out at the sdio-pwrseq node.

Will do so in v2.

> 
>> +	sd-uhs-sdr104;
>> +	vmmc-supply = <&vcc_3v3>;
>> +	vqmmc-supply = <&vcc_1v8>;
>> +	status = "okay";
> 
> Maybe `brcm,bcm4329-fmac` nodes can be added here?

Will add to in v2.

> 
>> +&uart2 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart2m1_xfer>, <&uart2m1_ctsn>, <&uart2m1_rtsn>;
>> +	uart-has-rtscts;
>> +	status = "okay";
> 
> You can add `brcm,bcm43438-bt` nodes here:
> 
> 	bluetooth {
> 		compatible = "brcm,bcm43438-bt";
> 		device-wakeup-gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
> 		host-wakeup-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> 		shutdown-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> 		...
> 	};

Will use something similar in v2.

See [1] for fixups I am testing for v2.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250708-rk3528-boards/

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
