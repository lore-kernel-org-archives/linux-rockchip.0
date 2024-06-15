Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB12C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 08:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38qCXKzJ+nL/liTyMeYVfM/fDZAEetDJa/k/wl7hdF0=; b=HL7tlJ5xXRuO6X
	LA63XmXFYiZZeLUznTfcbBCNUNj5kIZBjVbt96ePIM/3VjmhTyzrOzZ+bvpXOJU6AbnUu3qTbHXLm
	q+jfMGLny2XLTxaBzQeyFtu88DO1o4I6MnvXT+0aVlPrk87xsh0AFJvRoGXUfKm8PM91fm+WAZpq9
	9CIOuRyaRPB7QKzSFpyUFJauQ3c4SV/cDSjWLEQ4Tz3DI35BuugA/CVVfF7RY/1yXzzt5G6YVOUFK
	+CgGUCeqsvZ+aaImXyP0kV1ernYLo/c+lHszUjRJEfdQE0dxaFl8HMLfk4dxIOOOU+DW3DtOZYatS
	USpi4xkab9VVb85NwA2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOW5-00000004yRX-0AU0;
	Sat, 15 Jun 2024 08:12:05 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOW2-00000004yOd-1wRK
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 08:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718439068;
 bh=KD9XMEsUfvBdMg6V4GnJ0Xmth7fRvLlwhgghB2MFr/I=;
 b=y0fF29KlmtPU2HFDuFwRWA4MhxHmNZxGVUD/h5xkUSYQC1AHBRVFTqCjt5avCPyhtrAe6BYnG
 Fxj0B9vKfIC6vnQtvKf4D1BT5tfmbSGwMJnGErYk3xtmM9N2oyCx5BqpKM2LjMg9qeQPPyFJsyj
 L0zFvwFR95a60P7FEJ0wOYgCsO7XAQ6R1Fs3qHN+MxLZ91tKKrRqvAHagXzRBGRtdJSQUDF0jDV
 bHpkYl1CZkiLTJeLhCIVOjIaGbemeTWsJHgB+zNgJSz6970n6xlnHlCIww/CwERqJbkOsfwRwcR
 Yzc1z7cKv018sN4XvgzIPDndgdrLxU4Lrd/doa8FVxeA==
Message-ID: <442bbb41-40ed-4e6c-b854-02b636f09fc3@kwiboo.se>
Date: Sat, 15 Jun 2024 10:11:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] media: dt-bindings: rockchip: Document RK3588 Video
 Decoder 2 bindings
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Dragan Simic
 <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>, Cristian
 Ciocaltea <cristian.ciocaltea@collabora.com>, Diederik de Haas
 <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-3-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240615015734.1612108-3-detlev.casanova@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666d4c9a01f41f7e8a2106cd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_011202_797959_BD8A3C1C 
X-CRM114-Status: GOOD (  14.14  )
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

Hi Detlev,

On 2024-06-15 03:56, Detlev Casanova wrote:
> Document the Rockchip RK3588 Video Decoder 2 bindings.

Why the need for a new schema file and not just extending existing
rockchip,vdec.yaml with a new compatible and the new clock?

> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/media/rockchip,vdec2.yaml        | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> new file mode 100644
> index 000000000000..e54891b46986
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Video Decoder 2 (VDec2)
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |-
> +  The Rockchip rk3588 has a stateless Video Decoder that can decodes H.264,
> +  HEVC, VP9 and AVS2 streams.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3588-vdec2

I fail to see the need to call this vdec2 instead of established vdec.

Suggest this is changed to rockchip,rk3588-vdec.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: The Video decoder AXI interface clock
> +      - description: The Video decoder AHB interface clock
> +      - description: The Video decoder core clock
> +      - description: The Video decoder CABAC clock
> +      - description: The Video decoder HEVC CABAC clock
> +
> +  clock-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: core
> +      - const: cabac
> +      - const: hevc_cabac
> +
> +  assigned-clocks: true
> +
> +  assigned-clock-rates: true
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/power/rk3588-power.h>
> +
> +    vdec2: video-codec@fdc38100 {
> +        compatible = "rockchip,rk3588-vdec2";
> +        reg = <0x0 0xfdc38100 0x0 0x500>;
> +        interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> +        clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> +                 <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +        clock-names = "axi", "ahc", "core",
> +                      "cabac", "hevc_cabac";
> +        assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> +                          <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +        assigned-clock-rates = <800000000>, <600000000>,
> +                               <600000000>, <1000000000>;
> +        power-domains = <&power RK3588_PD_RKVDEC0>;

iommus and resets seem to be missing?

Regards,
Jonas

> +    };
> +
> +...


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
