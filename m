Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE21EED606
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 13:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuJWEPkLGTc8uepCI+JYGzN3JhX2CTZT4xjwVXFucR4=; b=yIoYRYGg2U4xot
	SoViPgp9tw9Cq2IiPUbJLO5vVjb8vHcT/BFhP7WLVejXDeuqTNxYnfoQlQX5pB8s/x2GCflQYcFI7
	5Q2H6zX5Rz/C/LJZWpBtIq38VjjGHFX4Xd2Xw9xPWr7r+bN1wufBLHg2MX3IKThBAIAcc2ctctcwo
	nw4KSkAbtshVhBdHNnZO/YUjUAeyKrKJ6EL5+2gT45qMVFWkD55ERZGyJWybzB6hFnIQ647IEJRKu
	x8GbB0CRNoOj2u9u+qkSHyycoyaZd+JWvN2rkfXi4tWJnuNsVWpiuQBIyvt/l0bu+mvV9veJs45uG
	aEbt+BvqdDxtgV1ceNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokHc-0000000DGqW-1XL0;
	Thu, 12 Sep 2024 13:54:52 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokGW-0000000DGbG-0oBr;
	Thu, 12 Sep 2024 13:53:46 +0000
Received: from [192.168.0.160] (unknown [220.162.71.16])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id C8CB67892D;
	Thu, 12 Sep 2024 21:53:36 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn C8CB67892D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726149220;
	bh=8k+BLzuxKweSdS2kHP5jwMhPOyQcKLoWB7/Tll4vowk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jMv9AlFS5pRapyqCNfhgyF8Pebj4dX5KrWC/pluelM2Uhs0FLVzCq6Fjjkhb4qvRL
	 1YfEzKmy7G+htbk1fkcEeOrOUDzkib8XVegr/gbQXa8alO/9a4jLrpTMfM+P3p42jR
	 7hSQp91HHJ09+/pStfGAKBWgYFfr/mTgxBZnhy08=
Message-ID: <1a7d017a-8317-462b-8698-03cc7099a74f@classfun.cn>
Date: Thu, 12 Sep 2024 21:53:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 heiko@sntech.de, jonas@kwiboo.se, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Junhao Xie <bigfoot@classfun.cn>
References: <20240911122809.1789778-5-bigfoot@classfun.cn>
 <20240912023018.23986-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240912023018.23986-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_065344_657587_B4943BF2 
X-CRM114-Status: UNSURE (   9.42  )
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

On 2024/9/12 10:30, Chukun Pan wrote:
> Hi Junhao,
> 
>> ...
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
>> ...
> 
>> +	rfkill-modem {
>> +		compatible = "rfkill-gpio";
>> +		label = "M.2 USB Modem";
>> +		radio-type = "wwan";
>> +		reset-gpios = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
>> +		shutdown-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
>> +	};
> 
> gpio0 RK_PB0 conflicts with xin32k, please add:
> 
> &xin32k {
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&clk32k_out1>;
> };

I added it and it currently works fine

> 
>> +	vccin_5v: regulator-5v0-vcc-in {
>> +	vcc_sysin: regulator-5v0-vcc-sysin {
>> +	vcc_syson: regulator-5v0-vcc-syson {
>> +	vcc5v0_usb30_otg0: regulator-5v0-vcc-usb-host {
> 
> obviously (

I seem to have misunderstood the rules in dt-bindings before.
The following looks better:

vcc5v0_usb30_otg0: regulator-vcc5v0-usb30-otg0 {
vccin_5v: regulator-vccin-5v {
vcc_sysin: regulator-vcc-sysin {
vcc_syson: regulator-vcc-syson {

> 

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
