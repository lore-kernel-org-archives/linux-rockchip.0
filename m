Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E4CEC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:43:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9D5861006
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:43:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9D5861006
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LtvpbdiGcDW289C3skkbsZZ6tTK0m/Zfdt5qpWTqOmM=; b=FbgeOTTkwHpxxlJfiRFDpdr7n
	7/6mL6aE706x0UHNr7o3gL4Fvn3htFpH5hAywu7cpyMc8L3usCtyrNcPAjhfB0MuGrLZzCfzWW4gH
	GC0t/5BNOG2exOdRbMfvDBTbsQEKsUy9LE641ef1istmtFnlCrOhapX075GR23IVnGr4BYuy1a12b
	M+Bq+QWX+bcaMs+6m5Ci4XyRPyPvEM65bqcltKTTBirBciuFhkmKPrbRSqz3+yqDRMKKN/1/GGqVX
	9O7y42W4jWhR1su84nHPmMOsJS4y+UNsP+z81t2auxdGRDiMMqzHCOzJZW3WFklTO6jd+AzU2gZIE
	RsV5lOnkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRes0-007D7v-VS; Wed, 31 Mar 2021 17:43:09 +0000
Received: from mail-ua1-x934.google.com ([2607:f8b0:4864:20::934])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRerw-007D7O-J5
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:43:06 +0000
Received: by mail-ua1-x934.google.com with SMTP id b7so6330989uam.10
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6QUinmrvLjexZh4h6qxhdrf+90LRRGclLO2gy+3m3h0=;
 b=bDcIcHosuB1gdY9wWuOho+xe1EAqCn/mgVXT0aZV46gFLzCOHAQts+kRA+maDvEzKZ
 Xdcws4+Y71rHgxYyRITbYHFu470S75k5aUzTzr9q7GoMLH9rMTP/BFMXJcBHj4+LuuBF
 NiPR16CudOKuhuFNzxzslz0SFU6pIyYXXt1+TRKCYJOer/8nZIikcWUiGuprajWuUvbj
 RXhF4FHNCyG9fZYlOlT9i0+rIhzOpluCg0J12gphF75/Wsx+XbLb5Nb5QH5ZZGQRZZuX
 /Tjyhm+eKWJr6/raA8h92pbHaFmileDu4ghji83D9rY8Hx0xFWMZcvwNjnWUStmEBPjs
 ei6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6QUinmrvLjexZh4h6qxhdrf+90LRRGclLO2gy+3m3h0=;
 b=e+WpgLghAXByauW52w1w5BNgutXfN7C1tVzbuT0qyFPZiAOcIAgUKiSY9ba7CVR3Gd
 KSrL8H27sBwNjOKgmHpd7WNoHdpQ9i/qNJ1PpwwUz7SFexdJf6Wdxe8PVHZEWkeLhMGr
 Jkv4Th8YXYX0iWykXXP0fg4TeObvxHSXYloscXzCyjqgqYAuHBt9Sc33vV9gDTdohAN4
 nUuGXDmGvYQzKT1MgFyD7iyLo6/YSk5jip9Ifxp1L7xcLmMTtD+2AQssv8YmidCsOmf5
 yfLcFsDeyS4+o1sr1dv62v2nZZLGZgmyMw/Cm7ruqHtcf1qNmw07Qim0hyU5RbhVx3Hi
 H93Q==
X-Gm-Message-State: AOAM533EJMzgPYHkQhf779p9gbpt2maMzNPt3pr2yphTMLeKcPa4YiSi
 ZNLrVx39eYIg8/m8Hs3J3sL/EPhUpVltQGhhWwU=
X-Google-Smtp-Source: ABdhPJy3yexeTGobTP9R8fdNLFXCSzmoWAuERwfQlI+gE5cqr3/I+uy//5OSLMXkzsMGB3WDh2SXsV+7KZ2Ml4hXzkA=
X-Received: by 2002:ab0:12a:: with SMTP id 39mr2339668uak.19.1617212580827;
 Wed, 31 Mar 2021 10:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <20210311154055.3496076-7-emil.l.velikov@gmail.com>
 <20210324151715.GA3070006@robh.at.kernel.org>
 <CACvgo51EpUqRBDQ0tO8aoUM3eo=y9R5VFOazWD05hOaiGwgZPg@mail.gmail.com>
 <a47cea7f31abdd25e6c9d4262be07ce2d852881e.camel@collabora.com>
In-Reply-To: <a47cea7f31abdd25e6c9d4262be07ce2d852881e.camel@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 31 Mar 2021 18:42:49 +0100
Message-ID: <CACvgo53GKQDZeiCjWKnt_hEp8Ctnueau_BKTqw7WXuPz-HUaPw@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC
 bindings
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Frank Rowand <frowand.list@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_184304_728591_FC14A13C 
X-CRM114-Status: GOOD (  30.83  )
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

On Fri, 26 Mar 2021 at 14:29, Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Emil,
>
> On Thu, 2021-03-25 at 14:14 +0000, Emil Velikov wrote:
> > On Wed, 24 Mar 2021 at 15:17, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Mar 11, 2021 at 03:40:51PM +0000, Emil Velikov wrote:
> > > > From: Emil Velikov <emil.velikov@collabora.com>
> > > >
> > > > Add devicetree binding documentation for the Hantro G1/G2 VDEC on
> > > > the Microchip SAMAS5D4 SoC.
> > > >
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Frank Rowand <frowand.list@gmail.com>
> > > > Cc: devicetree@vger.kernel.org>
> > > > Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> > > > ---
> > > > v2
> > > >  - Newly introduced
> > > >  - s/Atmel/Microchip/ (Nicolas)
> > > >  - Drop leading 0 in node name/address
> > > > ---
> > > >  .../media/microchip,sama5d4-vdec.yaml         | 59 +++++++++++++++++++
> > > >  1 file changed, 59 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-
> > > > vdec.yaml
> > > > new file mode 100644
> > > > index 000000000000..9cb2c0295d54
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> > > > @@ -0,0 +1,59 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: "http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#"
> > > > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > > > +
> > > > +title: Hantro G1 VPU codec implemented on Microchip SAMA5D4 SoCs
> > > > +
> > > > +maintainers:
> > > > +  - Emil Velikov <emil.velikov@collabora.com>
> > > > +
> > > > +description:
> > > > +  Hantro G1 video decode accelerator present on Microchip SAMA5D4 SoCs.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: microchip,sama5d4-vdec
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupt-names:
> > > > +    items:
> > > > +      - const: vdec
> > >
> > > Why do you need a name? *-names are used to distinguish multiple entries
> > > and don't add anything if only a single entry.
> > >
> > On one hand the names are used to describe the hardware - the SAMA
> > board uses designated clock and interrupt lines - both called "vdec".
> > Additionally the names are ultimately required by the underlying API -
> > platform_get_irq_byname and  devm_clk_bulk_get respectively.
> > How can we get the respective entries without the name?
> >
>
> There are APIs to get the resource by index as opposed to by name.
> E.g. platform_get_irq.
>
> However, you are confusing here internal kernel implementation
> with devicetree bindings. The latter is just a representation
> of the hardware.
>
My train of thought was that if we're missing API to fetch the entries
via non-name means, then there's a reasonable precedent to expose the
name. Clearly I missed the API, so my argument is just off.

> > Skimming through the existing dts file -
> > arch/arm/boot/dts/sama5d4.dtsi and other dts files - there are lots of
> > examples where the device tree binding contains the name for a single
> > clock/interrupt.
> >
>
>
> Note that dtsi and dts are the device-tree files, not the bindings.
> And even if you find examples, the fact that there exist examples
> doesn't mean it's the right thing to do.
>
Fully agreed. Thanks for the correction and hints.

The v3, just submitted, lacks the names all together.

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
