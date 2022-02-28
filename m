Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC02CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AsGL9pN34UpBIfMhjbvDrgbhICUXiyL/M2nhVoYeYQ=; b=Jx8qFLy3ogXXWw
	dt0sXe91C/Og2zMuRVU9XHKFhR0Eae4tp6i2EaafOtH6hFMZ7KvK69F3xN4pIdaU5HpXn3RZCTtfk
	fBYaQ8v5qpwxBPV/GgTLxOokeiBGXTpSbQSflW1tH3zJ1Y48RXZ2yfDLipLzbJUo7BzX998Qw6KtV
	UsNgUDLoTubWR13K58EIIkCR2d51Bu/ZcAuNRZjWQ/sForPYHYShUlRQTse+htVQmD6dZ2rTNrwYP
	ukNteGnAoXav8/ms1JPTajP4O2GK4Rv1p++tkm9viJegv26a4QxOS2lvFJfDKiDz4VmE/iVwFTl9s
	6VayUqTFwCQOReexejQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgzG-00Cskv-K3; Mon, 28 Feb 2022 14:26:54 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgjx-00CnQg-N4; Mon, 28 Feb 2022 14:11:07 +0000
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-2d66f95f1d1so109927527b3.0; 
 Mon, 28 Feb 2022 06:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BJxYKTxrS47SVKXfCYqFiI5pez+ixoEGvmsQfyRqf6Q=;
 b=ApEem39GpGOM1/xdtRRJXGdwGh3Ko0fovA8hxdfpMCiLbVhYPtlFAcRJ0hutScp7AQ
 tZnK47q1didc5sRYdtRET0L60cDncH80+btbepYtdh8gFYmI/cOEQ3/CPS5Ri8yzHMJB
 WW/FP5kjMGLVuX/z/WNi7WJp6vWWjmcOFbcm0ki39/URvwVtEaHstIe3HKuzNi+Ra24s
 ieHj6YR4q+e4YdRGON3VEr+520JbaO27y+Ox1T66bODoUnQ8CYP+vgNe6dS6otE4nXuV
 ddOVZjFuRj60l0XsG00J9xCCDc8n+UmLUAZA433dbL1NTb3S6PLmVwlj5g6MsCqjxu3/
 i2Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BJxYKTxrS47SVKXfCYqFiI5pez+ixoEGvmsQfyRqf6Q=;
 b=lYbRYHfuIaaQVrtrHZ/TIqpiIC4RiUepnQLKPahu1fTYF3OEnIw+QTE513osGTNhQC
 z36R/0PwlE7Vwk/LkVqmZmDtVjS4a0hfftLzsPCzlR9g+jlMELndM4TiMKOMI4f0oYko
 MNBJ8azZKGHwWHQKHx5DqjPUQ/fsFCkz4A7U5P/697cC0laAhpMG7eo5zRDJ7BvOGJyV
 WwC+F/4UZeDAI2JR33r4l8mURNS3Ykhwd1iqYtUrqf7bLH6hazGZ0Q2WYhGaMdxcD3q3
 pZPoh8Bo3ldXi/u7MJDjuN71Ta0KQbkd6x+Qa7Y+H7V2ty0RXkQPoOYRUBns67n63VZo
 agFQ==
X-Gm-Message-State: AOAM531mL2PpYqhSm6tGWyuWDN7HMKpxhh+83NgKu9HDNzadey09Un0x
 6qiHBUz9EOMJOyC3KENZ22BbWG4hdY7rQRiNGlk=
X-Google-Smtp-Source: ABdhPJzvzulBMf956MEeHrsDwjEaCSD+FDeL+xKpBnFEob7eTPxsjcumYfxh0ZQJ6/PUjWp4ZOcdeUrRTOCV+PXzUsw=
X-Received: by 2002:a81:1613:0:b0:2d7:c68f:bf21 with SMTP id
 19-20020a811613000000b002d7c68fbf21mr20663108yww.414.1646057463684; Mon, 28
 Feb 2022 06:11:03 -0800 (PST)
MIME-Version: 1.0
References: <20220227153016.950473-1-pgwipeout@gmail.com>
 <20220227153016.950473-6-pgwipeout@gmail.com>
 <fdacf3eb-7892-c767-ae85-1672f85684dc@wolfvision.net>
 <CAMdYzYoEEY6-kGVDeWj9AoA98BL5hxnc_4CnUPiuStUnSrFXLA@mail.gmail.com>
 <56f8b74d-d9a1-7c6b-67f2-29586956670d@wolfvision.net>
In-Reply-To: <56f8b74d-d9a1-7c6b-67f2-29586956670d@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 28 Feb 2022 09:10:52 -0500
Message-ID: <CAMdYzYpiNZ1ofzWmjf-3ew1F3RMHngz_Lo72Nu56AnirZSmRPw@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_061105_792122_BC066050 
X-CRM114-Status: GOOD (  23.93  )
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

On Mon, Feb 28, 2022 at 8:37 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Peter,
>
> On 2/28/22 1:57 PM, Peter Geis wrote:
> > [...]
> >>> +
> >>> +&usb_host0_xhci {
> >>> +     phys = <&usb2phy0_otg>;
> >>> +     phy-names = "usb2-phy";
> >>> +     extcon = <&usb2phy0>;
> >>
> >> I wonder what the correct place for this extcon property is. You defined
> >> it on SoC (RK3566) level, in my patch for the RK3568 EVB1 it is added on
> >> board level. Is this common to all RK356x variants?
> >
> > Yes, the usb2phy is always available as an extcon unless you make a
> > device that doesn't have usb2 capability.
> > In that case you'd have to override the device anyways.
> > If we want to turn on default role otg here, we'd need this defined
> > here as well or things break.
>
> OK, so it seems to me that the extcon could or should enter the
> rk356x.dtsi (and can be removed from the rk3566.dtsi and the
> rk3568-evb1-v10.dts in this series). Is that correct?

Apologies it seems I just missed this.
Yes, this could get moved to the base dtsi.
I'd prefer to do it as part of the next series supporting otg, as I've
only been doing OTG development on the rk3566 and would prefer it be
fully tested.
However if Johan prefers I can send another revision accomplishing this now.

>
> Best regards,
> Michael
>
> > [...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
