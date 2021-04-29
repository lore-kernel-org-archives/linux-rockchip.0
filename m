Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA309C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 20:28:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4571A61407
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 20:28:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4571A61407
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rYiO+lz0FrVvICXcnTyvZN36Cw8YY7CjCmPOBBrAP2M=; b=fH+MFagkzGC4Z/URuGMNa7hRJ
	HrugmBKFSZbJGfEiwP82RLlcmENy2oivIEyAdlZ1ClBft62h8iqKKvDsjKOu3j7g0qDAkq9j5FeZ4
	2aoxsUxXtlVk98rXtALZz+KmpEhSdUpZb37kAe0s3mxaqkNPGl9A9JtCb5z5TIQjvenj1icL1Pklf
	HuUp7q2NCsaaUNKokOU+FvPaE9xgTzWHP3BtFda+xLWUYslfi6EiOxd62tNJ+w6yfPUL4oQiz7j5m
	LlD1/MXTDjHxbI0WDGjkhhNuNXHICA9eS5SJaiVFk4Z7U3U5s9XaFomeDdRzhrjhRwA4kThgc1Uo2
	Xuw/WOQpg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcDHH-006PUF-0S; Thu, 29 Apr 2021 20:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcDHC-006PSl-Nh
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 20:28:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 65B9361420
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 20:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619728116;
 bh=0BnoRIh0x+jKrYCuNgZfUDseDnW+A57IwCVmCuujmSU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LfQ1WNOTUvIsaLP7uwKGMXeQDdupD5sDiiuZ88DP1HAfLkUMuqMVYSKpnsJ3+7a8i
 F2kB4NUp5FxTxbZ4v3mC4XybiEeO7A6huS0ssS/X8/6t1Q3+Ywm8RkHjxoNQLc3/gB
 oyq5f0KXzjUCyI1PozXgd+MxT2eMVj6b/NJgt4HTcf9MpbL/KJiMcOsddzO8lk3bKy
 RgvOtedDK7HLq/hbyEC/tlsTzLhngv5BDHyevDq4dX8oo2K8kJnEdrn+IWlS9p1UVg
 BjtJD+hNtUK0KAsBPx2/1E0ggEbOQdt4/lNDzxYf+p75GI3wY1dkcvc01RAS+0PuFe
 aApK+lBzJqJbg==
Received: by mail-ed1-f43.google.com with SMTP id n25so8022770edr.5
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 13:28:36 -0700 (PDT)
X-Gm-Message-State: AOAM533+PmeBX7PxXUWsTlpZqhhguUhBJV3LUghsQSqUKX/bEG2hndBe
 y8tvB0OlFcg7gRNS218RtKHj6o0Yf9tvTFt40A==
X-Google-Smtp-Source: ABdhPJxMOUN64eXk3XGGtS2y8xfmwijWD3hopeTGvoXOCZbF0i4U0b0yB/FzcEwhUmrbaj/ZKMa2hoKcH1qqqwtX2Tw=
X-Received: by 2002:a05:6402:212:: with SMTP id
 t18mr1709820edv.165.1619728114787; 
 Thu, 29 Apr 2021 13:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210424191946.69978-1-ezequiel@collabora.com>
 <20210424191946.69978-2-ezequiel@collabora.com>
 <20210429162542.GA1372880@robh.at.kernel.org>
 <7ecf337931cbd16432311d24397ae4506fc7fd1f.camel@collabora.com>
In-Reply-To: <7ecf337931cbd16432311d24397ae4506fc7fd1f.camel@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 29 Apr 2021 15:28:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLDPXmZ9hxJjPK1n6qhPEoRB80=4PBsRD0HE3LLktbtWQ@mail.gmail.com>
Message-ID: <CAL_JsqLDPXmZ9hxJjPK1n6qhPEoRB80=4PBsRD0HE3LLktbtWQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,
 rk-timer.txt to YAML
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_212847_173427_2E77B8B8 
X-CRM114-Status: GOOD (  28.69  )
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

On Thu, Apr 29, 2021 at 12:03 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Thu, 2021-04-29 at 11:25 -0500, Rob Herring wrote:
> > On Sat, Apr 24, 2021 at 04:19:46PM -0300, Ezequiel Garcia wrote:
> > > Convert Rockchip Timer dt-bindings to YAML.
> > >
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > >  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
> > >  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
> > >  2 files changed, 67 insertions(+), 27 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > >  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > > deleted file mode 100644
> > > index d65fdce7c7f0..000000000000
> > > --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > > +++ /dev/null
> > > @@ -1,27 +0,0 @@
> > > -Rockchip rk timer
> > > -
> > > -Required properties:
> > > -- compatible: should be:
> > > -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> > > -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> > > -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> > > -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> > > -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> > > -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> > > -  "rockchip,rk3288-timer": for Rockchip RK3288
> > > -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> > > -  "rockchip,rk3399-timer": for Rockchip RK3399
> > > -- reg: base address of the timer register starting with TIMERS CONTROL register
> > > -- interrupts: should contain the interrupts for Timer0
> > > -- clocks : must contain an entry for each entry in clock-names
> > > -- clock-names : must include the following entries:
> > > -  "timer", "pclk"
> > > -
> > > -Example:
> > > -       timer: timer@ff810000 {
> > > -               compatible = "rockchip,rk3288-timer";
> > > -               reg = <0xff810000 0x20>;
> > > -               interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > > -               clocks = <&xin24m>, <&cru PCLK_TIMER>;
> > > -               clock-names = "timer", "pclk";
> > > -       };
> > > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > > new file mode 100644
> > > index 000000000000..f1bc3ac7abc8
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Timer Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> >
> > This should be someone that knows the h/w and cares about Rockchip.
> >
>
> Daniel wrote the driver, so I figured he'd care :)

Ah, then that's fine I guess. Given he is also the subsystem
maintainer I was confused.

> If not, perhaps Heiko (if he agrees)?
>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: rockchip,rk3288-timer
> > > +      - const: rockchip,rk3399-timer
> > > +      - items:
> > > +          - enum:
> > > +            - rockchip,rv1108-timer
> > > +            - rockchip,rk3036-timer
> > > +            - rockchip,rk3066-timer
> > > +            - rockchip,rk3188-timer
> > > +            - rockchip,rk3228-timer
> > > +            - rockchip,rk3229-timer
> > > +            - rockchip,rk3288-timer
> > > +            - rockchip,rk3368-timer
> > > +            - rockchip,px30-timer
> > > +          - const: rockchip,rk3288-timer
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    minItems: 2
> > > +    maxItems: 2
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      enum:
> > > +        - timer
> > > +        - pclk
> >
> > We can't define the order here? We should fix dts files if they are
> > inconsistent.
> >
>
> The driver requests the clocks by name, and unfortunately DTS
> rely on that.

That's good, then the OS doesn't care if you change it. Of course, I
didn't have to look to tell that. If the order varied, the OS would
have to use the names.

> We can change all the DTSI, but wouldn't that
> be too much trouble for something that is currently working fine?

It's not *all*. At least half are correct. Pick the order that's the majority.

> Why is the order important?

Because that's the DT convention. Why is random order important?

I don't really care so much on an individual binding, but overall if
defining the order doesn't cost anything then we should. The more
order is not defined, the more people are going to copy those
examples. Yes, there's a cost on fixing dts files, but if we're
writing schema to pass on existing dts files, what's the point of
schema?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
