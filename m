Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94EAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 19:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJcI2Bpp+Js8uPcf6Ndgtj2zwziblo4HmoUBunHuKJo=; b=xqNNjU39/S+YWL
	x7PGoy/Sq8pigKzmbCHjboPZvxJVPkFnuIy/D0AoeYeRVHAl4o2+keTpzzqtX4om6w7ukoBVRo+8j
	LMyFU+gieR494wUwF3NQS/InwYfi8RwZI4RDpGqkQU1BkgTid0sjRsg+Qc87X0/JjfP43H6wDo1YJ
	sEN2KDyUr1wlQJArwfnf0abkQ3xEDHNVnInqZAN77KllEw3BbYdc3hFqX6YrV1SgdRWWKjBWjpkDF
	sMlOfIxy01KATJFXJMXaqxGP4SOC/B4eUvnziKyPaeDVELmTXPz/Gr1ah7OblNORI9iWzMkBbqNaW
	csjIw2EFp7fe/8tXtN7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj41M-00B1xs-Rw; Mon, 25 Apr 2022 19:05:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj41J-00B1x6-EM
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 19:05:15 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 91ACD496;
 Mon, 25 Apr 2022 21:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650913511;
 bh=brv8uvar2hDXmnnSF8W8qT0Sm4xD7jV1+a9oWEQBAa8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L2rhVhab2ZLrzNrfdu8qNxcFRGRmRkbVvu/B4wGUEtrkgXwDKTPRNvKaa1cCAPlIe
 1hhSpDe4CmtN1OLF5M7TohGF1as1lwfui29b7kNj8dE3lei2kFPhIxqO1MBsdlswGl
 M/ODSQ2RCcpuOhHs4HRJhm5Z5IoTmELXtdDTMn80=
Date: Mon, 25 Apr 2022 22:05:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 18/21] media: rkisp1: debug: Compute max register
 length name dynamically
Message-ID: <Ymbw52EF+Pcvkclz@pendragon.ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-19-laurent.pinchart@ideasonboard.com>
 <YmaK5XHQbKkfH6uR@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmaK5XHQbKkfH6uR@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_120513_674230_D9F553A0 
X-CRM114-Status: GOOD (  21.68  )
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

Hi Ricardo,

On Mon, Apr 25, 2022 at 01:49:57PM +0200, Ricardo Ribalda wrote:
> Laurent Pinchart wrote:
> 
> > Don't hardcode the register name maximum length (used for alignment
> > purposes) to 14, but compute it dynamically. The small performance
> > impact isn't an issue as this is debugging code.
> 
> Not sure if we want this. Different files will have different alignment,
> which will look ugly if we cat them.

That's a good point. I wrote this patch to avoid maintaining the maximum
register name length manually, but I'm fine moving it to a macro instead
if that's preferred. It's debug code, so I don't mind much.

> Besides that, the code looks correct.
>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> 
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++------
> >  1 file changed, 15 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > index 2c226f20f525..28a69323cb38 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > @@ -11,8 +11,10 @@
> >  #include <linux/debugfs.h>
> >  #include <linux/delay.h>
> >  #include <linux/device.h>
> > +#include <linux/minmax.h>
> >  #include <linux/pm_runtime.h>
> >  #include <linux/seq_file.h>
> > +#include <linux/string.h>
> >  
> >  #include "rkisp1-common.h"
> >  #include "rkisp1-regs.h"
> > @@ -32,22 +34,29 @@ static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
> >  				  struct seq_file *m, unsigned int offset,
> >  				  const struct rkisp1_debug_register *regs)
> >  {
> > +	const struct rkisp1_debug_register *reg;
> > +	int width = 0;
> >  	u32 val, shd;
> >  	int ret;
> >  
> > +	for (reg = regs; reg->name; ++reg)
> > +		width = max_t(int, width, strlen(reg->name));
> > +
> > +	width += 1;
> > +
> >  	ret = pm_runtime_get_if_in_use(rkisp1->dev);
> >  	if (ret <= 0)
> >  		return ret ? : -ENODATA;
> >  
> > -	for ( ; regs->name; ++regs) {
> > -		val = rkisp1_read(rkisp1, offset + regs->reg);
> > +	for (reg = regs; reg->name; ++reg) {
> > +		val = rkisp1_read(rkisp1, offset + reg->reg);
> >  
> > -		if (regs->shd) {
> > -			shd = rkisp1_read(rkisp1, offset + regs->shd);
> > -			seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
> > +		if (reg->shd) {
> > +			shd = rkisp1_read(rkisp1, offset + reg->shd);
> > +			seq_printf(m, "%*s: 0x%08x/0x%08x\n", width, reg->name,
> >  				   val, shd);
> >  		} else {
> > -			seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> > +			seq_printf(m, "%*s: 0x%08x\n", width, reg->name, val);
> >  		}
> >  	}
> >  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
