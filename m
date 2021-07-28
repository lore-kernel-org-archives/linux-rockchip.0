Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AB3C4320A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:20:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E77E60EB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:20:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E77E60EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+VaPvxI4JRfX5oXIrY5xJsZHQl/t5I1ov7EZcycxzA=; b=p201Uq8g4mDd56
	zGPiiUua3t0AiljFfNDbTihM+IoFSHWycGsS2jWCDjXP9Q8KCyP1tiXUiIkzI3MPIVtAB4qR4qhwy
	dkX6PCb0grETunFS7ZWlW6Feb7019s6AifX4HHwIeyMfbOaEQctIx55p43duhLiN5miYu7zL69vWY
	5Bid9F9Aeu/bgtncgrfzbtUXIaaZ+5dq+rYBGJl4A4hdzRx2kc7j+MdvsszvJP5TUPmcCEfPr3+S8
	DJ495ML9OGVKww895AgIflz48WYAB0yOhesa7VKSOsnmrsgZwgYcDaloiY9E5KUVh0M48K2orHM+z
	COaOWPVQnzr59UFPnUvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lMS-001GQQ-1b; Wed, 28 Jul 2021 15:20:44 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lL2-001FnD-3P; Wed, 28 Jul 2021 15:19:17 +0000
Received: by mail-yb1-xb31.google.com with SMTP id w17so4494206ybl.11;
 Wed, 28 Jul 2021 08:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/6eWkFQouDwZToZfzqmLvZAa+8eHzBjwiwsCPEZ3T78=;
 b=oN9p2Q2hKZtCKNVMAT+NVxX1xipwNCvL4SYZ9WviVLfZeJ7CryQ9ipjmT2TDx9uLPZ
 1Xm33ENbeoCwWOM5CaEnziOHXZhHlPkfjq/PyX8Om+HUQOvGJgPjJkuxuYaI2zipt3GJ
 /GMhGb8wYkc2GKJOTVcUSda/yAUyUdgMN9IPEp30RTtQlbNTOyOz4M2JbLyZt4w6jsOI
 QWSJ/y1bfrjCPBKVSTg/W6U4DdFz+UU2GrgGekos3fTJrDfYcjGOJTG7dn2r5rTE5+qS
 TvLTgqMgUZkOrT63KGVItxnAlPD/U6VHa+DhdHdUHcuUU87n0M5Qjkz8Vc/eYhM2PyVO
 MrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/6eWkFQouDwZToZfzqmLvZAa+8eHzBjwiwsCPEZ3T78=;
 b=cIGos6CbAJAUhy/bLiEWLyoW6GtjFez4aWnLdeg8yAp/Zwwhe5S+HcHPZ8gNPc7/yg
 og1880fUIvFxbnXm65tG34tObAHlhx8TCncpvqn9GeIxOj3OeQdqrd3bpqiFXgHrdzwH
 L1dDDhY1dpuPEZuKD9X5AqAjM2WUVbpkhlgL1EJ/wWuwypuBo6pRJOaqpHCuxuIe5WWf
 3wILHmn3/uul2EkrPJOBvDJ3AyR7ye2sgp5RPF6cVnTcPIcI/7np83qAav3hDXshLcsJ
 Gin0iP8f8bFRZnNuEsQw7w1fSabXcs0SuKc06of3HbXH8K9GyCQRQ/Arw6EJ5ULYnIrh
 xrJg==
X-Gm-Message-State: AOAM533l5FgG3GuA2QuU+uEJuPhaorCgGkpZh6wg9zhWWS9VKYbYMAWE
 3iQEWGOvpzVpT7s70bK+nMyjTnsgKFfLHvnQnoM=
X-Google-Smtp-Source: ABdhPJycH7ZHcpeF3vjYS1kJ8DHksPXaFAYcATKn9VKTTwqXA64ilzqCFgKdeIJ43KoNBtYwMr8NcyT1fRpGgPY1ZCM=
X-Received: by 2002:a5b:48f:: with SMTP id n15mr242372ybp.457.1627485554814;
 Wed, 28 Jul 2021 08:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210728122606.697619-1-pgwipeout@gmail.com>
 <20210728122606.697619-3-pgwipeout@gmail.com>
 <c7ea6f09-bed0-15d2-1124-44cf98898538@gmail.com>
In-Reply-To: <c7ea6f09-bed0-15d2-1124-44cf98898538@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 11:19:02 -0400
Message-ID: <CAMdYzYoBHZ-8XfcAZ1uGGtT2EEY_wQQoAixhoArsBYVH62pbwA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rk3568 documentation
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_081916_212415_390D70B2 
X-CRM114-Status: GOOD (  20.85  )
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

On Wed, Jul 28, 2021 at 11:14 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,
>
> Some comments. Have a look if it's useful.
>
> On 7/28/21 2:25 PM, Peter Geis wrote:
> > The rk3568 usb2phy node is a standalone node with a single muxed
> > interrupt.
> > Add documentation for it to phy-rockchip-inno-usb2.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml   | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > index 5bebd86bf8b6..f16fea5cad1c 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - rockchip,rk3328-usb2phy
> >        - rockchip,rk3366-usb2phy
> >        - rockchip,rk3399-usb2phy
> > +      - rockchip,rk3568-usb2phy
> >        - rockchip,rv1108-usb2phy
> >
> >    reg:
> > @@ -50,6 +51,9 @@ properties:
> >      description:
> >        Phandle to the extcon device providing the cable state for the otg phy.
> >
>
> > +  interrupts:
>
> > +    description: Muxed interrupt for both ports
>
> My spelling checker suggest: Mixed. Don't know what's correct...

It is muxed, all interrupts come over the single line.

>
> > +
>
> For rk3568 only.
> Could you test/use something like this?
>
> if:
>   properties:
>     compatible:
>       contains:
>         const: rockchip,rk3568-usb2phy
>
> then:
>   properties:
>     interrupts:
>       maxItems: 1
>
>   required:
>        - interrupts
>
> >    rockchip,usbgrf:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description:
> > @@ -78,8 +82,6 @@ properties:
> >
>
> >      required:
> >        - "#phy-cells"
> > -      - interrupts
> > -      - interrupt-names
>
> These are still required for other Rockchip SoCs.
> Could you test/use something like this?
>
>       if:
>         properties:
>           compatible:
>             contains:
>               const: rockchip,rk3568-usb2phy
>
>       else:
>         required:
>           - interrupts
>           - interrupt-names

This is all sane to me, I'll check to ensure it works.

>
> >
> >    otg-port:
> >      type: object
> > @@ -109,8 +111,6 @@ properties:
> >
>
> >      required:
> >        - "#phy-cells"
> > -      - interrupts
> > -      - interrupt-names
>
> dito
>
> >
> >  required:
> >    - compatible
> >

Thank you for the feedback!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
