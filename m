Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA1D5C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 19:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzxOUTMMyjY1dmydNDT0IpI3xSlS7c/b4XckxXCRFXE=; b=HPVYobaUjfO9ST
	b1yo2Lro7luG89MMBZX1MzCMzDUqIUQaEr/ltClCpBVBkio41M5JP0YraUQNK34BC/mujWWPdaXKL
	i0Cz8GKbq4i9StxtPbxMhWQbrG4l5OKS47TojB81/7uXopIMDhg0l+a5Ji8qPsWo1B81N+LkhcVDH
	wChovMulZ6sZv6iMcYt4SEg56Nft0heC/C7dOEP5A/YM/LOqJzu6ST0aQmwPYdhx+P6HgTo017Mav
	ji/XRqqwZzVm0vRsL55RMMc9sMrUFjr1vTeHimdVs/PVIV1lN6HQeueLqJ1ktC6CY3LNmKnBKtqkb
	rzUwhudGsvuwl/smPYdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNJoi-00299e-HW; Thu, 24 Feb 2022 19:30:20 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNJof-002978-5M
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 19:30:19 +0000
Received: by mail-oi1-f175.google.com with SMTP id q5so4434634oij.6
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 11:30:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ekpcNnh0CQkIhdkZOZ4oJo4aa5FJvQxiGzn0YCkw9Yo=;
 b=n69Eo9QOhQ2S3xivWbKWJKm7P8RZSM0jgARG83dNUFXWe3kucViv5lXUDE7T1ISU09
 poSHTNen4BK8nRm6KwlNxQNQlr6JCIlP7lqbYsZjhoofWoRUU1M87VZKoQT0Ezdjciu9
 brIFKAy2GFmcFkZCt+/46h3Cm+ihJXeNkmGTiOP9ap6w7rerLQnIJRTr/VciGYbuKB8i
 eVrrPhAl8JO8+vvz1kcwByzgygCFMJq+edHL76zwQxXy9UOON0KwNWOlzgWcVYHQ46h2
 pnxcHXgXuTMvgnCV2ivZhG77VN7ODcODVuekeu7/Pti24K5FlVkFe+gFaG+R2iOpHdM/
 6aIA==
X-Gm-Message-State: AOAM532+k2Ncj7X2NTICS+ftecDYUM9fuQUpWC2ebGtePNoO+gjvyEwI
 wrA6RwZ2TIVM9xEKJHhKTQ==
X-Google-Smtp-Source: ABdhPJw2tKmfA1xpJykLBPLMI+cydZGFmsj/OEnHxYqqwbFQ40uAcC+43LxErKAda94gyqNLi10HzA==
X-Received: by 2002:a05:6870:5401:b0:ce:c0c9:5fa with SMTP id
 d1-20020a056870540100b000cec0c905famr6971254oan.76.1645731015422; 
 Thu, 24 Feb 2022 11:30:15 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 q14-20020a4a330e000000b002e89ed90006sm84172ooq.44.2022.02.24.11.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 11:30:14 -0800 (PST)
Received: (nullmailer pid 3448733 invoked by uid 1000);
 Thu, 24 Feb 2022 19:30:13 -0000
Date: Thu, 24 Feb 2022 13:30:13 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
 zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_113017_266943_E1E0FBF4 
X-CRM114-Status: GOOD (  30.48  )
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

Fair enough. However, if the consumer could be in an overlay, then I 
think we want it to be required and not make the overlay add the 
property. Properties just appearing within nodes at runtime is likely 
not well supported in OSs.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
