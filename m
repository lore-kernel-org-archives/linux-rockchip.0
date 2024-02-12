Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88905C4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 22:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjGkBZvmUtnkJudccK5PoK7kx7Bu9RmluJUN9AjDr9Q=; b=kar6R16xBrEDwY
	V+kZ1rQuZfcGbqAODIiHD/ywyXNGokLfQ8LVR31PKvbi2s8Ipr8hqQnQfXCsr3oyeRy/8I1haxZv2
	qczFlP+gO6+Z0BRig3XrXWvscIhEglXeX/SIePzwd1qAvUOVF3syQzEpo8gEtoK8px3zb7gYiRNOA
	l+J3EECK8G00oR/PB1PbNg+X4KM1m1Y9hZ2SZHkKg3gKjQ8o2KBjYMYrMvDK804PLPHDO/eAdTnOa
	BFHqwp5Uzvvm67YWiVGmuNIcN8cRj51EUdkU2Ss4/wnFV+00om5AHtQNbPklyjjFBWM0IFIXX690x
	1U0i7AadGEkS0fxANfjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZf2q-00000007ByJ-00Rs;
	Mon, 12 Feb 2024 22:45:00 +0000
Received: from forward500c.mail.yandex.net ([178.154.239.208])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZf2l-00000007BxY-0BkF;
	Mon, 12 Feb 2024 22:44:57 +0000
Received: from mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net [IPv6:2a02:6b8:c24:5a6:0:640:ee22:0])
	by forward500c.mail.yandex.net (Yandex) with ESMTPS id CC6E460F42;
	Tue, 13 Feb 2024 01:44:42 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id civpIX0pHCg0-aviaNSvO;
	Tue, 13 Feb 2024 01:44:41 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1707777881; bh=l8YSD2byZe121ynq36axzQobriPKExDpwph35JKavO8=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=ItaX6CF4USzkVKNlQQCdzilewN5z2Q7DBFIvnEZuIxlmcJs8onDIXydbmfYoYRpg+
	 tHqvqS52aa+lhAHGn064WwlFWUku1+2lHNGxi4OuotcDy55wgflA6pak2SgMR0MkQA
	 lZuvjnIRIiCGvY0L5gkQTcYYJS/Srfu5XwLvfyrc=
Authentication-Results: mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <9f8d39c1-66ca-4bb7-994e-de15cb516473@yandex.com>
Date: Mon, 12 Feb 2024 23:44:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 06/10] arm64: dts: rockchip: add USBDP phys on rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-7-sebastian.reichel@collabora.com>
 <6bc2f825-7e50-488d-a373-a211ac2cc8e1@yandex.com>
 <dsfne22iebd7mvyyskhpw3rkkfhlxpv32afht456vq3u52axyr@kgkxfzm5vn4c>
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <dsfne22iebd7mvyyskhpw3rkkfhlxpv32afht456vq3u52axyr@kgkxfzm5vn4c>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_144455_642255_4A7600C3 
X-CRM114-Status: GOOD (  18.28  )
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



On 2/12/24 19:48, Sebastian Reichel wrote:
> Hi Johan,
> 
> On Sun, Feb 11, 2024 at 08:24:36PM +0100, Johan Jonker wrote:
>>> +		u2phy1: usb2-phy@4000 {
>>
>>         "usb2phy@[0-9a-f]+$":
> 
> Interesting. I would have expected that to pop up in dtbs_check, but
> it does not for some reason. I will fix it for all usb2phy instances
> in rk3588.
> 
>>> +			compatible = "rockchip,rk3588-usb2phy";
>>> +			reg = <0x4000 0x10>;
>>> +			interrupts = <GIC_SPI 394 IRQ_TYPE_LEVEL_HIGH 0>;
>>
>>> +			resets = <&cru SRST_OTGPHY_U3_1>, <&cru SRST_P_USB2PHY_U3_1_GRF0>;
>>> +			reset-names = "phy", "apb";
>>> +			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
>>> +			clock-names = "phyclk";
>>> +			clock-output-names = "usb480m_phy1";
>>> +			#clock-cells = <0>;
>>
>> Align with the (new) documentation
>> about property ordering.
>>
>>> +			status = "disabled";
>>> +
>>> +			u2phy1_otg: otg-port {
>>> +				#phy-cells = <0>;
>>> +				status = "disabled";
>>> +			};
>>> +		};
>>> +	};
> 
> The above follows everything from [0], which does not specify an
> order for the "standard/common  properties". For those this follows
> the order of existing usb2phy nodes. Did I miss any other new
> Documentation?
> 
> [0] https://www.kernel.org/doc/html/next/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node

While reading the text below I think it's in need for a clarification that the property order for common and vendor category is alpha-numerical as is for nodes.
For Rockchip DT in this case "reset*" below "clock*", so that the person after you can add properties in a sort list.

Johan

.===

The following order of properties in device nodes is preferred:

    "compatible"

    "reg"

    "ranges"

    Standard/common properties (defined by common bindings, e.g. without vendor-prefixes)

    Vendor-specific properties

    "status" (if applicable)

    Child nodes, where each node is preceded with a blank line

The "status" property is by default "okay", thus it can be omitted.


> 
> -- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
