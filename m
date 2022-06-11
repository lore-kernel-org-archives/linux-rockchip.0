Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18293C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 13:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/AqQrcjC7gUC7fGYm+VWV7mOn0WvKjY7wka7zxnQxM=; b=4VpEg9CV9RxLwN
	O5iM+psorpzDHaXgC+57M0RFRz21Vs3y4udRmMKcGKQPhrh5iGWkyYMYmhfRJtnkrQnmEAZOlJilf
	OCW5sJ3LjimcsbA6cWU+2ztWjzwE31jNnmATW0gf/A+6nviidnijFZjEh8po3AbHcGxEwEzekm2M8
	SB+vXglHiXycjg4xIoUw6XquQvM1GufoT9XzquVMticR4iiRYfbt1Wu86dHRY7bpI5KQQ4CS9jTEh
	19RAL4ntmBOJHzsBYc/0T69h9cpyJyKqoiTxSeSR0113FXjbj81rowmekGygzJlCisPjcE041R/p3
	NJ2d2MMVLt6os3Nn9GEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01VU-00D91o-DW; Sat, 11 Jun 2022 13:50:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01VI-00D8xk-Tt; Sat, 11 Jun 2022 13:50:18 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o01VC-0004TJ-AU; Sat, 11 Jun 2022 15:50:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Riesch <michael.riesch@wolfvision.net>, Peter Geis <pgwipeout@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>, arm-mail-list <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SoQuartz CM4IO usb
Date: Sat, 11 Jun 2022 15:50:08 +0200
Message-ID: <4178848.3VsfAaAtOV@phil>
In-Reply-To: <CAMdYzYqJ2S8K2NCH1uQ2xDjTfLmePPv5TzgeXZa0EG6XdGQzBQ@mail.gmail.com>
References: <20220610132601.160088-1-pgwipeout@gmail.com> <CAMdYzYqJ2S8K2NCH1uQ2xDjTfLmePPv5TzgeXZa0EG6XdGQzBQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_065017_027747_01D637D4 
X-CRM114-Status: GOOD (  20.83  )
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

Am Freitag, 10. Juni 2022, 16:44:23 CEST schrieb Peter Geis:
> On Fri, Jun 10, 2022 at 9:26 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > The SoQuartz CM4-IO should support otg mode, however it currently
> > defaults to device mode when otg is enabled. Force it to host mode to
> > retain the previous behavior.
> 
> It would seem the role-switch issue is more widespread than originally
> thought, affecting other boards where automatic control should work.
> Please hold this patch while I investigate further.

ok!

I guess this also applies to
	"arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior"?


Heiko


> >
> > Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > index e00568a6be5c..56764fae9f9d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > @@ -169,6 +169,7 @@ &usb2phy0_otg {
> >  };
> >
> >  &usb_host0_xhci {
> > +       dr_mode = "host";
> >         status = "okay";
> >  };
> >
> > --
> > 2.25.1
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
