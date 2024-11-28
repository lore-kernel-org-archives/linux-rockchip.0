Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D1B7D6D25E
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 04:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=297EOWcuZF4sbU38DFpRge2SiARW1CcvTajfTz7m864=; b=2boDRwd9bAOqbW
	G9lopWP1gnx9i4wUkBeYsF8U/LjOhu98qfjcfzKtfOnMZd76OcxjNhSKla3WSWb/9saMJBx7bSzbO
	23EQWI5zoOOdARAyjXPDHP8AErmcUZN6DTJRaS2vckCc6d0Gf/pIGpwR47KaSnoWMpNIK+SWc4d6S
	wL9dvlVyOKaAnnJnNPJwAsY8/W26BUFXOZ8EHU4gM8yLqm1Kl7KKtG64iwWzCu8PsPHH73gpFyGOw
	y77gr/X0fiE7LXVykAjBXcVzAmfHAmXs26LHYkJZtRHglkWhrZg2OB7jAu+Ru9yf6lY5mp0bJr8WS
	CRWJE2o6g0Ti3g5cs91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGVqy-0000000Ef68-2TH0;
	Thu, 28 Nov 2024 04:10:08 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGVqu-0000000Ef4V-0Se1
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 04:10:06 +0000
X-QQ-mid: bizesmtpip3t1732766925ted63rw
X-QQ-Originating-IP: xe53a//2xl3JpmBtauqS21l8bhVkOwbZKHqLYmQWGOk=
Received: from [IPV6:240f:10b:7440:1:d502:63f8 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 28 Nov 2024 12:08:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 474718591288794163
Message-ID: <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
Date: Thu, 28 Nov 2024 13:08:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK
 5B
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 geert+renesas@glider.be, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241127015224.2361-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241127015224.2361-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OOCyznbq6KdUue2k+TpJEdMDVtdCT0FcprvvDgRceeq1VttuEA7R3FkM
	4ECNKtoY4diuoDscqraD4HeRfGUYNmg6XgxaaJE62lRSwmNGb/IUyIPRl4BMSWLKOkMhl+5
	6OwWOZNW5HRX/B3a9bKIxM1T156QzzU1aMUxrXTQyVOdM5si/L+PSqLkI68rozKySTuVlan
	yNkr8St4gymo1YwZ/jtFTZQhR7sjjfhlUs46AnZDmDkjobStxd6elQqvZuUYccK7T8SVPV8
	UUHcMrNuSgppXFPlqOJW1Y0n7TB9ftKGsMbROKfSG7121m/CFq8lxEo9X2h8PTpz8mbmLx7
	5nzI5jvgcIKYIaJ/dH92l+isHc/DCIFPd8GD9CaElfghhagsclMjX3F1qdnJfQAgZVsCBWR
	nMM9SJG44LgB++AFUH/nqYTkp4pshoRYlCP58wPcChNU/MQres9M9YucN7hNwmMTSuWRWxV
	H6GMy42A7JeEzgbijHB3nKSU6XKW8/6zbLvVwUMem6tpIB4AM07HYpEPqtGWBQhdjMz5fKv
	5Bje26816uCtASifv/Efu7qbT4Avt9iybOkZtwZ9WxksWA32IqwwoppzalRWcbixizD6MWN
	TGYVY/IHuUd/nTnQQPpPpzy0ur1uUBEcBBNuFJEi5gQmwoWRhFY7TizFomn2aCnwQOUiW//
	kGeHTwVYgmObqpqKvQsjs8L8xAk19daFjOQcrKCfG+f8BsVCI6jHiaL9I75bWqauOljFZj1
	KVKHrM4lly5kOcvoYD7kcVVmqaUT67+yrON7RLwnLCh0QPa5n5TEhS0ENNNrsBXKuYNlgJK
	4xrUwuMQqpP1GhzlmmMOwEXyDlaPazqUaaJKs+DnDzVG3fqIgRAC88ydMRcv7AOTZS6w+Dj
	o7nJ7QOoRNJqO9r9f+wNPMWJB84Bs5/S2eCeyQV3MUE=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_201004_659471_DA1816C6 
X-CRM114-Status: GOOD (  12.42  )
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

Hi,

I forgot one thing...

On 11/27/24 10:52, FUKAUMI Naoki wrote:
> on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> devices.
> 
> rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> matches with rfkill-bt.
> 

Fixes: 82d40b141a4c ("arm64: dts: rockchip: add rfkill node for M.2 Key 
E WiFi on rock-5b")

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c44d001da169..d597112f1d5b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -72,7 +72,7 @@ fan: pwm-fan {
>   
>   	rfkill {
>   		compatible = "rfkill-gpio";
> -		label = "rfkill-pcie-wlan";
> +		label = "rfkill-m2-wlan";
>   		radio-type = "wlan";
>   		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>   	};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
