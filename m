Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AFEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 19:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5Wj3taAu50IAnz3SI7zztEdMNEsUFA8U1W0P6EfXTo=; b=W/XW1zL9Xq1fBP
	Aly170ncmaJ/1OM+zb35yC30ky6EePrifFXpaQ1SSM/AVtl8mbCoJ2zCHFyd5eSuB+x0V6IkDCHFb
	mEzkp7tBtUX5vl4woHS4pYMWgcF9aVNDCA0KmQuCny1/YnfTVJ3HYYqPOvyqqesLVaJ2J9wGXUpHQ
	i/YWcl4FJq0D6upLj2BuQH9iJCc+zWX3vaD/ojrMsS02FK272g1dzylpXojElPdPeL6d+nMKwIX1N
	WaP0D/IqewTKVn3jSlMKjH5RciKXy35wSmqjxqs1GncFyW+p/MX3P396WDU9FlDTA6Z9VfvTHn/76
	6yOoSNMuLjOoXMTk4cgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMak3-00BKMS-1X; Tue, 22 Feb 2022 19:22:31 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMajz-00BKKl-04
 for linux-rockchip@lists.infradead.org; Tue, 22 Feb 2022 19:22:29 +0000
Received: by mail-oi1-x22d.google.com with SMTP id j2so15683802oie.7
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 11:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1FEb2vFIot1a/ue+S1CbtNu4PdAP/tmkTp+OxHWSu2U=;
 b=j39nnOx2RiOA0hfc9CBH7seR0aOWzY3omNhUPQ/276xKKpMUPa/uOpJp+LFtAP7cTc
 I+191DUzCSlEy+EaJH+yNVe8Fsim1u1z0vv7I5GNcF9g2tLrEgJaAUJvl53QVX3+0F0S
 qZkvn/eEoHk14eonc0K3K4AJLxWhbMav92lImxAsoE7sNcv4xNrSpulGS9qUfEnJQLhH
 aoxqd2VDpV6u9FtYUDuE7NfyC+pxaEUqxWB3EroHgpdJj/usodEAf5Erqi3MPEa4ImDA
 Im0nuYtr1wsTdyWYhEnvdd2J4+AP6FBtlfA1qyhRMfpjWi6u/nkriYEsAci9SLo9ltJ2
 9HpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1FEb2vFIot1a/ue+S1CbtNu4PdAP/tmkTp+OxHWSu2U=;
 b=flDKfi+CG6rnn92PgcIkNLvRLVB7bIPZJAdXpPeIEAKaJNPDvyXykSLgP6FLptnq/W
 Tld6mUQi4bQrXM1PeIqztqBfIC8WUYBIZSBbwKVpCNG9sUC8zloCBK5+jXTGZ10tY7l9
 SHGlgAdGdCNnxlU9hL7TPmmXY0evkxZP3vg9caXE3zVmEfRjLiJ1x3HKdBBZ0pKvZVe6
 ePunyCRfku0mTe1SSSzoZpmVKRINPLFns/EFjWd+Nylx99pxKvyygrV3zRR63WEMQey8
 s9K5hyILQjDzO8MA6LYy+d3nhhQNf+9thPoGoq5XutGXIKVbuBfb8XYkY9BB61EI304g
 Fs+Q==
X-Gm-Message-State: AOAM5332FsTcFgAM+Lwscyrc2WsfIZlj3sMK3EHFATn6X58WDOEQ1Tom
 ++i//iJUC3t9nS9l3H3HSc4=
X-Google-Smtp-Source: ABdhPJxiD0wNuWNEqUKbS5+bAJtfpBAXFIGiwKUm6VQq7JG8INz4GlhpBPjs0LFYauQU+yu0tjwurA==
X-Received: by 2002:a05:6808:a88:b0:2d4:8ece:2453 with SMTP id
 q8-20020a0568080a8800b002d48ece2453mr2697561oij.217.1645557744924; 
 Tue, 22 Feb 2022 11:22:24 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id i14sm3585376oig.24.2022.02.22.11.22.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 11:22:24 -0800 (PST)
Date: Tue, 22 Feb 2022 13:22:23 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: devicetree@vger.kernel.org, lee.jones@linaro.org, robh+dt@kernel.org,
 heiko@sntech.de, zyw@rock-chips.com, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <20220222192223.GA8011@wintermute.localdomain>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_112227_085723_54461FCA 
X-CRM114-Status: GOOD (  38.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Feb 16, 2022 at 12:39:09PM +0000, Robin Murphy wrote:
> On 2022-02-15 21:15, Chris Morgan wrote:
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > new file mode 100644
> > index 000000000000..1b928b94fbfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > @@ -0,0 +1,88 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RK805 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes multiple switchable regulators.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk805
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    maxItems: 2
> 
> I think this should be 1, since RK805 only has a single CLK32K output -
> ditto for RK817.

I've confirmed that some boards use this behavior because of how the
driver is written. Basically they define 2 clocks to ensure the 2nd
clock gets renamed something else, as the first clock doesn't exist
(but the driver won't let them rename a clock without defining the
first clock).

Should I push this patch series forward knowing that issue exists and
then work to update the clock driver, or is that a showstopper? I'm
honestly just trying to get these yaml updates done because I want to
submit a battery driver and I was told they wanted the rk808.txt
rewritten.

I can add examples to each of the other yaml files as well from the
devicetrees as they exist today (I'll just randomly pick one for each
device for which we don't already have an example).

So for now it looks like 2 issues remain though:
1) there are 4 boards that specify a supply regulator that doesn't
exist (rk809 doesn't have vcc13 and vcc14).
2) there are 3 PMICs that use 2 clocks to overcome a driver issue,
even though they only support 1 clock (rk805, rk809, and rk817 only
have one clock output).

> 
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > new file mode 100644
> > index 000000000000..f5908fa01a61
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > @@ -0,0 +1,257 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/rockchip,rk808.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RK808 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and a power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk808
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    description:
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> 
> minItems should be consistent across RK808/818/819 - when two clocks exist,
> either it's legitimate to rename only the first one, or it isn't. There
> shouldn't be an arbitrary difference just because of what existing DTs
> happen to use.
> 
> > +    maxItems: 2
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG3 and LDO_REG7.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for SWITCH_REG1.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for LDO_REG4 and LDO_REG5.
> > +
> > +  vcc10-supply:
> > +    description:
> > +      The input supply for LDO_REG6.
> > +
> > +  vcc11-supply:
> > +    description:
> > +      The input supply for LDO_REG8.
> > +
> > +  vcc12-supply:
> > +    description:
> > +      The input supply for SWITCH_REG2.
> > +
> > +  vddio-supply:
> > +    description:
> > +      The input supply for digital IO.
> > +
> > +  dvs-gpios:
> > +    description: |
> > +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> > +      2 host gpio's used for dvs. The format of the gpio specifier
> > +      depends in the gpio controller. If DVS GPIOs aren't present,
> > +      voltage changes will happen very quickly with no slow ramp time.
> > +    maxItems: 2
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> 
> Is this actually required (ditto elsewhere)? Technically it's only necessary
> if there are any clock consumers targeting this node, so arguably it should
> be the clock binding's responsibility to validate that.
> 
> It wouldn't make much sense for a dedicated clock controller to omit
> #clock-cells such that it couldn't have any consumers, but given that these
> things are primarily PMICs I think it's reasonable to allow a board not to
> care about the clocks at all if it doesn't use them. I know that the
> original binding claimed it was required, but if we're already relaxing that
> for RK805 here then we may as well relax it entirely.
> 
> Cheers,
> Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
