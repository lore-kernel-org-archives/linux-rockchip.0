Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F39C77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 19:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+h4B25kbYrPBYU4eCRPH3hi79HkWn/rrEG2i/nD6HzY=; b=NYdTj+8goJpMIq
	gAyGwwYhGY8SDgdI2sYTYTChca4dG4ZNnIJJnjYdMtAF0SN2hCSSaXmyzAQ+5Qb4A3+K4DV9/x+F5
	lZqPEf5VOUzLPw6VqN9/bq+3Agd7De8caKRzXYC6LfNBxsBwc/2JRP3/yqKKQqkwbqNkGOtyV6dKv
	KbW0FkjAdvguoUNL+kRvyrr+klNZBEVbJQ6yhFx2Iyqf40Eg8wMP26gQLn5pqr9JKzLpRsCLiMoxH
	Gtu8LlTG5l+E+bbrxqVqe83g1EmUn33JkJYBg0xO0NPLfHMA/TwNQ1ShDCdoC2W6TMS6T1knJ4elP
	pDpp/4G94m01si75TTlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwpvh-006s4u-0G;
	Wed, 10 May 2023 19:56:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwpvd-006s44-2V
	for linux-rockchip@lists.infradead.org;
	Wed, 10 May 2023 19:56:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwpvR-0001BM-Sv; Wed, 10 May 2023 21:56:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwpvO-00087p-Pt; Wed, 10 May 2023 21:56:34 +0200
Date: Wed, 10 May 2023 21:56:34 +0200
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
Message-ID: <20230510195634.GH29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-16-s.hauer@pengutronix.de>
 <71827018-8e29-2966-380b-66ddfdcd3668@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71827018-8e29-2966-380b-66ddfdcd3668@arm.com>
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
X-CRM114-CacheID: sfid-20230510_125649_830829_8B94B21F 
X-CRM114-Status: GOOD (  24.29  )
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

On Tue, May 09, 2023 at 09:04:58PM +0100, Robin Murphy wrote:
> On 2023-05-05 12:38, Sascha Hauer wrote:
> > The DFI is a unit which is suitable for measuring DDR utilization, but
> > so far it could only be used as an event driver for the DDR frequency
> > scaling driver. This adds perf support to the DFI driver.
> > 
> > Usage with the 'perf' tool can look like:
> > 
> > perf stat -a -e rockchip_ddr/cycles/,\
> > 		rockchip_ddr/read-bytes/,\
> > 		rockchip_ddr/write-bytes/,\
> > 		rockchip_ddr/bytes/ sleep 1
> > 
> >   Performance counter stats for 'system wide':
> > 
> >          1582524826      rockchip_ddr/cycles/
> >             1802.25 MB   rockchip_ddr/read-bytes/
> >             1793.72 MB   rockchip_ddr/write-bytes/
> >             3595.90 MB   rockchip_ddr/bytes/
> > 
> >         1.014369709 seconds time elapsed
> > 
> > perf support has been tested on a RK3568 and a RK3399, the latter with
> > dual channel DDR.
> 
> Might it be useful to offer the option of monitoring each channel
> individually?

I gave it a quick try. For my normal testing workload the values are
spread quite homogeneously:

 Performance counter stats for 'system wide':

        1062183406      rockchip_ddr/cycles/
           1517.57 MB   rockchip_ddr/read-bytes0/
           1517.11 MB   rockchip_ddr/write-bytes0/
           1519.78 MB   rockchip_ddr/read-bytes1/
           1514.97 MB   rockchip_ddr/write-bytes1/
           1518.69 MB   rockchip_ddr/read-bytes2/
           1516.01 MB   rockchip_ddr/write-bytes2/
           1519.37 MB   rockchip_ddr/read-bytes3/
           1515.46 MB   rockchip_ddr/write-bytes3/
          12137.84 MB   rockchip_ddr/bytes/

       1.005686209 seconds time elapsed

I found one workload that looks strange though:

 Performance counter stats for 'system wide':

        1076756945      rockchip_ddr/cycles/
           2326.55 MB   rockchip_ddr/read-bytes0/
             30.60 MB   rockchip_ddr/write-bytes0/
              0.24 MB   rockchip_ddr/read-bytes1/
              0.09 MB   rockchip_ddr/write-bytes1/
              0.21 MB   rockchip_ddr/read-bytes2/
              0.09 MB   rockchip_ddr/write-bytes2/
              0.30 MB   rockchip_ddr/read-bytes3/
              0.10 MB   rockchip_ddr/write-bytes3/
           2357.87 MB   rockchip_ddr/bytes/

I am running this tool (likely not the exact version):
https://github.com/mturquette/memtest/blob/master/mtest.c

I don't know yet what this tool is doing, but it somehow manages
to use only a single channel.

We might take this as a sign that monitoring the individual channels can
indeed be useful.

I'll address your other comments in the next round.

Thanks for your input

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
