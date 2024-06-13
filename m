Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD70C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 09:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5M3DFYKLO/FR+/WS6p9HF2K0IJprJSpEuWCdpW174c=; b=Hz2CodbfON4cOX
	iX6HoI9bjIxgUpl+Rvxo0Op4xPVFrubIXLesTTOhVYseBsRwY+doyIquhZWmWlmySO+9M6Cfhdzhh
	G7sxthqH7ggVEUdybT2E8CLsj1BwYWqC6diwk7FazZ/7mu74t/Uk3DZs0VSBVaCpJDE9GuyyqYMqr
	i4HOhPTvdp1dfdq5ui1ycSmaDt5PAkX4ac/7yLIC0G3evdwH1WQOjsXEtPmCJVtescw8D7gtv6S/g
	C2QTamwhGak/tF01L6t2tRS6JGyfl6NETxDBvGL84f7+JaW6ieYmRruGhffyspEHqtcu0yA60o/FR
	GTTdSSQG3iCP18HkGf2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHh0n-0000000G1Ny-1KyG;
	Thu, 13 Jun 2024 09:44:53 +0000
Received: from forward501b.mail.yandex.net ([178.154.239.145])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHh0g-0000000G1KZ-20OF;
	Thu, 13 Jun 2024 09:44:49 +0000
Received: from mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:298c:0:640:7729:0])
	by forward501b.mail.yandex.net (Yandex) with ESMTPS id 326E861317;
	Thu, 13 Jun 2024 12:44:35 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id Vicprp1Oca60-NKeaeh3H;
	Thu, 13 Jun 2024 12:44:33 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1718271874; bh=rXDnmJ5ZQOUO+9FQYV87xXfZpc46R3cPAarAmqFfOiA=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=Lz7ebCIu5oUOLBGf+eWcXQ5AFXnNvRxLl6ZQnVz9AUfKAP28kEEi1tE1S0i5AaWFc
	 m5ri4Y5j79nsndV76J15Y4Gs6PE76abROtAXGJ222vO+PVUzo3htJ30mH7XXqPVxRe
	 Z9JQvUcYgzr5EQ1sfY95eHQX5PhyroLRur5AFFQo=
Authentication-Results: mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <cc66cca1-33db-4f30-afcf-d256a959896b@yandex.com>
Date: Thu, 13 Jun 2024 11:44:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
To: Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com, s.hauer@pengutronix.de,
 cristian.ciocaltea@collabora.com, andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 javier.carrasco.cruz@gmail.com
References: <20240613085812.4020-2-shresthprasad7@gmail.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20240613085812.4020-2-shresthprasad7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_024447_107728_83F74B75 
X-CRM114-Status: GOOD (  22.27  )
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



On 6/13/24 10:58, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> Signed-off-by: Shresth Prasad <shresthprasad7@gmail.com>
> ---

Add ack request from phy maintainer here.

> Changes in v3:
>     - fix `reg` in example being too long
> 
> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
> and `rockchip/rk3399-pinebook-pro.dtb`.
> 
>  .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
>  .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
>  3 files changed, 80 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
> new file mode 100644
> index 000000000000..85d74b343991
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
> @@ -0,0 +1,79 @@

> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)

You are converting an existing document, so GPL 2 only.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,emmc-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip EMMC PHY
> +
> +maintainers:

> +  - Shresth Prasad <shresthprasad7@gmail.com>

Prefer to add someone that can immediately respond if Rob H. wants to delete something.
Use the Rockchip DT maintainer here:
  - Heiko Stuebner <heiko@sntech.de>

> +
> +properties:

> +  "#phy-cells":
> +    const: 0

Move this to the bottom of this list.

> +
> +  compatible:
> +    const: rockchip,rk3399-emmc-phy
> +
> +  reg:

> +    description:
> +      PHY register address offset and length in "general register files"

remove

> +    maxItems: 1
> +
> +  clock-names:

> +    description: |
> +      Although this is not a required property (because most boards can get
> +      basic functionality without having access to it), it is strongly
> +      suggested.

remove
No need for descriptions if there's just 1 clock.

> +    const: emmcclk
> +
> +  clocks:

> +    description:
> +      Should have a phandle to the card clock exported by the SDHCI driver.

remove 

> +    maxItems: 1
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
> +required:

> +  - "#phy-cells"

Move at the bottom of this list.

> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    grf: syscon@ff770000 {
> +      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> +      reg = <0xff770000 0x10000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +
> +      emmcphy: phy@f780 {

> +        #phy-cells = <0>;

Move at the bottom of this list.
Order of Properties in Device Node:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst#n112

> +        compatible = "rockchip,rk3399-emmc-phy";
> +        reg = <0xf780 0x20>;
> +        clocks = <&sdhci>;
> +        clock-names = "emmcclk";
> +        drive-impedance-ohm = <50>;
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
> index 79798c747476..1f88416657cc 100644

> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml

grf.yaml can be busy at times. Let Heiko take care of the merge order.
Ask for an ack from the phy maintainers in your commit message below a "---"

> @@ -178,7 +178,7 @@ allOf:
>        patternProperties:
>          "phy@[0-9a-f]+$":

>            description:
> -            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +            Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml

Integrate rockchip,emmc-phy.yaml with grf.yaml with $ref.
Remove above, use/test below:

          $ref: /schemas/phy/rockchip,emmc-phy.yaml#

          unevaluatedProperties: false


>  
>    - if:
>        properties:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
