Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB42C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COsimeKykgkLi8zaLLM2EaMvXSEDcTdrga94Ch9mQTU=; b=puVsk21v1Nl0pW
	bj4eiZyX9Dt5h3oGUZaobsiwWHKbllyyvr7NQOC9aVmkSV4qENk5biJNmCHBj2PTI0xYPNKheMZ7+
	IeQ1CtJoJCyEiAwznBNX40PP51N1FfZ+F5FRjlh1hy8YmYJIpNmUocVpUsNjHuXuPn0Kexr8s8Vls
	JwV5EA+FtmQy135ykdeDvIudiY6UYqO/XYYouWGdcM0EYS6OI471dqxee3nIXfsHGaNsL4QQy7y22
	qYyoid2Jz+rgVglP2qjrITCuY/fc0woiU8LPO3u4Adl8/65swvdhk/XyIy6xG9zEFk2hBFGawtdEw
	mFXD3AH0I/73pQJM6OVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd92p-002ui4-7b; Sat, 09 Apr 2022 11:14:19 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd92m-002ugC-Pt; Sat, 09 Apr 2022 11:14:18 +0000
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-2ebef467b1bso32066507b3.13; 
 Sat, 09 Apr 2022 04:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zPEF53AYfxfAhRCA4CJkt0abN81bbmJ7If+TUSs8zj4=;
 b=FvdOTWPbf4r5PIlRt24bqjz8X02YzQ/CJ2lTyQZ1DM0mHFbLmfz1qC+QZEuua3YABn
 2BbX9NCA205D8BERUlLaZHa8CryFQ9narmtCkZJE6TQD7SqO2eWyU35/HKfGb5l7V7gh
 Czpdr+PeXXuOY+0+IKwuuuqwVw9SOCS9gADLSJ80LWb+EF6t0s/aWCAfk839e8xRPCeg
 hbNrFD4wxTYLTE1sUs8vKOKE6lSMsQRiocfZnO4lkrzqthU3gFAIMJsi/iSIegHTcSgv
 bvRTeMfVLFNLCLy7A7FwZjPqZpqRRfipiVaGET44kwY29FMZ7pPuY6nBr2iggcZVsIqf
 EiYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zPEF53AYfxfAhRCA4CJkt0abN81bbmJ7If+TUSs8zj4=;
 b=AP2+CODUBHtzXqshi7o2mSY+vWelXZI9ug0KsGgYuTijSiJn3Ab/yFgSs6Vkaj0U28
 +x5KTSK7G/hlLnbwtNfJ7g9JdK3sM5mL13PIHMw1yFIQx5oNb7dsvGQ6WqZdscX8rYo3
 5IV4fjbGPUcco545yqB0ECy96Evv7bj9pLSj3VVLx1IGzOCYJuySviSu2yBF9/6D9ZrM
 JlQ7e5cNVmcCKRCtROc4hxPNitE5zk5mEtDy1FBeqsv5hqpwsWWzLkPoNLpEE9ODUIjT
 DWzn7vH2+RRfI6RVC30jY54zCedn2dDN+VKVxryrbHMIRmOysEYNnRoZDGsh/BT1q8bE
 DEHA==
X-Gm-Message-State: AOAM533fLPdH1HTKbMo/DdNaw1PJUYysYGk6mJAOaS0TeiJWCnzENXEk
 uVm4m6Soy7lK9g7NlDigbMUO2PNERdGBv/UCD3A=
X-Google-Smtp-Source: ABdhPJx2xWNVGco0UwA3Pvr1pb1iwgQaYcNjp9eBRRGyd/5kNoSfQ2YE8TuZSccongnYDSrSG+TdsKCi2yiinLUcprU=
X-Received: by 2002:a81:5904:0:b0:2eb:f900:882e with SMTP id
 n4-20020a815904000000b002ebf900882emr1628744ywb.281.1649502855066; Sat, 09
 Apr 2022 04:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220409075147.136187-1-linux@fw-web.de>
 <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
 <trinity-b6d141b2-264a-4a57-9707-6a38a80cea16-1649501859874@3c-app-gmx-bap35>
 <4559790.iIbC2pHGDl@phil>
In-Reply-To: <4559790.iIbC2pHGDl@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 9 Apr 2022 07:14:04 -0400
Message-ID: <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
Subject: Re: Aw: Re: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x
 usb
To: Heiko Stuebner <heiko@sntech.de>
Cc: Dan Johansen <strit@manjaro.org>,
 Frank Wunderlich <frank-w@public-files.de>, 
 Frank Wunderlich <linux@fw-web.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_041416_914944_144BD011 
X-CRM114-Status: GOOD (  20.70  )
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

On Sat, Apr 9, 2022 at 7:01 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Samstag, 9. April 2022, 12:57:39 CEST schrieb Frank Wunderlich:
> > Hi
> > > Gesendet: Samstag, 09. April 2022 um 12:40 Uhr
> > > Von: "Dan Johansen" <strit@manjaro.org>
> >
> > > So the issue is only with usb 3 ports, not usb 2 ports?
> >
> > my board has no standalone usb2-ports. usb2 is integrated into the usb3 ports (dual phy). here both were not working.
> >
> > afaik rk3566 has standalone usb2 ports that may not be broken, but i have no such board for testing.

Good Morning,

>
> As far as I understand the issue now after checking the code, this
> patch actually fixes the usb3 series from Peter, right?
>
> I.e. the usb-nodes that are fixed in this patch are not yet present
> in the main rk356x dtsi and only get added in
> "arm64: dts: rockchip: add rk356x dwc3 usb3 nodes" [0]
>
> As we don't want to add broken changes, this fix should squashed
> into a next version of the patch adding the nodes.

Thank you for reporting this, I will squash this fix in and add your signed-off.

However the offending patch is in fact the clock separation patch, and
it breaks backwards compatibility with the rk3328 dtsi which is why my
series also is broken.

The rockchip,dwc3.yaml needs to be fixed to align with the
snps,dwc3.yaml, and both the rk3328 and rk3399 clock names updated.
Also the offending clock separation patch needs a fix to grab the old
clock names for rk3328 backwards compatibility to be retained.

This might also be a good time to look into moving rk3399 to the core
dwc3 driver?

This is a delightful mess.

>
>
> Heiko
>
> [0] https://lore.kernel.org/r/20220408151237.3165046-4-pgwipeout@gmail.com
>
>

Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
