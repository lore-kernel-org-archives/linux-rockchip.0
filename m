Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C74D7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoJF7gxHVbgmMNp5HZ5aHwJmFkf9GiJCRKL4hhPoAD0=; b=M+4nXe4qysL7T4
	DfQmEqcQdhgIjDpSsG09BWNmZIJRGiu8TnZsVm7UY0WxAKIZ1bV5clFqwy1UWz9vlPFYZkNTsIRQL
	DNwghqt8vsSqq5vafJ3hOPJ5edrxRL6MM/Nla/xl1toB6xQpY0UepuR2RnjAUpAwxF7OkNEm0wAgD
	eaiy3urwGs/bVW20sWoHSHi1OslVdZIjd0D2Dtwc4QDZA+GdIJthoDJZqmFHJnIBnGemQpbn9CE9l
	VOaHTtKiHY3m+uuKl6j1qP5BEJeWGptQSRrzXv+JKG+XoOf23gT9ZJjCHBuQ7zXqJvywJhaBYrDka
	ObQs8Yzdhltc2tlo1jmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02ax-00DSgf-I9; Sat, 11 Jun 2022 15:00:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02al-00DScI-Te; Sat, 11 Jun 2022 15:00:01 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02ag-0004qO-5R; Sat, 11 Jun 2022 16:59:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Riesch <michael.riesch@wolfvision.net>, devicetree <devicetree@vger.kernel.org>, arm-mail-list <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SoQuartz CM4IO usb
Date: Sat, 11 Jun 2022 16:59:53 +0200
Message-ID: <8819229.G0QQBjFxQf@phil>
In-Reply-To: <CAMdYzYqRcrawKc-GsTgwnPuJBJoKTn9Arfpj_Vjnt+3DeT7k9w@mail.gmail.com>
References: <20220610132601.160088-1-pgwipeout@gmail.com> <4178848.3VsfAaAtOV@phil> <CAMdYzYqRcrawKc-GsTgwnPuJBJoKTn9Arfpj_Vjnt+3DeT7k9w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_080000_007364_B053B070 
X-CRM114-Status: GOOD (  27.86  )
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

Am Samstag, 11. Juni 2022, 15:53:41 CEST schrieb Peter Geis:
> On Sat, Jun 11, 2022 at 9:50 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Am Freitag, 10. Juni 2022, 16:44:23 CEST schrieb Peter Geis:
> > > On Fri, Jun 10, 2022 at 9:26 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > > >
> > > > The SoQuartz CM4-IO should support otg mode, however it currently
> > > > defaults to device mode when otg is enabled. Force it to host mode to
> > > > retain the previous behavior.
> > >
> > > It would seem the role-switch issue is more widespread than originally
> > > thought, affecting other boards where automatic control should work.
> > > Please hold this patch while I investigate further.
> >
> > ok!
> >
> > I guess this also applies to
> >         "arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior"?
> 
> No, on Quartz64 Model A it can't work, the requisite pin isn't connected.

ok, so I can pick that other patch up :-) .

> I think I've found the problem, I've requested a few people to test a fix.
> Do you have a Model B or SoQuartz to test against (or any other rk356x
> board that has the id pin hooked up)?

The rk356x in my boardfarm is a Quartz-B ... though an very early model,
so hopefully nothing changed on the board since then.

Although there is nothing connected to usb right now and I only have
remote access this weekend, so any usb tests would need to wait till next
week on my end.


Heiko


> 
> Thanks,
> Peter
> 
> >
> >
> > Heiko
> >
> >
> > > >
> > > > Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > > index e00568a6be5c..56764fae9f9d 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > > @@ -169,6 +169,7 @@ &usb2phy0_otg {
> > > >  };
> > > >
> > > >  &usb_host0_xhci {
> > > > +       dr_mode = "host";
> > > >         status = "okay";
> > > >  };
> > > >
> > > > --
> > > > 2.25.1
> > > >
> > >
> >
> >
> >
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
