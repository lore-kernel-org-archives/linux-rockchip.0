Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D90DDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 21:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU2l4FHq+rPGIWMoH5FYmc4daCB5UPSye3TJpU8or7I=; b=4H/X52vF+B1egM
	a9RoKtfwZDmgDOr9eaQklE+SB4CV5s0jXwuVJEye80rg5/1ECdRaV36Uv72mEDWnj9muufZKwngB1
	TijUATKv0MU41Zix6Njlu0/3VDKA/j+hTjiX/FuKeS4gbP1JFkgzuAvFLW+a9cz0vFuEA/vGNeJg2
	M8LPZepBn/7TcXNhBDWGOCcmBghHBOLWYvE5uGiM4c6sWQtMvhxwq4iAGUt+OMqABYZnmzKI5Req9
	5bx4Zmss205z/CnlUSyxjFMSBwDHpYjVFkWtasQC5wNurJKuv9SlRkxynCwxg0tmtzNua/PdG7UOa
	CEnO5kPzUa2V8+nytplQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQFPC-00C7F6-KP; Fri, 04 Mar 2022 21:24:06 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQFP9-00C7D8-P6
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 21:24:05 +0000
Received: by mail-pl1-x62e.google.com with SMTP id ay5so8870725plb.1
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Mar 2022 13:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0/gI0rQqdFAbRjNwHFPVJ4i6AznAGpkDeOuSwoRZAto=;
 b=dW6sniIDfe4ZwFk7pH6asyZbMfHUDkzWKEaqD8k09+XRZxqGVgvxvwowBaBBa8GvSB
 LnIHuXeBP/MKBb2IurRBYrLkjNiDDW9kZzPMXsmeLPCaYAg2Za7l9w1TJzZSI2ILROCa
 Bq/xEX+B3iF9Vgn8acNFkeBDRtPua299o+IvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0/gI0rQqdFAbRjNwHFPVJ4i6AznAGpkDeOuSwoRZAto=;
 b=Fw69v1e7cwgma5Iqog+JBfioB7tr89JJ1nPDvGYpuu4dp/1zPn2gJN0uI7njseW4fh
 xGiJ1omPelED7FXlrGJ/cr0cWFghVWk2afN6jCARteMHlzvhfulVhXYEAYa3+oIE2y9P
 3W+xAofNfxhh3MkjoDn8TOH3GsFk9K4ZRTKOaDg+7ZJvEec/J0QMQKyXI3Scr1npnjk8
 EJ6VhGvCF2gchjhE+4babC15FtoPXw8WPACNoMb9dT+y9w7jVPTZp35s48qgeQewrSh4
 +IGokMVcK/yJpI1RfkU9ufIuAd7MeMn0C6z6Bht1i0z5REFdu/AS5hRFDUc/LractVp8
 7Z2A==
X-Gm-Message-State: AOAM531aAevbRwCQywTwUgF3c78Q388bxWpPe06mLQLrUsT0gZu0gKHW
 ij2k+0cr5kgeAbj0Hfsrdfitqw==
X-Google-Smtp-Source: ABdhPJzeXYM5JVp1IZEistkWdlM9E10Rt6/gCbVwnsqXjdM071vp3edsel14904JddV43vI5XN1yYQ==
X-Received: by 2002:a17:902:b784:b0:151:a28a:9445 with SMTP id
 e4-20020a170902b78400b00151a28a9445mr512967pls.82.1646429042669; 
 Fri, 04 Mar 2022 13:24:02 -0800 (PST)
Received: from google.com ([2620:15c:202:201:2947:8460:2ca7:c348])
 by smtp.gmail.com with ESMTPSA id
 g10-20020a056a000b8a00b004de9129eb80sm7612495pfj.85.2022.03.04.13.24.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 13:24:02 -0800 (PST)
Date: Fri, 4 Mar 2022 13:23:59 -0800
From: Brian Norris <briannorris@chromium.org>
To: Rob Herring <robh@kernel.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Message-ID: <YiKDb6q5k4NHpyVn@google.com>
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
 <YgQhXb/0BM0OFy/6@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YgQhXb/0BM0OFy/6@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_132403_844711_66F45930 
X-CRM114-Status: GOOD (  27.94  )
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

On Wed, Feb 09, 2022 at 02:17:33PM -0600, Rob Herring wrote:
> On Thu, Jan 27, 2022 at 03:07:12PM -0800, Brian Norris wrote:
> > I want to add, deprecate, and bugfix some properties, as well as add the
> > first users. This is easier with a proper schema.
> > 
> > The transformation is mostly straightforward, plus a few notable tweaks:
> > 
> >  * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
> >    driver code and the example matched, but the description was
> >    different. I went with the implementation.

...

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> > @@ -0,0 +1,293 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# %YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/devfreq/rk3399_dmc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip rk3399 DMC (Dynamic Memory Controller) device
> > +
> > +maintainers:
> > +  - Brian Norris <briannorris@chromium.org>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3399-dmc
> > +
> > +  devfreq-events:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    minItems: 1
> 
> What's the max?
> 
> If this is just phandles (no arg cells), then you need:
> 
> items:
>   maxItems: 1
> 
> IOW, fully describe the number of entries and cells for each entry.

We only need 1, with no args. Will add |maxItems|.

> > +    description:
> > +      Node to get DDR loading. Refer to
> > +      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: dmc_clk
> > +
> > +  operating-points-v2: true
> > +
> > +  center-supply:
> > +    description:
> > +      DMC regulator supply.
> > +
> > +  rockchip,pmu:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Phandle to the syscon managing the "PMU general register files".
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The CPU interrupt number. It should be a DCF interrupt. When DDR DVFS
> > +      finishes, a DCF interrupt is triggered.
> > +
> > +  rockchip,ddr3_speed_bin:
> 
> Since you are changing this, s/_/-/

I'm only including this because the driver already supports the
rockchip,ddr3_speed_bin spelling. But I'm also deprecating it (because
it's not really needed) and removing it later in the series. I'd rather
not change the spelling again in the middle, when it doesn't really have
any net effect.

I can add some clarifying notes in the commit message, about impending
deprecations, so this makes a little more sense as a standalone commit.

Or if it's somehow better, I can just drop the to-be-deprecated
properties right now in the .yaml conversion? As it happens, I've seen
at least one (probably more) other YAML conversion that made breaking
changes at the same time...

> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      For values, reference include/dt-bindings/clock/rk3399-ddr.h. Selects the
> > +      DDR3 cl-trp-trcd type. It must be set according to "Speed Bin" in DDR3
> > +      datasheet; DO NOT use a smaller "Speed Bin" than specified for the DDR3
> > +      being used.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
