Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A28FEB64C5
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 14:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1Lf3zTyzFgA5b4l/14xsMmZ+6w7XMWYDk0M5YLYIKM=; b=SGF31y93rOl2lS
	gHa3JUcKirAXEaxerVBzaf5MmeqQtacqD+YWi4bcFwJHTQyThhR35zZ8Or/1WtjYqC9ry2sW0P6LH
	ycmHSOCOQgv4s4iZ9VqaKk2zVIVXl5SiJxGFLjujHe4zVENr0QjYihtF83ZDg95rjgJPEW9IacHOA
	YXE4kBOQQqLzDOzGORwZ31h1EvGOFszAMxp/mjxu9RKhcIID+T/D+SST3Xbkdnrchqqs6GQdLpb9R
	QYMdO1bR8lWx7AOfF+inqKvmU1pqKa/Bo018y760pSIisoVGYboaS9CcPiUFSq56KIfidqfB8fovU
	cLGQnI564mA2UqXxqViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwQq-0000000F9Kd-0OqC;
	Sat, 07 Sep 2024 14:28:56 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwPo-0000000F96M-14B9;
	Sat, 07 Sep 2024 14:27:54 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 81D3378A01;
	Sat,  7 Sep 2024 22:27:41 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 81D3378A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725719267;
	bh=pXuvREj+1sdfcnTVSFVdtNeed2YvMG01TbfaFiPG+Ec=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=ED2ZPh7xAnWkoiSr/Tx8HAW02FcKkQ5sX5Hsn5+y1d+Foo+MQVS+UPFczjyTjIme1
	 C+uR0opV7ZQ7daW9p3cPJOC9zu6rh8zXawTRqAsFCqXLFycy12FcpcFDx6nLEpfQ4F
	 AV+vPQdx0m2xlgozPrPYOEeFtJo3lPi7v//ruhrQ=
Message-ID: <cd0b36f4-f31d-4a65-868c-72b3c7021f14@classfun.cn>
Date: Sat, 7 Sep 2024 22:27:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] dt-bindings: Add documentation for Photonicat PMU
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-9-bigfoot@classfun.cn>
 <dbc6af20-886a-46fb-a16c-dbcb5861478c@kernel.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "\"Conor Dooley,\"," <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <dbc6af20-886a-46fb-a16c-dbcb5861478c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_072752_695970_BB22A473 
X-CRM114-Status: GOOD (  23.74  )
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

On 2024/9/6 17:51, Krzysztof Kozlowski wrote:
> On 06/09/2024 11:36, Junhao Xie wrote:
>> Add device tree binding documentation for Photonicat PMU MFD, LEDs,
>> hardware monitor, power off, power supply, real-time clock watchdog.
[...]
>> diff --git a/Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
[...]>> +  label:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description: Label for hwmon device
> 
> No resources here. Fold it into parent binding.
> 
>> +
>> +required:
>> +  - compatible
>> +  - label
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +      serial {
>> +          mcu {
>> +              compatible = "ariaboard,photonicat-pmu";
> 
> Drop, no need.
> 
>> +
> 
> Messed indentation.
> 
> Entire example is redundant. Merge it to parent binding.
> 

I will fix them.

> 
[...]
>> diff --git a/Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml b/Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml
[...]
>> +properties:
>> +  compatible:
>> +    const: ariaboard,photonicat-pmu-leds
> 
> Your compatibles per device do not make much sense. You organized
> bindings per drivers, but that's not what we want.
> 
>> +
>> +  label: true
> 
> Drop

I will drop it.

> 
[...]
>> diff --git a/Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml b/Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml
[...]
>> +description:
>> +  Driver for the Power Management MCU in the Ariaboard Photonicat,
> 
> Bindings are for hardware, not drivers. Drop it everywhere and explain
> hardware.
> 

I will edit it.
Maybe the following looks better?
  The Power Management MCU in Ariaboard Photonicat, which
  provides battery and charger power supply real-time clock,
  watchdog, hardware shutdown, status LEDs.

>> +  which provides battery and charger power supply, real-time clock,
>> +  watchdog, hardware shutdown.
>> +
>> +properties:
>> +  compatible:
>> +    const: ariaboard,photonicat-pmu
> 
> That's the only compatible you should have. Drop all others.
> 
>> +
[...]
>> +  local-address:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    minimum: 1
>> +    maximum: 127
>> +    default: 1
>> +    description: CPU board address
> 
> Address of what? In which notation? It's part of this hardware.
> 

Photonicat's MCU protocol documentation says it supports multiple hosts.
But Photonicat only uses one.
Is it necessary to remove local-address and use a fixed address?

> 
>> +
>> +  remote-address:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    minimum: 1
>> +    maximum: 127
>> +    default: 1
>> +    description: PMU board address
> 
> Eee, no. Your board knows its address. You do not have to tell it.

I will remove remote-address.

> 
[...]
>> +
>> +patternProperties:
>> +  '^leds-(status)':
> 
> That's not a pattern.
> 

I originally wanted to keep it for extensions, but it didn't seem like a good idea.
I will move it to properties.

>> +    $ref: /schemas/leds/ariaboard,photonicat-pmu-leds.yaml
>> +
>> +  '^supply-(battery|charger)$':
>> +    $ref: /schemas/power/supply/ariaboard,photonicat-pmu-supply.yaml
> 
> Why two nodes?
> 
>> +
>> +required:
>> +  - compatible
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +      serial {
>> +          photonicat-pmu {
>> +              compatible = "ariaboard,photonicat-pmu";
>> +              current-speed = <115200>;
>> +              local-address = <1>;
>> +              remote-address = <1>;
>> +
>> +              supply-battery {
>> +                  compatible = "ariaboard,photonicat-pmu-supply";
>> +                  label = "battery";
> 
> Nope, drop label.
> 
>> +                  type = "battery";
> 
> No, there is no type property.

There are two supplies here, one is the charger and the other is the battery.
Is it necessary to change to use different compatible ones like
ariaboard,photonicat-pmu-battery and ariaboard,photonicat-pmu-charger?

> 
> Missing monitored battery.
> 

I will add it.

>> +              };
>> +
[...]
>> +
>> +              watchdog {
>> +                  compatible = "ariaboard,photonicat-pmu-watchdog";
>> +              };
> 
> These are seriously redundant and useless nodes.  There is nothing
> beneficial from the nodes above - they are all empty, without resources.
> Drop all of them.

How should I describe these devices? Using mfd_cell?

> 
> I finish the review here.
> 
> Best regards,
> Krzysztof
> 

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
