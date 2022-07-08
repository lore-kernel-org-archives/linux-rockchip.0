Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D42C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 05:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCy6DSPNwW3n7MeQqeLfEGIdanTFMv4qzwC93INYizI=; b=LJUixnROdKqKao
	K+kjMNreeqBy00wM7WHhCaFRm10c589UG2ZTe9dmz33UA+CxVUEpiaDGhxXD60lg2BgWzj4rlqlRz
	+yJUEDB4hq1Fa4/Uy/ailrftulF8XWi2VracaaIUDfC6vQmHuUPpuE/ce+8C14NMWkVBCVQ14XsK0
	lFwjaY3+9QCQcP0OtJw3BkX8ePttwCwjFn2Z8njGiujl8Xavd1traecMovrTxATgmKKYYFeWy0qDX
	rNmH4CAzRx/7uEfdL6JLzyAP8jPCnj5N4JB7v+LrWXNw/+mYgo6kjtdHfLOvdtvar2EsFHO81D+4H
	ZOyN5XgI8zMF9s5UfsCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gLx-001oAf-Rt; Fri, 08 Jul 2022 05:16:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gLl-001o7O-Jk; Fri, 08 Jul 2022 05:16:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E7FC2B8229B;
	Fri,  8 Jul 2022 05:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33A1DC341C0;
	Fri,  8 Jul 2022 05:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657257378;
	bh=4wYE7v0lAhM5Calh+s5prT4A+3nwzjmMFNoQEcRsbG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YsrHVfbHK5/zojMD3bFusOTRWdnu1UlFGWIdjtdtmzu10DnF/Pi5B4S2737FkTlTA
	 cxSFPavn11Rke/IEjLJsqiep/kO5RRvSDJSkT+OTPoTXyJMmmVC5Abd7IzJ9Fd03Gs
	 746teNFDCCR/0OEhhg6ZStW/RTFszZJs7VxW7aVPAyxAy55n+HlkgW0Cj2Mkfmvdqn
	 pFq+D+bNarwZ4Vd6XiN9XLnMoZoojo1EMU5IXrG79gBiwjcjyzSQFx1nH35Pnhl7JV
	 KWpAOsftWLG4+czWL3UeN5nIaoRWPG7qh3nxshRxGO3h62zl0sVQknoai9nzpusDOv
	 qo+SfnOnpFgng==
Date: Fri, 8 Jul 2022 10:46:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	arm-mail-list <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [BUG] USB broken on rk3568 based R2Pro
Message-ID: <Yse9nz9jjRoiPq6K@matsya>
References: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
 <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
 <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_221621_981032_2534826C 
X-CRM114-Status: GOOD (  26.42  )
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

On 07-07-22, 15:41, Peter Geis wrote:
> On Thu, Jul 7, 2022 at 1:51 PM Frank Wunderlich <frank-w@public-files.de> wrote:
> >
> > Hi,
> >
> > traced it down with manual reverts to this one:
> >
> > commit 6a98df08ccd55e87947d253b19925691763e755c
> >     phy: rockchip-inno-usb2: Fix muxed interrupt support
> >
> > luckily i can revert only this and now upper usb-port works again
> >
> > @samuel: have you an idea how to fix your problem without breaking my board? :)
> >
> > @greg/Vinod: maybe we can add a revert of this in mainline till issue is resolved?

Lets give it a few days if we can find a fix, if not we can revert

> >
> > regards Frank
> 
> I don't know what you're running, but with the standard arm64
> defconfig w/ all rockchip stuff built in, I have no issues here on
> 5.19.

Please share the config and other details on what your running so that
Peter can repro this...

> Note, the following changes are necessary to the 5.19 dts here:
> Remove the extcon from usb_host0_xhci, as the production model doesn't
> have automatic switching capabilities. The ID pin was removed in favor
> of the usb debug function which also doesn't work.
> Add dr_mode = "host" to the same node, for the same reason.
> 
> >
> >
> > > Von: "Frank Wunderlich" <frank-w@public-files.de>
> > > i noticed that upper usb-Port (otg) is broken on my Bananapi R2Pro with 5.19-rc1, works with 5.18.0
> > >
> > > this port is a usb3 (xhci) port which includes an usb2-phy and should support otg, but i still want
> > > to use it in host-only mode (USB-A socket).
> > >
> > > already tried setting dr_mode in dts back to "host" as this was changed in rk356x.dtsi by this commit:
> > >
> > > bc405bb3eeee 2022-04-25 arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
> > >
> > > i see no error in dmesg and usb-controllers seem to be initialized completely (visible in lsusb).
> > >
> > > r2pro has ID-Pin not connected, so i tried also peters Patch without success :(
> >

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
