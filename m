Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F55C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hlL2ZMSx1PtJHGAUEe0JgmtEG0gNH6POLLGKxOKy20=; b=B6uh0UnkGPIqiC
	ocwoeo83HVxIdUeVsnaaj3rCUKLT9TIsB3sxcTb2zzTnMfOqW1AQXlOacYyfXHXWrE0wMiq/wm4el
	g6D4KaVaYl66NvkVs5saG0OVO7/AAsdSa0HVzrmweAidcZY4Q4vFYhVzWg9ohGqWyybsWU+RqwzeL
	XcKiaxM3I7srhtIeiolobLMUFdl+r6BujBg+hKgbkLgVi90Do1NzxewVEE2vSvonF8CS9OqQbo13o
	IZMyNrmzcEV5Eye5umRpmIdE93cyhEFAJuRhpzH9rNcJp2BGThQQrr35YvgxtheS2xlOnxMSfkIt9
	NR7SQ8XCVy7BA9cp6E0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywmX-006HwY-0b;
	Tue, 16 May 2023 15:40:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywmU-006HvG-0m
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 15:40:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pywmJ-0003pI-Ox; Tue, 16 May 2023 17:39:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pywmH-0003SC-G6; Tue, 16 May 2023 17:39:53 +0200
Date: Tue, 16 May 2023 17:39:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 15/21] PM / devfreq: rockchip-dfi: Add perf support
Message-ID: <20230516153953.GT15436@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-16-s.hauer@pengutronix.de>
 <71827018-8e29-2966-380b-66ddfdcd3668@arm.com>
 <20230510195634.GH29365@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510195634.GH29365@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_084006_279699_8D77FE94 
X-CRM114-Status: GOOD (  29.63  )
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

On Wed, May 10, 2023 at 09:56:34PM +0200, Sascha Hauer wrote:
> On Tue, May 09, 2023 at 09:04:58PM +0100, Robin Murphy wrote:
> > On 2023-05-05 12:38, Sascha Hauer wrote:
> > > The DFI is a unit which is suitable for measuring DDR utilization, but
> > > so far it could only be used as an event driver for the DDR frequency
> > > scaling driver. This adds perf support to the DFI driver.
> > > 
> > > Usage with the 'perf' tool can look like:
> > > 
> > > perf stat -a -e rockchip_ddr/cycles/,\
> > > 		rockchip_ddr/read-bytes/,\
> > > 		rockchip_ddr/write-bytes/,\
> > > 		rockchip_ddr/bytes/ sleep 1
> > > 
> > >   Performance counter stats for 'system wide':
> > > 
> > >          1582524826      rockchip_ddr/cycles/
> > >             1802.25 MB   rockchip_ddr/read-bytes/
> > >             1793.72 MB   rockchip_ddr/write-bytes/
> > >             3595.90 MB   rockchip_ddr/bytes/
> > > 
> > >         1.014369709 seconds time elapsed
> > > 
> > > perf support has been tested on a RK3568 and a RK3399, the latter with
> > > dual channel DDR.
> > 
> > Might it be useful to offer the option of monitoring each channel
> > individually?
> 
> I gave it a quick try. For my normal testing workload the values are
> spread quite homogeneously:
> 
>  Performance counter stats for 'system wide':
> 
>         1062183406      rockchip_ddr/cycles/
>            1517.57 MB   rockchip_ddr/read-bytes0/
>            1517.11 MB   rockchip_ddr/write-bytes0/
>            1519.78 MB   rockchip_ddr/read-bytes1/
>            1514.97 MB   rockchip_ddr/write-bytes1/
>            1518.69 MB   rockchip_ddr/read-bytes2/
>            1516.01 MB   rockchip_ddr/write-bytes2/
>            1519.37 MB   rockchip_ddr/read-bytes3/
>            1515.46 MB   rockchip_ddr/write-bytes3/
>           12137.84 MB   rockchip_ddr/bytes/
> 
>        1.005686209 seconds time elapsed
> 
> I found one workload that looks strange though:
> 
>  Performance counter stats for 'system wide':
> 
>         1076756945      rockchip_ddr/cycles/
>            2326.55 MB   rockchip_ddr/read-bytes0/
>              30.60 MB   rockchip_ddr/write-bytes0/
>               0.24 MB   rockchip_ddr/read-bytes1/
>               0.09 MB   rockchip_ddr/write-bytes1/
>               0.21 MB   rockchip_ddr/read-bytes2/
>               0.09 MB   rockchip_ddr/write-bytes2/
>               0.30 MB   rockchip_ddr/read-bytes3/
>               0.10 MB   rockchip_ddr/write-bytes3/
>            2357.87 MB   rockchip_ddr/bytes/
> 
> I am running this tool (likely not the exact version):
> https://github.com/mturquette/memtest/blob/master/mtest.c
> 
> I don't know yet what this tool is doing, but it somehow manages
> to use only a single channel.

Ok, I found it out. On my RK3588 board with four channels the channels
seem to be interleaved with 512 bytes. When I only read/write the first
512 bytes of a page then only channel 0 is used, channel 1 for the
second 512 bytes etc.

The mtest tool allocates a bunch of pages, but only ever reads and
writes the first word of each page.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
