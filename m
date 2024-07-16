Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2E9C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 17:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M05LU3hKX+nmLZO1gPDd+NjPps7YtOgz3hpUOO2PKSY=; b=QVQfZfnLTs9T10G1QKgfKlStnD
	GldSE+SA0X5Qs+V7+AEXW7hY+SQq4F1y2Zvv8zXOLLTaqtn6Ty6SplJmnTzo1kY/G9D4+KprmBht3
	UdOViro3e/GPnYdL8zg3oaznDTUtwNf5Ck9VRnzvgR9pLY01XuFG8FZv43xXkimIz3W1bKyRNsHpI
	Or4eyZy3Qgg2vxbKbcW0yj5C5y8M5Lwb6nQl/LVukgoX1pi0CW2OtmmUuW35ycJToJFQWiTAsmCnx
	DZ04WvB4Um/EhWFiUxGwZ/BxzdrUd4T6acJOBUhAsixe2MF8UjfeBH9l/w6MdgbYKET5251JbVHnD
	jTSShzHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmNk-0000000BCKR-1DXq;
	Tue, 16 Jul 2024 17:54:32 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmNN-0000000BCDh-40ee;
	Tue, 16 Jul 2024 17:54:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721152447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tBaze88xDn3yKiej0Z29otCCIlY/u1pmqzk/0G8E5gA=;
	b=MCv6+3Go0FkYuSBtkw+8oFM7vnjW1gqfaH4mN3AZ1ackrOJBnvWXFIoOpenZ5Irkc7SovC
	yBB7KXWrN/eddOK97aIGILJLwMJjdvRhRbcviO7J3WUqPwrh0EPesVR8w323Pt3OQDjqHG
	avdmnyGZDaG+CAfvjJr1bEeAxmNxsekrzx1rjUlWkJ8TRE/AX9Knet50IVNV+08A1FoSar
	BHg0SD/CUrnfmRLOACCJOcCqivkulAn0SzsuQCLx7iKH99315HcSUc89xz5EIb+nb4SMrG
	e/FQgOUpTuaOqHBPzuQzAszsOhdRGWvw2yypKT+TpDPxsQCrkhCpDYD4ejdlIw==
Date: Tue, 16 Jul 2024 19:54:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
In-Reply-To: <20240716-deceiving-saucy-851fb2303c1f@spud>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <20240716-deceiving-saucy-851fb2303c1f@spud>
Message-ID: <30e4a6cb0ad489fa30efbfef2d6005d7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_105410_346858_2D2DD72A 
X-CRM114-Status: GOOD (  22.64  )
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

Hello Conor,

On 2024-07-16 18:15, Conor Dooley wrote:
> On Mon, Jul 15, 2024 at 01:02:49PM +0200, Heiko Stuebner wrote:
>> In contrast to fixed clocks that are described as ungateable, boards
>> sometimes use additional oscillators for things like PCIe reference
>> clocks, that need actual supplies to get enabled and enable-gpios to 
>> be
>> toggled for them to work.
>> 
>> This adds a binding for such oscillators that are not configurable
>> themself, but need to handle supplies for them to work.
>> 
>> In schematics they often can be seen as
>> 
>>          ----------------
>> Enable - | 100MHz,3.3V, | - VDD
>>          |    3225      |
>>    GND - |              | - OUT
>>          ----------------
>> 
>> or similar. The enable pin might be separate but can also just be tied
>> to the vdd supply, hence it is optional in the binding.
>> 
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> ---
>>  .../bindings/clock/voltage-oscillator.yaml    | 49 
>> +++++++++++++++++++
>>  1 file changed, 49 insertions(+)
>>  create mode 100644 
>> Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
>> 
>> diff --git 
>> a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml 
>> b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
>> new file mode 100644
>> index 0000000000000..8bff6b0fd582e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
>> @@ -0,0 +1,49 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Voltage controlled oscillator
> 
> Voltage controlled oscillator? Really? That sounds far too similar to a
> VCO to me, and the input voltage here (according to the description at
> least) does not affect the frequency of oscillation.

Yup, "voltage controlled oscillator" really isn't the right choice for
the name, as I wrote about already. [1]

[1] 
https://lore.kernel.org/linux-rockchip/ec84dc37e2c421ee6d31294e08392d57@manjaro.org/

> Why the dedicated binding, rather than adding a supply and enable-gpio
> to the existing "fixed-clock" binding? I suspect that a large portion 
> of
> "fixed-clock"s actually require a supply that is (effectively)
> always-on.
> 
>> +
>> +maintainers:
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +properties:
>> +  compatible:
>> +    const: voltage-oscillator
>> +
>> +  "#clock-cells":
>> +    const: 0
>> +
>> +  clock-frequency: true
>> +
>> +  clock-output-names:
>> +    maxItems: 1
>> +
>> +  enable-gpios:
>> +    description:
>> +      Contains a single GPIO specifier for the GPIO that enables and 
>> disables
>> +      the oscillator.
>> +    maxItems: 1
>> +
>> +  vdd-supply:
>> +    description: handle of the regulator that provides the supply 
>> voltage
>> +
>> +required:
>> +  - compatible
>> +  - "#clock-cells"
>> +  - clock-frequency
>> +  - vdd-supply
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    voltage-oscillator {
>> +      compatible = "voltage-oscillator";
>> +      #clock-cells = <0>;
>> +      clock-frequency = <1000000000>;
>> +      vdd-supply = <&reg_vdd>;
>> +    };
>> +...
>> --
>> 2.39.2
>> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
