Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D8BDCE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxu3UOq14o0cjldRKQZTEG7ARHl+CS+QAIVHTxDP91k=; b=Z9IL4BZUY1UY3f
	O3diX5ypXB2i2AAA7fvaFRclHDkTL3wnbRGnfl9dqWmp74Tu05eShAApxJ9A4keQKHKaAyP/aQ8LF
	WJn5FRVpO92f7/qB8g8wUFREwDfYOH7rNQaX/934fpPLffbwjI7sGRtOingfbfuueuFZYlgHtHXaD
	5CwQWrvkifACwM95SLs443OXYu7PUtdH+fkzpMZ+pPj7IFonE/lV1L9kzG9qXq4wfan090pAdryQA
	5fS0yh5mGYe5hJjbbMAiXgH2UltmeO3v1dVIB3yV0Q0qLTAFY43iQsH8P/u2E2rCOGJrsWykB3aqu
	KcDLSOAIAZnVTeoMmErQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVvP-0000000BhBz-16ik;
	Fri, 06 Sep 2024 10:10:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVdR-0000000BcDo-0qUi;
	Fri, 06 Sep 2024 09:52:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B05D75C5AF5;
	Fri,  6 Sep 2024 09:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 574A7C4CEC5;
	Fri,  6 Sep 2024 09:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725616327;
	bh=zlPe96qEkYTI2oOKTLt2ru4+cI3fHrOB1XnOtIqa46c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oMFXEiSWY2Gdc6v5SGUXnEqwwCtdBs0E97TS2iKPWUC5T739RhbBJZRLLMle24zVt
	 pbSeaPWwtb+gvswzNd4PRApEeE2KToG2YjYTpPgYJphVKVywwDuM9o1lf+HarJQm0n
	 dp+HuePYLJDm+IwT4ivrq3I6AdhzyyaZBAEjgGiZ6wm6C2H23xU0xQAMEa0B9bV688
	 2VTppoOGmaaPmPYhcrc4OO/XQCohJrL+9/4vO8D39Cv/3Wo7w7ooOEsa0iVYhUlAD7
	 nVYZKiV0CB1ZSb26GJFHBwRH7MXQz3JJVWlzvi96skhD9RXo0cWMYkx4SFI3TCdXCV
	 A5I6W+4Q5iGYQ==
Message-ID: <dbc6af20-886a-46fb-a16c-dbcb5861478c@kernel.org>
Date: Fri, 6 Sep 2024 11:51:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] dt-bindings: Add documentation for Photonicat PMU
To: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-9-bigfoot@classfun.cn>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240906093630.2428329-9-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_025209_419269_F1FBCBEE 
X-CRM114-Status: GOOD (  18.76  )
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

On 06/09/2024 11:36, Junhao Xie wrote:
> Add device tree binding documentation for Photonicat PMU MFD, LEDs,
> hardware monitor, power off, power supply, real-time clock watchdog.
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>  .../hwmon/ariaboard,photonicat-pmu-hwmon.yaml |  40 +++++++
>  .../leds/ariaboard,photonicat-pmu-leds.yaml   |  41 +++++++
>  .../mfd/ariaboard,photonicat-pmu.yaml         | 107 ++++++++++++++++++
>  .../ariaboard,photonicat-pmu-poweroff.yaml    |  34 ++++++
>  .../ariaboard,photonicat-pmu-supply.yaml      |  55 +++++++++
>  .../rtc/ariaboard,photonicat-pmu-rtc.yaml     |  37 ++++++
>  .../ariaboard,photonicat-pmu-watchdog.yaml    |  37 ++++++
>  7 files changed, 351 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
>  create mode 100644 Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml
>  create mode 100644 Documentation/devicetree/bindings/power/reset/ariaboard,photonicat-pmu-poweroff.yaml
>  create mode 100644 Documentation/devicetree/bindings/power/supply/ariaboard,photonicat-pmu-supply.yaml
>  create mode 100644 Documentation/devicetree/bindings/rtc/ariaboard,photonicat-pmu-rtc.yaml
>  create mode 100644 Documentation/devicetree/bindings/watchdog/ariaboard,photonicat-pmu-watchdog.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
> new file mode 100644
> index 000000000000..c9b1bab20c31
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ariaboard,photonicat-pmu-hwmon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Photonicat PMU Hardware Monitor
> +
> +maintainers:
> +  - Junhao Xie <bigfoot@classfun.cn>
> +
> +description:
> +  Board temperature sensor on the Photonicat PMU MCU
> +
> +properties:
> +  compatible:
> +    const: ariaboard,photonicat-pmu-hwmon
> +
> +  label:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: Label for hwmon device

No resources here. Fold it into parent binding.

> +
> +required:
> +  - compatible
> +  - label
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      serial {
> +          mcu {
> +              compatible = "ariaboard,photonicat-pmu";

Drop, no need.

> +

Messed indentation.

Entire example is redundant. Merge it to parent binding.


> +              hwmon {
> +                  compatible = "ariaboard,photonicat-pmu-hwmon";
> +                  label = "pcat_board";
> +              };
> +          };
> +      };
> diff --git a/Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml b/Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml
> new file mode 100644
> index 000000000000..6ccb0e691b09
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/ariaboard,photonicat-pmu-leds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Photonicat PMU LEDs
> +
> +maintainers:
> +  - Junhao Xie <bigfoot@classfun.cn>
> +
> +description:
> +  LEDs on the Photonicat PMU MCU
> +
> +allOf:
> +  - $ref: common.yaml#
> +
> +properties:
> +  compatible:
> +    const: ariaboard,photonicat-pmu-leds

Your compatibles per device do not make much sense. You organized
bindings per drivers, but that's not what we want.

> +
> +  label: true

Drop

> +
> +required:
> +  - compatible
> +  - label
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      serial {
> +          mcu {
> +              compatible = "ariaboard,photonicat-pmu";
> +
> +              leds-status {
> +                  compatible = "ariaboard,photonicat-pmu-leds";
> +                  label = "net-status";
> +              };
> +          };
> +      };
> diff --git a/Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml b/Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml
> new file mode 100644
> index 000000000000..df16d9507821
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ariaboard,photonicat-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ariaboard Photonicat PMU
> +
> +maintainers:
> +  - Junhao Xie <bigfoot@classfun.cn>
> +
> +description:
> +  Driver for the Power Management MCU in the Ariaboard Photonicat,

Bindings are for hardware, not drivers. Drop it everywhere and explain
hardware.

> +  which provides battery and charger power supply, real-time clock,
> +  watchdog, hardware shutdown.
> +
> +properties:
> +  compatible:
> +    const: ariaboard,photonicat-pmu

That's the only compatible you should have. Drop all others.

> +
> +  current-speed:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 115200
> +    description: PMU Serial baudrate
> +
> +  local-address:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 127
> +    default: 1
> +    description: CPU board address

Address of what? In which notation? It's part of this hardware.


> +
> +  remote-address:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 127
> +    default: 1
> +    description: PMU board address

Eee, no. Your board knows its address. You do not have to tell it.

> +
> +  hwmon:
> +    $ref: /schemas/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
> +
> +  poweroff:
> +    $ref: /schemas/power/reset/ariaboard,photonicat-pmu-poweroff.yaml
> +
> +  rtc:
> +    $ref: /schemas/rtc/ariaboard,photonicat-pmu-rtc.yaml
> +
> +  watchdog:
> +    $ref: /schemas/watchdog/ariaboard,photonicat-pmu-watchdog.yaml
> +
> +patternProperties:
> +  '^leds-(status)':

That's not a pattern.

> +    $ref: /schemas/leds/ariaboard,photonicat-pmu-leds.yaml
> +
> +  '^supply-(battery|charger)$':
> +    $ref: /schemas/power/supply/ariaboard,photonicat-pmu-supply.yaml

Why two nodes?

> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      serial {
> +          photonicat-pmu {
> +              compatible = "ariaboard,photonicat-pmu";
> +              current-speed = <115200>;
> +              local-address = <1>;
> +              remote-address = <1>;
> +
> +              supply-battery {
> +                  compatible = "ariaboard,photonicat-pmu-supply";
> +                  label = "battery";

Nope, drop label.

> +                  type = "battery";

No, there is no type property.

Missing monitored battery.

> +              };
> +
> +              supply-charger {
> +                  compatible = "ariaboard,photonicat-pmu-supply";
> +                  label = "charger";
> +                  type = "charger";
> +              };
> +
> +              hwmon {
> +                  compatible = "ariaboard,photonicat-pmu-hwmon";
> +                  label = "pcat_board";
> +              };
> +
> +              leds-status {
> +                  compatible = "ariaboard,photonicat-pmu-leds";
> +                  label = "net-status";
> +              };
> +
> +              poweroff {
> +                  compatible = "ariaboard,photonicat-pmu-poweroff";
> +              };
> +
> +              rtc {
> +                  compatible = "ariaboard,photonicat-pmu-rtc";
> +              };
> +
> +              watchdog {
> +                  compatible = "ariaboard,photonicat-pmu-watchdog";
> +              };

These are seriously redundant and useless nodes.  There is nothing
beneficial from the nodes above - they are all empty, without resources.
Drop all of them.

I finish the review here.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
