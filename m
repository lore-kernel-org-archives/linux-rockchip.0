Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B206CCD4F54
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 05:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWUyWgo53u/EGUxuJjKt7mQBhw9hWPNwan8Erwsb610=; b=q8a5e+4uUlXu76
	4iM9Q4d5embSoRxJslFwe+EgohyyV1KVzG+RGk/Ap0b/By8p/chxf6VX3Db1dv8jbxZWW/8RsnnQy
	apGygHevzNT6J/ulPwxY0yKPUMtnC3Gb6KBVDQHIA9iySYpIw/THSdG8Oy6dOlie53pepAsXRKNFz
	6m6xzKbNm09BD2dEuwAachPmp7yAhczKePJy3JG3ChhVYzsfwbta/9Y+5q2HtmdsQdD7OihU54aPS
	DRQYC6H/3lQAj0j439OlnsaRdcojzeT+ruWYaQP4p2S4WnlH05+yZ/sApTsmfRb5XXtzecE6wvPMh
	ffV92yVU+fOas5RBZofA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm5Ky-0000000756E-0Wjv;
	Thu, 05 Sep 2024 05:47:20 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm5Jz-000000074yp-3BTy;
	Thu, 05 Sep 2024 05:46:21 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 6A515789E8;
	Thu,  5 Sep 2024 13:46:16 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 6A515789E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725515177;
	bh=OomeZ9C2cFgTv1cxVJuJnlf6/kevrKyeiis7TxIKY9E=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=pOSwJcGUoHKIga3h/dzUVuC7Hlob0YbYxP2libUjLtR7gccsntnxeclKTQXqLTlt0
	 x8Ts+NgEq7Nh4GSzZTneHc6iw1lYV0311U86Bn9HbLd+HjI2ZKX1hW0KV2Epxe4Ipg
	 +opWaUEe8X731Hx5/z4lNmxfAHUCVwQioi2XSU58=
Message-ID: <a39de56d-07d3-4554-8c37-c28b1654f717@classfun.cn>
Date: Thu, 5 Sep 2024 13:47:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Andrew Lunn <andrew@lunn.ch>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-4-bigfoot@classfun.cn>
 <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_224620_112203_EB494E6D 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

On 2024/9/5 01:25, Andrew Lunn wrote:
>> +&gmac1 {
>> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>> +	assigned-clock-rates = <0>, <125000000>;
>> +	clock_in_out = "output";
>> +	phy-handle = <&rgmii_phy1>;
>> +	phy-mode = "rgmii";
>> +	phy-supply = <&vcc_3v3>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&gmac1m1_miim
>> +		     &gmac1m1_tx_bus2
>> +		     &gmac1m1_rx_bus2
>> +		     &gmac1m1_rgmii_clk
>> +		     &gmac1m1_rgmii_bus>;
>> +	snps,reset-gpio = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	snps,reset-delays-us = <0 20000 100000>;
>> +	tx_delay = <0x38>;
>> +	rx_delay = <0x15>;
>> +	status = "okay";
> 
> This has been discussed a few times. You should be using phy-mode
> rgmii-id.
> 
> arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi is i think also a
> YT8521SC.
> 
> 	Andrew

Thanks, I changed phy-mode to rgmii-id and it seems to work fine.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
