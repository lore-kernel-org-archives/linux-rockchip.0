Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EB6CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 08:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z92yNHihonPOgeeE8Ns+rovkxZD8Y7dfjwIsmiUo2+4=; b=tDbHTOUzUAgpqR
	JLel7h+PvfsezwNbHsTrAkJ8le2ZnAP7BBevD/hJExb7yh2p0h4OhuPXPV038U65yn9wOzDqD4Q8U
	yx5KZM1iuv4OB92eITSU1PWiM/BOJH0b0MnUHLFqes9w3q4VQkBpI6zs89efUJPTv//WZ/UtQAnUL
	Cohv2j0O8tkByXIJUVotO97/uPiRPM73wD5CbWjEjTAlVjfyY4IqjltfnGRv7IMj+aJNsCdAeYTGU
	tsfYjm5RIolNMk32Us7+WgMC2J4AhuiF3BTR6LJWky2PyjrF4315IllZNuz72VKmtRJ/oOVdNSnt0
	2shg6md/64yfqMiMl1fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snD4d-0000000GNJJ-11GH;
	Sun, 08 Sep 2024 08:15:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snD3b-0000000GN9L-2fCb;
	Sun, 08 Sep 2024 08:14:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E3A855C3A42;
	Sun,  8 Sep 2024 08:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA59EC4CEC3;
	Sun,  8 Sep 2024 08:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725783242;
	bh=lk3y3r9rCVBETAKY3ZTOr+TpiAyeqn8OZ0JuF1RrzBI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pclr3fWNCXyFvmnW7/dKCy75j6qc38ImoqMgkG1VKgZVu6ir2YWdCkVJSGVutF1h/
	 7Z+pwlL/HL/pO4puQt6uGk82kbye2biFWZIrjSePMKFNcsbfa+g6MnFuOZmf8H8kn6
	 dpcReWjafb+rcFGUdGNfJiG4fWSQl5WDZrVyOlS2ff/4PynEeBYETKI5QLRr3nDGKz
	 SGDB8SWqQPaheNsS3Dz8Dmi38VmBnYZpC4IMPsqyPbK5gS+b1UYOecahBx7RRATE/A
	 X4v+f2smG7vP0Yl3N7iJsRwJe8dHCqG3TE8liCxab+JXSE0Av8gOonotjfxgPPsqYZ
	 Xt8yru/lucckw==
Message-ID: <77d41268-30e3-48a5-b611-40f586586ffb@kernel.org>
Date: Sun, 8 Sep 2024 10:13:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] dt-bindings: Add documentation for Photonicat PMU
To: Junhao Xie <bigfoot@classfun.cn>
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
 Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-9-bigfoot@classfun.cn>
 <dbc6af20-886a-46fb-a16c-dbcb5861478c@kernel.org>
 <cd0b36f4-f31d-4a65-868c-72b3c7021f14@classfun.cn>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <cd0b36f4-f31d-4a65-868c-72b3c7021f14@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_011403_852344_3A17120B 
X-CRM114-Status: GOOD (  20.84  )
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

On 07/09/2024 16:27, Junhao Xie wrote:

>>> +
> [...]
>>> +  local-address:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    minimum: 1
>>> +    maximum: 127
>>> +    default: 1
>>> +    description: CPU board address
>>
>> Address of what? In which notation? It's part of this hardware.
>>
> 
> Photonicat's MCU protocol documentation says it supports multiple hosts.
> But Photonicat only uses one.
> Is it necessary to remove local-address and use a fixed address?

I don't understand what this "address" is for.

> 
>>
>>> +
>>> +  remote-address:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    minimum: 1
>>> +    maximum: 127
>>> +    default: 1
>>> +    description: PMU board address
>>
>> Eee, no. Your board knows its address. You do not have to tell it.
> 
> I will remove remote-address.
> 
>>
> [...]
>>> +
>>> +patternProperties:
>>> +  '^leds-(status)':
>>
>> That's not a pattern.
>>
> 
> I originally wanted to keep it for extensions, but it didn't seem like a good idea.
> I will move it to properties.
> 
>>> +    $ref: /schemas/leds/ariaboard,photonicat-pmu-leds.yaml
>>> +
>>> +  '^supply-(battery|charger)$':
>>> +    $ref: /schemas/power/supply/ariaboard,photonicat-pmu-supply.yaml
>>
>> Why two nodes?
>>
>>> +
>>> +required:
>>> +  - compatible
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +      serial {
>>> +          photonicat-pmu {
>>> +              compatible = "ariaboard,photonicat-pmu";
>>> +              current-speed = <115200>;
>>> +              local-address = <1>;
>>> +              remote-address = <1>;
>>> +
>>> +              supply-battery {
>>> +                  compatible = "ariaboard,photonicat-pmu-supply";
>>> +                  label = "battery";
>>
>> Nope, drop label.
>>
>>> +                  type = "battery";
>>
>> No, there is no type property.
> 
> There are two supplies here, one is the charger and the other is the battery.
> Is it necessary to change to use different compatible ones like
> ariaboard,photonicat-pmu-battery and ariaboard,photonicat-pmu-charger?

Are the devices different? Why do you even need the type?

> 
>>
>> Missing monitored battery.
>>
> 
> I will add it.
> 
>>> +              };
>>> +
> [...]
>>> +
>>> +              watchdog {
>>> +                  compatible = "ariaboard,photonicat-pmu-watchdog";
>>> +              };
>>
>> These are seriously redundant and useless nodes.  There is nothing
>> beneficial from the nodes above - they are all empty, without resources.
>> Drop all of them.
> 
> How should I describe these devices? Using mfd_cell?

You mean drivers? MFD or auxiliary bus.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
