Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762A2C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 03:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/H3fZTvydKFE0Dskz4JB9xNj6WOT6Mf0MJ2ICk7+XE=; b=pQ6jk4QQ8gED/+
	jKN/8KBQ3IcjiYZoU9LaxujxajaNXeZj9cfHwN5y3o1Z/XLZ9377lXlWdZW5HOrj0VbwFODqaBSR/
	MXJzVoqrgErtJNS8mFCnNuF6T6lpKQ3wmgsWIJQV43APTP+rh05wZBTp7UjFXlJrlj7BWZwymJXbq
	VA68bG+J7CTsP+vXZk5Tb5Lpvh1wBu/knSP0XEFMlzZtvMsgqR3eV/BEu1WCaRjqM8lYL8hzbI1gj
	IIFOn4l40XuAAABVI4CsIQBlBp+wYLHQErfaW7lEZjXSUmPackFq31lFmJm1yOomME/nH2Ipzdo0O
	paabAU/8+hVlhVASCwOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8D3n-004FHm-IB; Mon, 04 Jul 2022 03:47:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8D3k-004FFt-Ih
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 03:47:42 +0000
Received: from pyrite.rasen.tech (softbank036240127029.bbtec.net [36.240.127.29])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A9E5149C;
	Mon,  4 Jul 2022 05:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656906459;
	bh=3owNVlxAfMqL4mpltnsUmaXbTbZEXD/Ct0vbjMKQDbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tyShK0yWBNb/HyEQ/C+6N88g1ADs9o8dHfuLTF6gg4V3xUPuOs1L2UrsdE3ENb8vg
	 bKu7TVrwpMaFt67BCwip+z2kEasj/M+UmSfIc/dbEvNlQW26d9eenTwDOn/pnzkNXB
	 ZZywifpoTkmZ8fG2Nu/1dYZMZVMPLbunVx6vedj4=
Date: Mon, 4 Jul 2022 12:47:28 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 03/55] media: rkisp1: debug: Add debugfs files to monitor
 MI and ISP interrupts
Message-ID: <20220704034728.GB3886060@pyrite.rasen.tech>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-4-paul.elder@ideasonboard.com>
 <Yqp854dMgW+deHam@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqp854dMgW+deHam@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220703_204740_810045_F78A5DC9 
X-CRM114-Status: GOOD (  18.92  )
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

On Thu, Jun 16, 2022 at 03:44:23AM +0300, Laurent Pinchart wrote:
> Hi Paul,
> 
> Thank you for the patch.
> 
> On Wed, Jun 15, 2022 at 04:10:35AM +0900, Paul Elder wrote:
> > Add files in debugfs to monitor some of the interrupts of the MI and
> > ISP. Add the appropriate holder variables in the rkisp1_debug struct as
> > well.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  9 +++++++++
> >  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 20 +++++++++++++++++++
> >  2 files changed, 29 insertions(+)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 4243ff5e2197..a67fe7b1dfa1 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > @@ -364,6 +364,15 @@ struct rkisp1_debug {
> >  	unsigned long stats_error;
> >  	unsigned long stop_timeout[2];
> >  	unsigned long frame_drop[2];
> > +	unsigned long mi_irq_mblk_line_count;
> > +	unsigned long mi_irq_fill_mp_y_count;
> > +	unsigned long mi_irq_frame_count;
> > +	unsigned long mi_irq_wrap_mp_y_count;
> > +	unsigned long mi_irq_wrap_mp_cb_count;
> > +	unsigned long mi_irq_wrap_mp_cr_count;
> > +	unsigned long isp_irq_v_start_count;
> > +	unsigned long isp_irq_frame_count;
> > +	unsigned long isp_irq_frame_in_count;
> >  };
> >  
> >  /*
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > index 1a59c00fabdd..02854e8ea1a4 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > @@ -220,6 +220,26 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> >  	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
> >  			    &rkisp1_debug_input_status_fops);
> >  
> > +	debugfs_create_ulong("mi_irq_mblk_line_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_mblk_line_count);
> > +	debugfs_create_ulong("mi_irq_fill_mp_y_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_fill_mp_y_count);
> > +	debugfs_create_ulong("mi_irq_frame_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_frame_count);
> > +	debugfs_create_ulong("mi_irq_wrap_mp_y_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_wrap_mp_y_count);
> > +	debugfs_create_ulong("mi_irq_wrap_mp_cb_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_wrap_mp_cb_count);
> > +	debugfs_create_ulong("mi_irq_wrap_mp_cr_count", 0444, debug->debugfs_dir,
> > +			     &debug->mi_irq_wrap_mp_cr_count);
> > +
> > +	debugfs_create_ulong("isp_irq_v_start_count", 0444, debug->debugfs_dir,
> > +			     &debug->isp_irq_v_start_count);
> > +	debugfs_create_ulong("isp_irq_frame_count", 0444, debug->debugfs_dir,
> > +			     &debug->isp_irq_frame_count);
> > +	debugfs_create_ulong("isp_irq_frame_in_count", 0444, debug->debugfs_dir,
> > +			     &debug->isp_irq_frame_in_count);
> 
> It's nice to expose these through debugfs, but it looks like you never
> actually set any of those fields :-) I think you could just drop this
> patch.

Oops, you're right :p

Yeah we can drop it.


Paul

> 
> > +
> >  	regs_dir = debugfs_create_dir("regs", debug->debugfs_dir);
> >  
> >  	debugfs_create_file("core", 0444, regs_dir, rkisp1,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
