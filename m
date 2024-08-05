Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F79C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 19:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMaE2KRF4PZpWVOfayQVlOv7utTeTQO4bzihrow5swE=; b=lpUxs4cwchHlJg
	URC+ln8Tqa3YSVYgj02nZv/AGExAZ9rrmIqOhPBHGILkKh/UxdG0tIVDTBle+p0Qk4uRDMb3mAez9
	t24NZS0izUEXnz0OXnxOenMUX4/y2fYK0+KRlBngp72uf9TRET8Ulf4nX1c7D+/O8fn0lv9woRqYi
	BqL3NJEExMG6Y7KKYxwqpDmKinqZKkAKxeboKlvtMHXQy8dh8IrwtLVBXL22kFwnKPduI0b9fxtXw
	qtYFl19ncCDMPfH54Kp7glQHJBUiYHBocZuICLBZ9sWqAc3V6Zh0hO5dMM+9JRwu4V+9F++9UXdRe
	BHvvPPpK2xlBVox36i0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3DT-0000000Gyv2-1LAY;
	Mon, 05 Aug 2024 19:17:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3Cw-0000000Gyma-1NE6;
	Mon, 05 Aug 2024 19:17:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5EEAC60C4F;
	Mon,  5 Aug 2024 19:17:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA4DAC32782;
	Mon,  5 Aug 2024 19:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722885445;
	bh=yIzYBRhu3FkCRao5W4ixWWwmAsOLTrfWSG9/9Ucrdsg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u1XOg7lq5Gb+Iyutvrb8Ggq1n89ppsPewkZrwb13K7CWOXV1ARdNO+yQznlR51CJv
	 x9DjQkQdymtnwglT35Zr3AzKShlloIi9pbSBHhQ2EU+RLp0dmJCQ66l9NgegZpPZbx
	 S6QVW7Q46UxRi9amYrn3ZRfZGrXJhA1TeNTeXK3MCaIm6KiOVSgtIPPViJ783BI2A8
	 ue5GOs/Uyl1OXFptfdXDApl1bygdQuBO2dH64KCQBaI+qRFJnTycQlHXQnh88c93Uq
	 VD2po/oxeg5ZwuWR8jHjjzIzBSo6y1R5jMi6xF2A3CYcnDHnP1IVDk97wQl53JhHjK
	 36UJfSxOdj/Og==
Date: Mon, 5 Aug 2024 13:17:23 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, krzk+dt@kernel.org,
	conor+dt@kernel.org, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/7] dt-bindings: mfd: add binding for qnap,ts433-mcu
 devices
Message-ID: <20240805191723.GA2636745-robh@kernel.org>
References: <20240731212430.2677900-1-heiko@sntech.de>
 <20240731212430.2677900-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731212430.2677900-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_121726_457376_9214D622 
X-CRM114-Status: GOOD (  17.77  )
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

On Wed, Jul 31, 2024 at 11:24:24PM +0200, Heiko Stuebner wrote:
> These MCUs can be found in network attached storage devices made by QNAP.
> They are connected to a serial port of the host device and provide
> functionality like LEDs, power-control and temperature monitoring.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/mfd/qnap,ts433-mcu.yaml          | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> new file mode 100644
> index 0000000000000..5ae19d8faedbd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/qnap,ts433-mcu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: QNAP NAS on-board Microcontroller
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description:
> +  QNAP embeds a microcontroller on their NAS devices adding system feature
> +  as PWM Fan control, additional LEDs, power button status and more.

Doesn't really look like the binding is complete.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - qnap,ts433-mcu
> +
> +  "#cooling-cells":
> +    const: 2
> +
> +  cooling-levels:
> +    description: PWM duty cycle values corresponding to thermal cooling states.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      maximum: 255

These are fan properties and should be in a "fan" node referencing 
hwmon/fan-common.yaml.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
