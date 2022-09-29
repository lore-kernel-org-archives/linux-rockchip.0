Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50970C6FA83
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 03:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WpL/p0o8Uz8sZgYTJaP+a1WTqXw1LovYYVkzcx9Bhw=; b=opU/JVawCNAKAL
	s5PMrSXnv6Gh1DSHk6AcSnF8EGcLBbocIIxm9hjWmRRyLMaHu51T+TUinh09uZucMCQQIWceMszka
	dlz/St4bL+CemxfziwPUaPjUagHpJHfj+LXKqzzj4Y6AgyNVaqE0e8z8H3oTwKO9Ql+yegR8nXFtS
	0cqfnYy0+g6VFOY+f7edpuKbRxHc8BjRgbyqSx7liOgnX3PxUTW7rcyw/FEYkHkQ9hF8vt9Ya+dQv
	eD+tAtJMVatYA7o1CpqHtnj0tv0IJLWyQfap4A1mgTieb2zSb+yi9D8b/+6P2VhiEPqLPOu8YgGeA
	td3r1EYVLxNR27SVRx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odkAG-0013zY-JM; Thu, 29 Sep 2022 03:24:44 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odkAD-0013y0-5b
	for linux-rockchip@lists.infradead.org; Thu, 29 Sep 2022 03:24:43 +0000
Date: Wed, 28 Sep 2022 22:24:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1664421873;
	bh=S3V/oabjvo+o4Z5pvX2DO6gwx16MThlbck2ozz3F3sY=;
	h=Date:From:To:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To:From:Subject:To:Date:
	 Sender:Content-Type:Content-Transfer-Encoding:Content-Disposition:
	 Mime-Version:Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=yFuN/xtqXGxcPp2K65UESEaHwe/UeIfIeYNlKfEmRIB6BiQOeH4W7noan8bghrTb7
	 3Eu0lbDiR5WpQWucHeZShw1IbOhuI4ER3mDNPLv50e5ZMnu3oBECf47taq5uZym08G
	 CRualk1/dX3pY9+qziBV0L/PAwSYw6JabrCEMjMYrGjbbhhYCSQvo1DoytShpV3VHJ
	 XWqUcYg1ojsGhAbCsKzwXS9L9TLxHvc1gOPGPjZo/LF89YU4M1tFb9E0Xshe1jvFKr
	 lrhJ/B5REMZYy7hsBUqGKGmD8qJAo+Ew8u7DALPZY9UqMb1WJBgWe+sdz0h989Adt6
	 fSIDQFueQVW1A==
From: "Marty E. Plummer" <hanetzer@startmail.com>
To: Simon Glass <sjg@chromium.org>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	Artem Lapkin <email2tema@gmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Xavier Drudis Ferran <xdrudis@tinet.cat>,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH 4/4] rockchip: rk3399: attempt to redirect uart2dbga
 to sdcard
Message-ID: <20220929032429.lkk5ikxpxweke4xs@proprietary-killer>
References: <20220922064704.1740759-1-hanetzer@startmail.com>
 <20220922064704.1740759-5-hanetzer@startmail.com>
 <CAPnjgZ3-a8eCdD7uqeW6QPXceSyUA2n2uDRE1Kddgsys_fGByg@mail.gmail.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPnjgZ3-a8eCdD7uqeW6QPXceSyUA2n2uDRE1Kddgsys_fGByg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_202441_406335_A7C9DBF0 
X-CRM114-Status: GOOD (  15.98  )
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

On Wed, Sep 28, 2022 at 04:20:37AM -0600, Simon Glass wrote:
> Hi Marty,
> 
> On Thu, 22 Sept 2022 at 00:47, Marty E. Plummer <hanetzer@startmail.com> wrote:
> >
> > The meat of my problem. rk3399 has the ability to redirect uart2 to
> > sdcard pins. This setup half works; I can push input into the uart, but
> > not see output.
> >
> > Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
> >
> > ---
> >
> >  arch/arm/dts/rk3399-gru.dtsi                   |  7 ++-----
> >  arch/arm/dts/rk3399.dtsi                       |  4 ++--
> >  .../arm/include/asm/arch-rockchip/grf_rk3399.h |  3 +++
> >  arch/arm/mach-rockchip/rk3399/rk3399.c         | 18 +++++++++---------
> >  4 files changed, 16 insertions(+), 16 deletions(-)
> 
> Perhaps the C code could be behind a Kconfig, with a comment about how
> to change the DT?
> 
Maybe if I do end up making this up for mainline inclusion, sure, but as
of right now I just wanna get some console output to see why things
aren't booting properly, so looking for dirty hax to work with for now.
> Regards,
> Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
