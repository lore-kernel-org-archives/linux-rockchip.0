Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24028CD4F53
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 05:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0shfuWlUtcixx8IgJnsZKLC0SVwMHJkeX6UuCer3G8=; b=sc5dWChNU1ThQE
	CXfQGC4ETTprks9nYRTYBxj6Xic+z69PE0bxF273vcrSJJzvd+LshOsMCnOZ1xiBcupIYACg9Uu/9
	k7CcQ3pGWliqBYF5jasvjRnvURomwkEn3IZ4bxu1ji8dGOj6GfFGr2SZz2uw9YYwvjyugDnFGVj/q
	hfggJjmKJfvfwyouV+0wANHn0pKNJuy/Z5Opv4EprWw63ojqBm1a+4dYbp2ClVuxspUVrzdoHx7gk
	JRUFv+PuJEM/hKgm4a69WJQYHA4KRGtOO8SvVRV78sf/2AGkKHLPevMQwbSwlrOHbuT0pRGUFer+S
	PpYfOlO+4L7Hjdg5YAlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm5At-0000000743P-3Tyf;
	Thu, 05 Sep 2024 05:36:55 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm59u-000000073si-3f7W;
	Thu, 05 Sep 2024 05:35:56 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 9BB38789E6;
	Thu,  5 Sep 2024 13:35:51 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 9BB38789E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725514552;
	bh=Hyq7RqSAoGC1rJ0dAnU4OWaWJgGE8rjFiQIsdvKZxrE=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=BEpbo9Gxr0f/JzpbESCFyy+vrgyiztBYy3YF9ldf8uy/I7cfJRoPr/SQ4Y0I+lPva
	 dF2Gl8+FxzzowZOAGFiQ/h6WCyKA7TJaI8UylOzC82VVCzZZXksxxBbDRaoGhVX0Ei
	 4COSwaqLPQHkTp7A8dOz/olPzxiwDB7pDCimUlaE=
Message-ID: <f8a5018f-113d-4d9d-9223-954d054796a6@classfun.cn>
Date: Thu, 5 Sep 2024 13:37:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add support for Ariaboard Photonicat RK3568
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <172545685977.2410524.10394848640957143488.robh@kernel.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <172545685977.2410524.10394848640957143488.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_223555_331441_B090BD6F 
X-CRM114-Status: GOOD (  14.71  )
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

On 2024/9/4 21:36, Rob Herring (Arm) wrote> On Wed, 04 Sep 2024 19:14:53 +0800, Junhao Xie wrote:
>> Add dts for Ariaboard Photonicat RK3568.
>>
[...]
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3568-ariaboard-photonicat.dtb' for 20240904111456.87089-1-bigfoot@classfun.cn:
> 
> arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#

I will remove it in PATCH v2

> arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dtb: rfkill-modem: 'reset-gpios' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/net/rfkill-gpio.yaml#

The modem in Photonicat must have a reset signal to work properly.
I can find reset-gpios in net/rfkill/rfkill-gpio.c, but it is not in the schema.
Maybe reset-gpios is missing in rfkill-gpio.yaml? or this property cannot be used in dts?

> 

Thanks for your reply, I will fix them in PATCH v2.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
