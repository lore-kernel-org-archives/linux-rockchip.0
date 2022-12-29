Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C9FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 11:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rbG9DtlUmhvUievCKvZZrnvZWk17ZJX+VbrWi+cLIo=; b=jbdauVp8Fp01z8
	XiIwI+hylsNGQZV3V9feKm/wUmLyiHF3/auYSKsu5YB3250+PVtdiw2gpEz0WGSC8mOc4DeZVTklx
	sY9SV2wYc69mNSY5ZMTIhYfYZ//KLJ8BnHLq7Z2PMnB9rStAiImE7YVAF3NSfcJbIBdhVcXTZuCZn
	J1VZNNqA1rBtJ1nGT/RJImh1EL0pDOJCWclKlXK2M/IKdauwon3UHX1Iwdjx8dybiMI4UUC/EEKBd
	XcpN9iBk/X/EOuUIF7btDB7AeTcaeYwTXf3F9xqUkFn7iIm8OjlrwwRhr3GCZGf7wKq7pUGyUMnlr
	1CYVBsLYxxnwna5fhnIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArW0-00FKBp-6r; Thu, 29 Dec 2022 11:56:04 +0000
Received: from m13122.mail.163.com ([220.181.13.122])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArVi-00FK3E-KO; Thu, 29 Dec 2022 11:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=dVm2duRCYQpcLBg/h6h7ZaAY5XzexeXnERJ1uibrhjI=; b=f
	XHvF1ImNoQ1/Tff3vBhJXjopdx2O2Pp84u3qUo6LNhtbwogjLUaa41+R8WmDKcak
	7HaAyWNJgNlezFgo2j+sLnQPqRKER5MaMQQL0IOtHyNFOn8MTAI5EkEoG5CW7ZsS
	vH0QgPBlVfulDIajUOOJYhsAGp3nyp30xN0Hfm1qNw=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr122
 (Coremail) ; Thu, 29 Dec 2022 19:55:32 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 29 Dec 2022 19:55:32 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: krzysztof.kozlowski+dt@linaro.org, piotr.oniszczuk@gmail.com, 
	robh+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH 2/2] arm64: dts: rockchip: Enable wifi module AP6398s
 for rk3566 box demo
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20220708(c4627114)
 Copyright (c) 2002-2022 www.mailtech.cn 163com
In-Reply-To: <17226287.uLZWGnKmhe@phil>
References: <20221225114915.3518502-1-andyshrk@163.com>
 <20221225114953.3518595-1-andyshrk@163.com> <17226287.uLZWGnKmhe@phil>
X-NTES-SC: AL_QuycAP+au0Eo5CSeZOkZnEobh+Y5UcK2s/ki2YFXN5k0nSvC4DkcY3FzN2PEyuieIQq0vha7cgNw1N95QLZJcKXVjFLqKLEiWdP6kzd/LRYB
MIME-Version: 1.0
Message-ID: <98e7c6a.2e9c.1855dbcccf1.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: esGowACnSCw0gK1jVYppAA--.8778W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbivBnmXmASagkiyQABsm
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_035547_543594_FC90BDD7 
X-CRM114-Status: GOOD (  11.16  )
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




Hi Heiko:











At 2022-12-29 03:21:32, "Heiko Stuebner" <heiko@sntech.de> wrote:
>Hi Andy,
>
>Am Sonntag, 25. Dezember 2022, 12:49:53 CET schrieb Andy Yan:
>> There is a AP6398s wifi/bt module on this board.
>> Fix the sdmmc1 dt node to make wifi work.
>> 
>> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
>> 
>> Signed-off-by: Andy Yan <andyshrk@163.com>
>> ---
>> 
>>  .../boot/dts/rockchip/rk3566-box-demo.dts     | 26 ++++++++++++++++---
>>  1 file changed, 22 insertions(+), 4 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
>> index d956496d5221..6c0c24226b52 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
>> @@ -324,8 +324,12 @@ wifi_enable_h: wifi-enable-h {
>>  			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
>>  		};
>>  
>> +		wifi_host_wake_h: wifi-host-wake-l {
>> +			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>>  		wifi_32k: wifi-32k {
>> -			rockchip,pins = <0 RK_PB0 2 &pcfg_pull_none>;
>> +			rockchip,pins = <2 RK_PC6 1 &pcfg_pull_none>;
>>  		};
>>  	};
>>  
>> @@ -391,16 +395,30 @@ &sdmmc0 {
>>  };
>>  
>>  &sdmmc1 {
>> +	/* WiFi & BT combo module AMPAK AP6398S */
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>>  	bus-width = <4>;
>> +	clock-frequency = <150000000>;
>> +	cap-sdio-irq;
>>  	cap-sd-highspeed;
>> -	disable-wp;
>> +	sd-uhs-sdr104;
>> +	keep-power-in-suspend;
>>  	mmc-pwrseq = <&sdio_pwrseq>;
>>  	non-removable;
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
>> -	vmmc-supply = <&vcc_3v3>;
>> -	vqmmc-supply = <&vcca_1v8>;
>
>why are you removing the mmc-supplies here?
>The supplies needed for mmc to work should very much be present
>I think, especially to also make sure something else doesn't
>turn them off.

Thanks for catching this, I will fix it in V2.

>
>Heiko
>
>>  	status = "okay";
>> +
>> +	brcmf: wifi@1 {
>> +		compatible = "brcm,bcm4329-fmac";
>> +		reg = <1>;
>> +		interrupt-parent = <&gpio2>;
>> +		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
>> +		interrupt-names = "host-wake";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_host_wake_h>;
>> +	};
>>  };
>>  
>>  &spdif {
>> 
>
>
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
