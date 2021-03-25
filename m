Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B428C433C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 14:14:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02FDD619E5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 14:14:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 02FDD619E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=41y5DZC+0bKkJv0t3oOXkJITqGvPo6kx45DVOOfsDNg=; b=qpR5owlaAxC75HEblXe1CpkdB
	3/J9vx7StC0mJa9JU1sfqnn2782sdPtqlFkMj7X6zrS3kxP54XbKw9Phqn2F1oPbQyb81Lv3nXx7b
	FSnNR8rYi50wJMJztTEChNkiWDDhF3a/DAMHuPGt7WNTFQzP3UhmfWOes9KXq/9EPVKSWvGsnRPho
	4J/culYLWAOgRChN5ocGKNDgpIXIkSzUHt5pQKYpWeUuMLgorBNIIXwalGS2SUungpf+qb4Ir/yML
	Um0v17CkU/ZVpKfh1s4OOFcS3wWbNVDIwIouhnZEK/5L+hzlrLSoagfVPI7A42w5y8mYcl0DfAN37
	n8AuohmtA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQkn-001ajy-5d; Thu, 25 Mar 2021 14:14:29 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQkf-001aie-IF
 for linux-rockchip@lists.infradead.org; Thu, 25 Mar 2021 14:14:23 +0000
Received: by mail-ua1-x930.google.com with SMTP id 97so548670uav.7
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Mar 2021 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0SSljh8VgyOCvuZyrp0irHi3aJFMKD0jnieo/jO7CEI=;
 b=Tqd7++4+FcQgPrOd6IdwoJABBd4WVgiLVbVQGDorDUfzwmBXuD1Ys2luNVgih5rPXd
 UTVb13yXK5P8IKpk1q4dtqq97ERfq+pBVRWyR0nWCPORggX0N3MPJZPGt66fEeU7EA6G
 +SaURMLj8qbFcK5KAibAXit9+bUtnS4GijIxqKVls4t+ozFH5yYT0s29VtTBkE0oZqPL
 ouRhG9uQOpVbn4fk5+3eYQ08fJnIN0Gswc3XeVgxuC6Cpf3bmKz/h+gRBSnGH3YizS9m
 G2xoIxRfvwC85jBmnoF96ikNKn3Zewi4SAIuSggMjuJGscvtip557E1s/bd1Krb6wDEq
 KtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0SSljh8VgyOCvuZyrp0irHi3aJFMKD0jnieo/jO7CEI=;
 b=IJ0lYb283P19afTQB77UjAo8HCbkWQ0bGvcSWTTF6ejhj8FbanftYg2zFRWYUipfik
 2JStPbKp2BDE99nJ7B1BTchga5vYsln7GVbs/JvoZHYxONx6S27zLicMncW6tAscESJt
 eTmz4STA4gfhJ206d7RrnQCEmM+ukAnGApij0eNX+WtGBv2uGRxfq31VvQTqYzzU1cGx
 0fzPT4+R0kd8ACuel/n3gOXw+8NwAg/lpcp6mJV1ogCN6X8lxnVywYsjdNTV3vwYLjto
 GyFvCbG6Wb7IrHkX+3nWUFnhfat6/+ybBcAYmMfVIvx/cjoDkAfdUcegCnicRjg9xMfI
 KD6A==
X-Gm-Message-State: AOAM5324cSyviHg78I/FU+6RyRViUw4UseMYm9+smtfiTo7QbCHXiWT7
 R715NjMsra4ui+XnjJkTgDqrGOZWXUMCPiq+No8=
X-Google-Smtp-Source: ABdhPJykAGvfrWh/jq0MsPDnI0kz6Tj5UWjX8pgwdXEkcGFOTuEwxthi3FtQxf+dmirWaPsTUHw8+scnIfB4K4Mz6uQ=
X-Received: by 2002:ab0:32d0:: with SMTP id f16mr4947078uao.64.1616681657893; 
 Thu, 25 Mar 2021 07:14:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <20210311154055.3496076-7-emil.l.velikov@gmail.com>
 <20210324151715.GA3070006@robh.at.kernel.org>
In-Reply-To: <20210324151715.GA3070006@robh.at.kernel.org>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 25 Mar 2021 14:14:06 +0000
Message-ID: <CACvgo51EpUqRBDQ0tO8aoUM3eo=y9R5VFOazWD05hOaiGwgZPg@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC
 bindings
To: Rob Herring <robh@kernel.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Frank Rowand <frowand.list@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_141421_813264_31E7C28C 
X-CRM114-Status: GOOD (  20.32  )
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

On Wed, 24 Mar 2021 at 15:17, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Mar 11, 2021 at 03:40:51PM +0000, Emil Velikov wrote:
> > From: Emil Velikov <emil.velikov@collabora.com>
> >
> > Add devicetree binding documentation for the Hantro G1/G2 VDEC on
> > the Microchip SAMAS5D4 SoC.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: devicetree@vger.kernel.org>
> > Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> > ---
> > v2
> >  - Newly introduced
> >  - s/Atmel/Microchip/ (Nicolas)
> >  - Drop leading 0 in node name/address
> > ---
> >  .../media/microchip,sama5d4-vdec.yaml         | 59 +++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> > new file mode 100644
> > index 000000000000..9cb2c0295d54
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Hantro G1 VPU codec implemented on Microchip SAMA5D4 SoCs
> > +
> > +maintainers:
> > +  - Emil Velikov <emil.velikov@collabora.com>
> > +
> > +description:
> > +  Hantro G1 video decode accelerator present on Microchip SAMA5D4 SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    const: microchip,sama5d4-vdec
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: vdec
>
> Why do you need a name? *-names are used to distinguish multiple entries
> and don't add anything if only a single entry.
>
On one hand the names are used to describe the hardware - the SAMA
board uses designated clock and interrupt lines - both called "vdec".
Additionally the names are ultimately required by the underlying API -
platform_get_irq_byname and  devm_clk_bulk_get respectively.
How can we get the respective entries without the name?

Skimming through the existing dts file -
arch/arm/boot/dts/sama5d4.dtsi and other dts files - there are lots of
examples where the device tree binding contains the name for a single
clock/interrupt.

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
