Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1991DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 03:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dKRm8HK0LqPNLo6+n5UiziHPI6IgcEAqTMkOSuFExU=; b=K/HEbQgldU/9uX
	3AOILp4LJGpZLUemmQkKH3FZbfftoB1+hrnu0w0R4lknppGbKViigL8QE3SpTF6+YSAYhxZwRFZlK
	sNi9OSzDQ9qyvXUQWpdCySz9DHq50E8h5W1ylmjRIJDoY/P3dLz/VYbN1m/od7Ev00Xt919ddcRcK
	BKg+zbQVCyHwlud42t8orSDVfN/8qfHsJcE/VgS9eJab6RkbqRRtK6WUEG94RNah1veEXguypIM8n
	ltUijh1CtQ/vi4HUENV7CnZSvxiVbB6RRe2fQbsAbEPOnzmjWkN+4u6SmfMVZDRFFdARsq0yYs72O
	GSprSz71TALecxVX5khg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8D32-004Evd-SJ; Mon, 04 Jul 2022 03:46:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8D2z-004EpR-T1
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 03:46:55 +0000
Received: from pyrite.rasen.tech (softbank036240127029.bbtec.net [36.240.127.29])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2DF249C;
	Mon,  4 Jul 2022 05:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656906404;
	bh=MQMA4k5iYzfiiEVG4ZVwz3Cs13k1iB0wUP07PlF8QXA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hLgH49qw9F94Pm4wK85e2T6XmMwYiODJcNrbKvwLbH/A5Po3vXdZbjuTI3yqKpbvt
	 FVBuX8YwDRQi/rKZr80Q186/ib7ai5fhVU8n7VUR/YJhztspjsKiRm5rWLZIBZZgIb
	 EGjabv9i10K2KKCB5LSNsHIX7Zwp5SZRYp9FNdbE=
Date: Mon, 4 Jul 2022 12:46:33 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/55] media: rkisp1: debug: Add dump file in debugfs for
 MI buffer registers
Message-ID: <20220704034633.GA3886060@pyrite.rasen.tech>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-2-paul.elder@ideasonboard.com>
 <YqpgMkK33+0IpxjR@pendragon.ideasonboard.com>
 <YrdNFJnkU+MLtmtk@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrdNFJnkU+MLtmtk@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220703_204654_135740_4217EE63 
X-CRM114-Status: GOOD (  24.70  )
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

Hi Laurent,

Sorry for the delay.

On Sat, Jun 25, 2022 at 08:59:48PM +0300, Laurent Pinchart wrote:
> Hi Paul,
> 
> On Thu, Jun 16, 2022 at 01:41:56AM +0300, Laurent Pinchart wrote:
> > On Wed, Jun 15, 2022 at 04:10:33AM +0900, Paul Elder wrote:
> > > Add a register dump file in debugfs for some of the buffer-related
> > > registers in MI, for the base address, the size, and the offset. Also
> > > dump the appropriate shadow registers.
> > > 
> > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > ---
> > >  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
> > >  1 file changed, 21 insertions(+)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > index e76dc2b164b6..1a59c00fabdd 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > @@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> > >  }
> > >  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
> > >  
> > > +static int rkisp1_debug_dump_mi_mp_y_offs_cnt_show(struct seq_file *m, void *p)
> > > +{
> > > +	static const struct rkisp1_debug_register registers[] = {
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
> > > +		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
> > > +		{ /* Sentinel */ },
> > > +	};
> > > +	struct rkisp1_device *rkisp1 = m->private;
> > > +
> > > +	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> > > +}
> > > +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp_y_offs_cnt);
> > > +
> > >  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
> > >  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
> > >  
> > > @@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> > >  	debugfs_create_file("srsz", 0444, regs_dir,
> > >  			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
> > >  			    &rkisp1_debug_dump_rsz_regs_fops);
> > > +
> > > +	debugfs_create_file("mi_mp_y_bufs", 0444, regs_dir, rkisp1,
> > > +			    &rkisp1_debug_dump_mi_mp_y_offs_cnt_fops);
> > 
> > That's a very specialized file. I wonder if we should call it just
> > "mi_mp" if it needs to be extended later with other memory interface
> > registers for the main path. Or maybe even just "mi", to cover the self
> > path too ? The latter may be a tad too generic. What do you think ?

I think mi_mp would be good. imo mi might be a tad too generic and get
crowded with the self path registers (probably).


Paul

> 
> Ping
>
> 
> > >  }
> > >  
> > >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
