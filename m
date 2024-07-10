Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977AEC38150
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 07:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lRjfGRMqe6RWJlRxH/wgrrrWmGDpLy7+Rl2jpMLAmw=; b=InYbiDumlmI8GL
	7osTA2P59gGd0r9IGLKGfuVlc2uAfrkNUGOoIShn1NTmCeNQK/hJsLbPQk+hEn7pFLsoJ7t4qUdQL
	lv9TCutf337wXqeYPYRGHlYv4eZtt5CJXyMqZXBicZ8Id6p61HaBLVZ0Ll2P7bBq7lh2xm/xHiFus
	K8fI+Gj5WNQfkF2NdCel37FzFaXCFxeyPVHNrR7wEP+Fo1TgngNhLsYHMJIovK2nYhmm7xqVZAg+V
	cG6F/MPD0bJcZJKjH9Rg4aoEl9ZUBqn02bI+LzD9mxDNWLOVJp7teBexhp5fBoIqwIQgLoobKnd/V
	M2DRiwke6y0dKY1sLq6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRLw-00000009gUO-2O4Y;
	Wed, 10 Jul 2024 07:03:00 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRLe-00000009gS8-1n7s;
	Wed, 10 Jul 2024 07:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1720594962; x=1752130962;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=w75KCVl1Td1dl0039xM1BsGqYrMvcTNH87jh0lAScys=;
  b=a+pPPzrkryDZShBAERhpwH14V3l/EnLSRBTQAxKcZGdBx7NPygs0qaCR
   T0+NUSzPntLYNC3lGRFjhRxqy9ABTFE4x01zbokgtyUzsZPGiMIgdIIBa
   AAkZsPBByVL1Yvy5m0zuCtXUymBkVwhm7JP4xpAt2tkWRCqmYYTPV2GAw
   hPJfreozmfMnt4YR9AR/WzM2skPz6nQurXhgfp0NwxvvDi//gu7eXKYfk
   AAlUn8R0aCGtPW6Kdld9WfDSsCaR4pqeee4NIvEfXVDXfvRqXNLYPYbYJ
   aIVDH4wzYWeI/UtXCVNqHa8HA7BqiW+UIIiKVvH2WMUu+wMjTO14pXDG/
   Q==;
X-CSE-ConnectionGUID: 2yIqFFj+QO6gEzYvhSB3Wg==
X-CSE-MsgGUID: atSQGguxQDaJCRTyhvgKTw==
X-IronPort-AV: E=Sophos;i="6.09,197,1716242400"; 
   d="scan'208";a="37830570"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 10 Jul 2024 09:02:37 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 97D90160B01;
	Wed, 10 Jul 2024 09:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1720594953;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=w75KCVl1Td1dl0039xM1BsGqYrMvcTNH87jh0lAScys=;
	b=baMM5hTKK9U7Kk5F66IsBtrSnvDEhXUiejxLGjkaw95uST9cvyVdd3IxVt090QStWpibyV
	VJZcGODYCWb/Bx+Lh456quPMQSVTAf5XxJSeSVoGWjSlF+KJ629MalaZPPfEFct9L7NQb6
	pNVqBRZ6Q2WEgrox/ZQF0CBgdrven+rhl6d5JwnAvBllYr7AfNWYcQxIqbFnCZwYCVuMEt
	dWKJCxIng/pTW2Uv+Zn0abkCi/lvVqtLonOOY/16o+ZWGaIRXLEQIhC9+kkN/nqx0tHQdM
	Ku2kz+RQhsyw6j3crdk2XhXf0WcXVINXstho9z3T+Gbg4v1/gbkKRLjyORU0lw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: mturquette@baylibre.com, sboyd@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, quentin.schulz@cherry.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
Date: Wed, 10 Jul 2024 09:02:34 +0200
Message-ID: <12478313.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240709123121.1452394-2-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de> <20240709123121.1452394-2-heiko@sntech.de>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_000242_984556_12244959 
X-CRM114-Status: GOOD (  23.22  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

Am Dienstag, 9. Juli 2024, 14:31:16 CEST schrieb Heiko Stuebner:
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional clock generators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.

Fixed clocks are intended to be ungateable? Where does this come from?

> This adds a binding for such clock generators that are not configurable
> themself, but need to handle supplies for them to work.
> =

> While in a lot of cases the type of the IC used is described in board
> schematics, in some cases just a generic type description like
> "100MHz, 3.3V" might also be used. The binding therefore allows both
> cases. Specifying the type is of course preferred.
> =

> The clock-frequency is set in devicetree, because while some clock
> generators have pins to decide between multipls output rates, those
> are generally set statically on the board-layout-level.
> =

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/clock/clock-generator.yaml       | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/clock-generat=
or.yaml
> =

> diff --git a/Documentation/devicetree/bindings/clock/clock-generator.yaml=
 b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> new file mode 100644
> index 0000000000000..f44e61e414e89
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/clock-generator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Simple clock generators
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  $nodename:
> +    anyOf:
> +      - description:
> +          Preferred name is 'clock-<freq>' with <freq> being the output
> +          frequency as defined in the 'clock-frequency' property.
> +        pattern: "^clock-([0-9]+|[a-z0-9-]+)$"
> +      - description: Any name allowed
> +        deprecated: true
> +
> +  compatible:
> +    oneOf:
> +      - const: clock-generator
> +      - items:
> +          - enum:
> +              - diodes,pi6c557-03b
> +              - diodes,pi6c557-05b
> +          - const: clock-generator
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-frequency: true
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description:
> +      Contains a single GPIO specifier for the GPIO that enables and dis=
ables
> +      the clock generator.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: handle of the regulator that provides the supply voltage

So essentially only enable-gpios and vdd-supply is added in comparison to
fixed-clock. Does it make sense to add that to the fixed-clocks instead?
Similar to fixed-regulator.

> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clock-frequency

With this list it's essentially the same as fixed-clock.

Best regards,
Alexander

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock {
> +      compatible =3D "clock-generator";
> +      #clock-cells =3D <0>;
> +      clock-frequency =3D <1000000000>;
> +    };
> +...
> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
