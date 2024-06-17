Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F717C2BA15
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcXqyHPYkZzPzZtNOzr4h8wLCCDaz7dyWJ487gdktIo=; b=IGjAL23JsJfq+g
	U2VPrsxKl1JuMgiB0GA9RlDJ0lIyyWi4iB8kL4IjOFluJXHzIwbYIqsP0IqMJZeGOEtWfvYqYGmyj
	b3l+aJoml3ElHAaBae2NZqsLh/q8WKXOdOn2J1Rj4rWW+Z970Zb4lh9EhwkztnvLkKf8UzVVs1+j/
	gFyWGytBy1JCDudCqmanmCjUvysUk8q82D1nTkGYr+2tMBdVdo6CA+k6slm1Pwrev00QlurZ77fDd
	T1itVtibTXuQa6+qORVnzg6zH32IkSYArBjqdD1ME+eHhIpauw/0g3mnoNokSNEr5Ov9hrS9UBqkz
	AiGc60o6Bz+zvs7Ol8eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJElL-0000000BcRg-44cB;
	Mon, 17 Jun 2024 15:59:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEl8-0000000BcJp-1lKo;
	Mon, 17 Jun 2024 15:59:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E5174CE02C2;
	Mon, 17 Jun 2024 15:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42DFFC2BD10;
	Mon, 17 Jun 2024 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718639942;
	bh=dvaCCGm0T4LQoDBLCKOzZ/DnxCXT6xS8nFEQzuVr9pI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UQ18fZZwwfZptDfOHc7FNjvDcuKaK3FOljY9jsRYNLYttiNXyJ6Hf0X58hQPO+ICw
	 wyByChjxK7/i2DmV0Nr5hVU84OuzEwVygqKgHXVVUhCS1XNV5r9do2hrDyEp7Ea29o
	 r6yHOxuquJ6E+92N3Za06UvBNa1sQ8RIQrnfw1nUat0r34QEam8/iGV+yFlv++1zxf
	 OPKmQgqQ0QaQp38nmS3UtJf/09+7T2Iou7364ql4U6TPn6oXkycWogdvr9tMdsqtPv
	 RmP1Q/ywqGceuCXyR7xvI9UlHQtnpq7LpSbErF3HlbK4g4njV5EvwUFsCMy2+zznLb
	 OJGD4n7BxjC6A==
Message-ID: <f691c7f9-cd81-4bdf-a794-95118cb26686@kernel.org>
Date: Mon, 17 Jun 2024 17:58:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
To: Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
 s.hauer@pengutronix.de, jbx6244@yandex.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, javier.carrasco.cruz@gmail.com,
 skhan@linuxfoundation.org
References: <20240617085341.34332-2-shresthprasad7@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240617085341.34332-2-shresthprasad7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_085907_259342_D17164EC 
X-CRM114-Status: GOOD (  16.01  )
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

On 17/06/2024 10:53, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> Signed-off-by: Shresth Prasad <shresthprasad7@gmail.com>
> ---


...


> +
> +  reg:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: emmcclk
> +
> +  clocks:
> +    maxItems: 1

Keep order from DTS coding style, so clocks then clock-names.

> +
> +  drive-impedance-ohm:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Specifies the drive impedance in Ohm.
> +    enum: [33, 40, 50, 66, 100]
> +    default: 50
> +
> +  rockchip,enable-strobe-pulldown:
> +    type: boolean
> +    description: |
> +      Enable internal pull-down for the strobe
> +      line.  If not set, pull-down is not used.
> +
> +  rockchip,output-tapdelay-select:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Specifies the phyctrl_otapdlysec register.
> +    default: 0x4
> +    maximum: 0xf
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    grf: syscon@ff770000 {

Drop label... actually entire node looks not needed.

> +      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";

Drop

> +      reg = <0xff770000 0x10000>;

Drop


> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +
> +      emmcphy: phy@f780 {

Drop label

> +        compatible = "rockchip,rk3399-emmc-phy";
> +        reg = <0xf780 0x20>;
> +        clocks = <&sdhci>;
> +        clock-names = "emmcclk";
> +        drive-impedance-ohm = <50>;
> +        #phy-cells = <0>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> deleted file mode 100644
> index 57d28c0d5696..000000000000
> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -Rockchip EMMC PHY
> ------------------------
> -
> -Required properties:
> - - compatible: rockchip,rk3399-emmc-phy
> - - #phy-cells: must be 0
> - - reg: PHY register address offset and length in "general
> -   register files"
> -
> -Optional properties:
> - - clock-names: Should contain "emmcclk".  Although this is listed as optional
> -		(because most boards can get basic functionality without having
> -		access to it), it is strongly suggested.
> -		See ../clock/clock-bindings.txt for details.
> - - clocks: Should have a phandle to the card clock exported by the SDHCI driver.
> - - drive-impedance-ohm: Specifies the drive impedance in Ohm.
> -                        Possible values are 33, 40, 50, 66 and 100.
> -                        If not set, the default value of 50 will be applied.
> - - rockchip,enable-strobe-pulldown: Enable internal pull-down for the strobe
> -                                    line.  If not set, pull-down is not used.
> - - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
> -                                    If not set, the register defaults to 0x4.
> -                                    Maximum value 0xf.
> -
> -Example:
> -
> -
> -grf: syscon@ff770000 {
> -	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -
> -...
> -
> -	emmcphy: phy@f780 {
> -		compatible = "rockchip,rk3399-emmc-phy";
> -		reg = <0xf780 0x20>;
> -		clocks = <&sdhci>;
> -		clock-names = "emmcclk";
> -		drive-impedance-ohm = <50>;
> -		#phy-cells = <0>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 79798c747476..6e1b1cdea680 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -176,9 +176,12 @@ allOf:
>              Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
>  
>        patternProperties:
> -        "phy@[0-9a-f]+$":
> -          description:
> -            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +        "^phy@[0-9a-f]+$":
> +          type: object
> +

Drop blank line

> +          $ref: /schemas/phy/rockchip,rk3399-emmc-phy.yaml#
> +

Drop blank line

> +          unevaluatedProperties: false
>  
>    - if:
>        properties:

Nothing in example? Isn't the example for 3399?

We want only one complete example of such multi-children devices, so the
example can be moved and included in existing one here.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
