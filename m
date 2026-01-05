Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AADFC2A09A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 11:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cc9E/zsoaqxB5kAKExYNcKJgB/35ZyHYrcAa8fD3tk=; b=SiqroDSDZ/4IZ3
	GJC0QrbyQGvthkSqvISpg90unEvaUAh94ourPTzg/lMebIwV9w3/1cogNtT5YZJax8fPYWvm8iRxn
	m8ZPehGT7ctaNo5v4HNmhpL+avdWiccT5Kz32jSlJy17AqHtwZnEr1nLUeeIUFZJ9rIHAYmEfCjwa
	c6sNuSyn8yZy+F5wZsZGTGvaoO23ewkr25P//SPir0u3XJH5Au1/lyjgA8/WNv+88SYBv8Tj8SuGZ
	YM0fesKUwKKfPk6dOWjHxqOPRHCLZWs8/ZvCuuwpvPC7tG09bv9hcyIpEnl5EwVBbnlh7xCP/ipk2
	BwbpA0/p/HOFtqU1Kqcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcimI-0000000BC1v-0Iln;
	Mon, 05 Jan 2026 11:29:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcimE-0000000BC1C-30WE;
	Mon, 05 Jan 2026 11:29:35 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 15C42664;
	Mon,  5 Jan 2026 12:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1767612550;
	bh=iISwdZtvnnraV/VMYYVj79jvGkuZPTBqF1C6SfCyOhY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=EzzMb8HOeneWwzjW6sYtITaQ8Sg50f2HmArAmxA9vGADkwgV6rGLYbY4Aps7IK0Ys
	 qdJMpeVTgDso/wLf6WaCRV6v3Uylym63LK83uGB9IhtwGTE6E+6Vvc5YbsbEn0WI1L
	 L90b+d9rvoArIvwQYmg3m+NbAijw4cYgT/Na4k7k=
MIME-Version: 1.0
In-Reply-To: <176465775606.135635.13034018447792643478@localhost>
References: <20251202015025.601549-1-rui.wang@ideasonboard.com> <20251202015025.601549-2-rui.wang@ideasonboard.com> <176465775606.135635.13034018447792643478@localhost>
Subject: Re: [PATCH v1 1/1] media: rkisp1: Fix filter mode register configuration
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: libcamera-devel@lists.libcamera.org, Rui Wang <rui.wang@ideasonboard.com>
To: Rui Wang <rui.wang@ideasonboard.com>, Stefan Klug <stefan.klug@ideasonboard.com>, dafna@fastmail.com, heiko@sntech.de, laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mchehab@kernel.org
Date: Mon, 05 Jan 2026 11:29:27 +0000
Message-ID: <176761256763.3192372.8001486757502337420@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032934_897653_2CA8F730 
X-CRM114-Status: GOOD (  19.86  )
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

Quoting Stefan Klug (2025-12-02 06:42:36)
> Hi Rui,
> 
> Thank you for the patch.
> 
> Quoting Rui Wang (2025-12-02 02:50:25)
> > The rkisp1_flt_config() function performs an initial direct write to
> > RKISP1_CIF_ISP_FILT_MODE without including the RKISP1_CIF_ISP_FLT_ENA
> > bit, which clears the filter enable bit in the hardware.
> 
> That sentence is a bit hard for me to understand. Maybe:
> 
> "The rkisp1_flt_config() function overwrites RKISP1_CIF_ISP_FILT_MODE
> without preserving the RKISP1_CIF_ISP_FLT_ENA bit thereby unconditionally
> disabling the hardware block on reconfiguration.


Stefan's proposal sounds good here.


Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> 
> But as I'm no native speaker you could maybe wait for feedback from a
> native speaker.
> 
> Functionality wise the change is correct.
> 
> Reviewed-by: Stefan Klug <stefan.klug@ideasonboard.com>
> 
> Best regards,
> Stefan
> 
> > 
> > The subsequent read/modify/write sequence then reads back the register
> > with the enable bit already cleared and cannot restore it, resulting in
> > the filter being inadvertently disabled.
> > 
> > Remove the redundant direct write. The read/modify/write sequence alone
> > correctly preserves the existing enable bit state while updating the
> > DNR mode and filter configuration bits.
> > 
> > Signed-off-by: Rui Wang <rui.wang@ideasonboard.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 6 ------
> >  1 file changed, 6 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index c9f88635224c..6442436a5e42 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -411,12 +411,6 @@ static void rkisp1_flt_config(struct rkisp1_params *params,
> >         rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_LUM_WEIGHT,
> >                      arg->lum_weight);
> >  
> > -       rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE,
> > -                    (arg->mode ? RKISP1_CIF_ISP_FLT_MODE_DNR : 0) |
> > -                    RKISP1_CIF_ISP_FLT_CHROMA_V_MODE(arg->chr_v_mode) |
> > -                    RKISP1_CIF_ISP_FLT_CHROMA_H_MODE(arg->chr_h_mode) |
> > -                    RKISP1_CIF_ISP_FLT_GREEN_STAGE1(arg->grn_stage1));
> > -
> >         /* avoid to override the old enable value */
> >         filt_mode = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE);
> >         filt_mode &= RKISP1_CIF_ISP_FLT_ENA;
> > -- 
> > 2.43.0
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
