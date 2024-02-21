Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E6FC5478A
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 20:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aux3qW8W00VnTW2kfR8fUF2Tk2XlPGQXtwtXpgyONAw=; b=uTJJGISyZN8J84
	pI7Ug2xhzVb5IgnHBghs0cJCXv1RaesEx+MzPYBnCPkQ0S6xd8QxWkh0ZpX8hNbOE+6iZy5QuTVZ7
	EG/I7/JaVynCMTSjl8Ck8eXcsM8Kn3Dm6t0OZfGxYHvl3wa7C39/9ekmQ20/xH0Hpjs6TJ9YASOBt
	FoNUre7hQ/UXySsZniHFbVpwneW0+ENnY6/QFKYl/fIVKmkBUtMIJWy/2oL7N6htJgRbaeT1muX4g
	8z0Ya2LyCuqyaIiEgGL5RPpeOZVdxYy2S9CAI5kRi2x4Ebso1sW1hAOSxdkIJjSwSJNqCrYAca1Cz
	XfIOHSfmFMtKuGmflTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rctdF-00000002Xjx-0vfT;
	Wed, 21 Feb 2024 20:55:57 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rctdB-00000002Xgp-0cWw;
	Wed, 21 Feb 2024 20:55:54 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id BB61937820D2;
	Wed, 21 Feb 2024 20:55:46 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <fd3b7ab7-3702-412f-947a-95396dbe1f4c@linaro.org>
X-Forward: 127.0.0.1
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
 <20240216094922.257674-3-shreeya.patel@collabora.com> <fd3b7ab7-3702-412f-947a-95396dbe1f4c@linaro.org>
Date: Wed, 21 Feb 2024 20:55:46 +0000
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com, dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com, shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-dt@vger.kernel.org, linux-arm@lists.infradead.org
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Message-ID: <1048c3-65d66380-b-49a25c80@188726434>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/4] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_media=3A?= Document bindings for HDMI RX Controller
User-Agent: SOGoMail 5.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_125553_338553_8B61FAA8 
X-CRM114-Status: GOOD (  21.69  )
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

On Friday, February 16, 2024 15:31 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 16/02/2024 10:49, Shreeya Patel wrote:
> > Document bindings for the Synopsys DesignWare HDMI RX Controller.
> > 
> > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> 
> A nit, subject: drop second/last, redundant "bindings for". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> > ---
> >  .../bindings/media/snps,dw-hdmi-rx.yaml       | 128 ++++++++++++++++++
> >  1 file changed, 128 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> > new file mode 100644
> > index 000000000000..a70d96b548ee
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> > @@ -0,0 +1,128 @@
> > +# SPDX-License-Identifier: (GPL-3.0 OR BSD-2-Clause)
> 
> Use license checkpatch tells you.
> 
> > +# Device Tree bindings for Synopsys DesignWare HDMI RX Controller
> > +
> > +---
> > +$id: http://devicetree.org/schemas/media/snps,dw-hdmi-rx.yaml#
> 
> Why this is a media, not display? Does RX means input? Lack of hardware
> description does not help?
> 

Yes, RX means input and this binding doc is for the HDMI INPUT controller.
I'll add some description in v2

> 
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Synopsys DesignWare HDMI RX Controller
> > +
> > +maintainers:
> > +  - Shreeya Patel <shreeya.patel@collabora.com>
> > +
> 
> description:
> 
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: rockchip,rk3588-hdmirx-ctrler
> > +      - const: snps,dw-hdmi-rx
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 3
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: cec
> > +      - const: hdmi
> > +      - const: dma
> > +
> > +  clocks:
> > +    maxItems: 7
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: audio
> > +      - const: cr_para
> > +      - const: pclk
> > +      - const: ref
> > +      - const: hclk_s_hdmirx
> > +      - const: hclk_vo1
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 4
> > +
> > +  reset-names:
> > +    items:
> > +      - const: rst_a
> > +      - const: rst_p
> > +      - const: rst_ref
> > +      - const: rst_biu
> 
> Drop rest_ prefix
> 
> > +
> > +  pinctrl-names:
> > +    const: default
> 
> Drop
> 
> > +
> > +  memory-region:
> > +    maxItems: 1
> > +
> > +  hdmirx-5v-detection-gpios:
> > +    description: GPIO specifier for 5V detection.
> 
> Detection of what? Isn't this HPD?
> 
> > +    maxItems: 1
> > +
> > +  rockchip,grf:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      The phandle of the syscon node for the GRF register.
> 
> Instead describe what for. Basically 80% of your description is
> redundant and only "GRF register" brings some information.
> 
> 
> > +
> > +  rockchip,vo1_grf:
> 
> No underscores.
> 
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      The phandle of the syscon node for the VO1 GRF register.
> 
> Same problem.
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-names
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - resets
> > +  - pinctrl-0
> > +  - pinctrl-names
> 
> Why? Drop.
> 
> > +  - hdmirx-5v-detection-gpios
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/power/rk3588-power.h>
> > +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> > +    hdmirx_ctrler: hdmirx-controller@fdee0000 {
> 
> What is hdmirx-controller? Isn't this just hdmi@?
> 

Writing just hdmi would imply hdmi output I think so that name
will not be appropriate here.

> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 

This documentation doesn't have any generic name for HDMI INPUT
but maybe we can use the name hdmi-receiver like some other existing
binding has it here :-
Documentation/devicetree/bindings/media/i2c/tda1997x.txt

Thanks,
Shreeya Patel
> 
> > +      compatible = "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
> > +      reg = <0x0 0xfdee0000 0x0 0x6000>;
> > +      interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
> > +                   <GIC_SPI 436 IRQ_TYPE_LEVEL_HIGH 0>,
> > +                   <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>;
> 
> 
> 
> Best regards,
> Krzysztof
> 
> _______________________________________________
> Kernel mailing list -- kernel@mailman.collabora.com
> To unsubscribe send an email to kernel-leave@mailman.collabora.com
> This list is managed by https://mailman.collabora.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
