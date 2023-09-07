Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAEA5EC873E
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Sep 2023 16:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOQ2bPan0TAj5WS3no6PetQ80fylPJSnYMmqmcVzF+g=; b=wGh/9CyRCw7GYC
	QbCqkE+e0Cmhtr42qEDRYUZR8w24vAivZQJp5Txe2kYc0OoLhxqHgY+hQ7RFfii2STXi4En2jdd07
	80y8XOzK/2WM7I5EGMz4jl4dAizgy61CYWEI0Qgu980bhn6Nk/ALYU5SSwDgaE8JeJOWW0v9juFt8
	2n3CV5Q7ZrgYYbCXq/75dW4rHV5rN9LfjRK7DH2enCyqzmyWvINCvqe9rSkVR7Yn75RXbh4uO8n33
	jSSn2CkePkB3kesx0G970WwUMXeI5xF+AHvVne35em8ZY6kqoIybD/ziJDnlmuAJrIWfJkY/tpm9q
	cxwfJOLANuo+LqEu+oTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeHyp-00CP0x-0g;
	Thu, 07 Sep 2023 16:35:43 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeHyl-00CP02-0y;
	Thu, 07 Sep 2023 16:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E310F1007;
	Thu,  7 Sep 2023 09:36:12 -0700 (PDT)
Received: from [10.1.26.33] (010265703453.arm.com [10.1.26.33])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B2EA3F67D;
	Thu,  7 Sep 2023 09:35:32 -0700 (PDT)
Message-ID: <5165d26f-d5fe-13e9-7940-b73e27b2bea7@arm.com>
Date: Thu, 7 Sep 2023 17:35:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
 <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
 <20230906072121.GA492117@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230906072121.GA492117@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_093539_431661_440ABD97 
X-CRM114-Status: GOOD (  24.40  )
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

On 2023-09-06 08:21, Sascha Hauer wrote:
> On Tue, Sep 05, 2023 at 10:03:20AM +0100, Robin Murphy wrote:
>> On 2023-09-04 12:58, Sascha Hauer wrote:
>>> Add rockchip,io-domains property to the Rockchip pinctrl driver. This
>>> list of phandles points to the IO domain device(s) the pins of the
>>> pinctrl driver are supplied from.
>>>
>>> Also a rockchip,io-domain-boot-on property is added to pin groups
>>> which can be used for pin groups which themselves are needed to access
>>> the regulators an IO domain is driven from.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>    .../bindings/pinctrl/rockchip,pinctrl.yaml          | 13 ++++++++++++-
>>>    1 file changed, 12 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
>>> index 10c335efe619e..92075419d29cf 100644
>>> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
>>> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
>>> @@ -62,6 +62,11 @@ properties:
>>>          Required for at least rk3188 and rk3288. On the rk3368 this should
>>>          point to the PMUGRF syscon.
>>> +  rockchip,io-domains:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    description:
>>> +      Phandles to io domains
>>> +
>>>      "#address-cells":
>>>        enum: [1, 2]
>>> @@ -137,7 +142,13 @@ additionalProperties:
>>>                - description:
>>>                    The phandle of a node contains the generic pinconfig options
>>>                    to use as described in pinctrl-bindings.txt.
>>> -
>>> +      rockchip,io-domain-boot-on:
>>
>> I don't think "on" is a particularly descriptive or useful property name for
>> something that has no "off" state.
> 
> In fact it has an "off" state. A IO Domain can be disabled in the SoC
> registers

Oh, is that a thing on newer SoCs? At least in the RK3399 TRM the only 
I/O-domain-related control I can find is the 1.8V/3.0V logic level 
threshold in GRF_IO_VSEL (plus the one outlier in PMUGRF_SOC_CON0).

> and also the corresponding regulator can be disabled.

...which is clearly a property of the regulator, not of its consumers ;)

However it's also not a meaningful state in this context anyway, since 
if the supply was actually off, and thus we were unable to communicate 
with the PMIC to turn it on... oh dear.

Cheers,
Robin.

>> Furthermore it's no help at all if the DT
>> consumer *is* the bootloader that's expected to configure this in the first
>> place. IMO it would seem a lot more sensible to have an integer (or enum)
>> property which describes the actual value for the initial I/O domain
>> setting.
> 
> I agree though that a particular setting instead of a boolean is better
> and could help the bootloader.
> 
>> Then Linux can choose to assume the presence of the property at all
>> implies that the bootloader should have set it up already, but also has the
>> option of actively enforcing it as well if we want to.
> 
> Ok.
> 
> Thanks,
>   Sascha
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
