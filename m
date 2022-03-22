Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA4F5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 10:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmdb/ixOmf1LzEABFgBDIJehJ5tcQFgm8zLQ1NjRvRo=; b=HDo8jF7RkTvRPG
	e2je/cb/Y6iuKWHipkuygWcZ3E5hY9WRHMwrMfFVuyYJJJUMp4mqyB78U5wXlxM3kQPA9ALuLPkGQ
	vvtU894nqqFxR1Jww74neeP8fwbtCRHh5UZKpRxwEiSDUlWT8mV1ONbmtTavUEU4P2s4EozOnRxco
	im3dwqfOI/06yO9n1iUgXaM85CGgTioq8+5NcqxjbR/JJzogNCybWc96JS3E1oCNUGmhm2Wm8c+HF
	hXMv86M9atdGFQuct+rk9JcbYpa7aWD1jQBPUJ4YKnGmknWd7t/BpPYF/kGiGdsGPEwcShWzuTdCY
	V1e90xChW0vd7QV7WWKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWbTj-00AgOf-Ph; Tue, 22 Mar 2022 10:11:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWbTh-00AgOM-HS
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 10:11:03 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E8CD29DE;
 Tue, 22 Mar 2022 11:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647943860;
 bh=jhOjXgr7UjDxRa31qbVXrKIbnaHfF09GzvEZrySRYpE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m/tesoxdJm3wADkRIHfxnNxZZdwGx/1HvZQyg//ddrWSOoMDy+W+6pn+4Esef3hik
 BST2FaFKJd/KJyrVWbnoYOSXQlhe5kAVLnHwZ0vPQFMhwpaSg7jtVodieAoSVY9Zoi
 k8QH7RnTIdfAoJKemJdpy6TEAfDI1PKnHZ/XKTKA=
Date: Tue, 22 Mar 2022 12:10:43 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 16/17] media: rkisp1: debug: Move resizer register
 dump to debugfs
Message-ID: <Yjmgo5YbLdQv8Nb/@pendragon.ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-17-laurent.pinchart@ideasonboard.com>
 <20220322052818.f7seus7fd5qdtl6p@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322052818.f7seus7fd5qdtl6p@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_031101_778841_FDA1CE91 
X-CRM114-Status: GOOD (  21.24  )
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

Hi Dafna,

On Tue, Mar 22, 2022 at 07:28:18AM +0200, Dafna Hirschfeld wrote:
> On 19.03.2022 18:30, Laurent Pinchart wrote:
> > The debugfs support already includes support to dump core and ISP
> > registers. Move the resizer register dump there too to make the
> > userspace interface consistent.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 48 +++++++++++++++++++
> >  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 37 --------------
> >  2 files changed, 48 insertions(+), 37 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > index 97be529a74e8..c89779daf319 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > @@ -81,6 +81,50 @@ static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
> >  
> > +#define RKISP1_DEBUG_RSZ_REG_DEC(name) { \
> > +	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, false \
> > +}
> > +
> > +#define RKISP1_DEBUG_RSZ_REG_HEX(name) { \
> > +	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, true \
> > +}
> > +
> > +static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> > +{
> > +	static const struct {
> > +		u32 reg;
> > +		u32 shadow;
> > +		const char * const name;
> > +		bool hex;
> > +	} registers[] = {
> > +		RKISP1_DEBUG_RSZ_REG_HEX(RSZ_CTRL),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HY),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCB),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCR),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VY),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VC),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HY),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HC),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VY),
> > +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VC),
> > +		{ /* Sentinel */ },
> > +	};
> > +
> > +	struct rkisp1_resizer *rsz = m->private;
> > +	typeof(registers[0]) *reg;
> > +	u32 val, shd;
> > +
> Why here we don't call the pm_runtime_get_if_in_use ?
> 
> > +	for (reg = registers; reg->name; ++reg) {
> > +		val = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->reg);
> > +		shd = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->shadow);
> > +		seq_printf(m, reg->hex ? "%14s: 0x%08x/0x%08x\n" : "%14s: %u/%u\n",
> > +			   reg->name, val, shd);
> > +	}
> > +
> > +	return 0;
> > +}
> > +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
> > +
> >  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
> >  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
> >  
> > @@ -168,6 +212,10 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> >  			    &rkisp1_debug_dump_core_regs_fops);
> >  	debugfs_create_file("isp", 0444, regs_dir, rkisp1,
> >  			    &rkisp1_debug_dump_isp_regs_fops);
> > +	debugfs_create_file("mrsz", 0444, regs_dir, &rkisp1->resizer_devs[0],
> > +			    &rkisp1_debug_dump_rsz_regs_fops);
> > +	debugfs_create_file("srsz", 0444, regs_dir, &rkisp1->resizer_devs[1],
> > +			    &rkisp1_debug_dump_rsz_regs_fops);
> 
> s/resizer_devs[0]/resizer_devs[RKISP1_MAINPATH]/
> s/resizer_devs[1]/resizer_devs[RKISP1_SELFPATH]/

Good point, will fix.

> >  }
> >  
> >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > index ac1b357a2a3a..1c07985c810d 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > @@ -203,41 +203,6 @@ static void rkisp1_dcrop_config(struct rkisp1_resizer *rsz)
> >   * Resizer hw configs
> >   */
> >  
> > -static void rkisp1_rsz_dump_regs(struct rkisp1_resizer *rsz)
> > -{
> > -	dev_dbg(rsz->rkisp1->dev,
> > -		"RSZ_CTRL 0x%08x/0x%08x\n"
> > -		"RSZ_SCALE_HY %d/%d\n"
> > -		"RSZ_SCALE_HCB %d/%d\n"
> > -		"RSZ_SCALE_HCR %d/%d\n"
> > -		"RSZ_SCALE_VY %d/%d\n"
> > -		"RSZ_SCALE_VC %d/%d\n"
> > -		"RSZ_PHASE_HY %d/%d\n"
> > -		"RSZ_PHASE_HC %d/%d\n"
> > -		"RSZ_PHASE_VY %d/%d\n"
> > -		"RSZ_PHASE_VC %d/%d\n",
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY_SHD),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC),
> > -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC_SHD));
> > -}
> > -
> >  static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
> >  				     enum rkisp1_shadow_regs_when when)
> >  {
> > @@ -386,8 +351,6 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >  
> >  	/* set values in the hw */
> >  	rkisp1_rsz_config_regs(rsz, &sink_y, &sink_c, &src_y, &src_c, when);
> > -
> > -	rkisp1_rsz_dump_regs(rsz);
> >  }
> >  
> >  /* ----------------------------------------------------------------------------

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
