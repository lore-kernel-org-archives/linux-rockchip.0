Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C376C7EE30
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 08:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cUPGYaiiBlrPlnJuktYkBIbnPnQ1ihxmBB4Z/VhSJo=; b=R3j6LGBscZtgGB
	u2gOSp0MiEl295GYi4ElJnli56Q4pF1KwL+P5P9dak62FZ6Z0aeSQ3YE6Ec/9OYmrZLmWtgNXhhHp
	hIAQ2xjNKaAwZSzDvhhLSqKn2m/oLCOEiRclmH/Yvt6ggpkU8ThZWa4Xvfn9lB7Wev4/3f29kZ4ll
	dnMS79kSl/zoqGXcearW6l4IIPU8pDR14SQKUEiwZAe/JbGMy/hSNl86I+iwX9mGTy/BDiTTLnEU5
	BpH24q4fhG62Oq7g8N7BtZbX/UrdRPhZ6L6RlmJL2POWsWKxvO/MmJplQ/mPElQI2jHf40FWEKeZ7
	1NrnouLb1xc32JxEK/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULhf-00000007zmt-2pgH;
	Wed, 25 Jun 2025 08:41:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUKry-00000007reE-1knO
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Jun 2025 07:48:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7187061784;
	Wed, 25 Jun 2025 07:48:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88541C4CEEA;
	Wed, 25 Jun 2025 07:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750837713;
	bh=wcxbDOO23BZSK9SuEAS8HrjXgynk1/RQtyt2aVRPI9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eosilbo1a2u7ZIOph35J9pAazHEt04/+SO+151EwKwNke744IyH4NyXjCLNf60pBS
	 cwvDeXlnq6rLavGYUmVZt1m8j3lpPhrUEx4XSr2wjnwBGntgWaojhZBAd5XROkxjxf
	 ozkxp4dSh5YLUGGTsYAf4noiL1Z38howiQReahs4TWooTvpyRu0EEnR5xiJou9e2mz
	 nefeMarc1jT9Sb9UrYzj6wgR27gvON90TUz4n2Q6TYAysQT2BA9hBBHZGAIpR9Hj8j
	 0grxp/QMPTJDnuaPDJNz/6hDk99NzcxxEHfFbDgmQmP2K94Ejp9jOGuxi/A/3qkxR4
	 4ZidlxkWJc77w==
Date: Wed, 25 Jun 2025 09:48:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, sre@kernel.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	lee@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
Message-ID: <5qeo2xqjprozcjd553qmozzrmbciuf66gic65tzw7jspoub5n4@5wzkqasisgcz>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
 <20250623162223.184304-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250623162223.184304-2-macroalpha82@gmail.com>
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

On Mon, Jun 23, 2025 at 11:22:19AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the Texas instruments BQ25703A series of charger managers/
> buck/boost regulators.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> new file mode 100644
> index 000000000000..0727f24b8e54
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BQ25703A Charger Manager/Buck/Boost Converter
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: /schemas/power/supply/power-supply.yaml#
> +
> +properties:
> +  compatible:
> +    const: ti,bq25703a
> +
> +  reg:
> +    const: 0x6b
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-supplies: true

Drop, redundant.

> +
> +  monitored-battery:
> +    description:
> +      The phandle for a simple-battery connected to this gauge.

This part is redundant. It cannot be anything else, according to
power-supply.yaml

> +      A minimum of constant-charge-current-max-microamp,
> +      constant-charge-voltage-max-microvolt, and
> +      voltage-min-design-microvolt are required.

This is fine.

> +
> +  input-current-limit-microamp:
> +    description:
> +      Maximum total input current allowed used for both charging and
> +      powering the device.
> +    minimum: 50000
> +    maximum: 6400000
> +    default: 3250000
> +
> +  regulators:
> +    type: object
> +    additionalProperties: false
> +    description:
> +      Boost converter regulator output of bq257xx.
> +
> +    properties:
> +      "usb-otg-vbus":

Drop quotes. Is this the name of regulator called in datasheet? To which
pin this corresponds to? I cannot find anything on usb-otg or usb_otg.


> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml
> +
> +        properties:
> +          regulator-name: true
> +          regulator-min-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-max-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-min-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          regulator-max-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          enable-gpios:
> +            description:
> +              The BQ25703 may require both a register write and a GPIO
> +              toggle to enable the boost regulator.
> +
> +        additionalProperties: false

Please place it after $ref.

> +
> +        required:
> +          - regulator-name
> +          - regulator-min-microamp
> +          - regulator-max-microamp
> +          - regulator-min-microvolt
> +          - regulator-max-microvolt
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - input-current-limit-microamp
> +  - monitored-battery
> +  - power-supplies

Keep the same order as in properties.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
