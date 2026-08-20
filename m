Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9D58C5DF86
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 21:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QgL2x3r9qTHFSEUlPICF1WUkEkLqPGtdriLogezrPc=; b=l/wr2IMCLh15dU
	bb/6EakmSXLTO3CBWoA1QSuNe33HSZ+kxKS0KwVpyvM6WhKoM6D39tesLF89CRogfkZXK8Yg6MhFN
	Zd1a8g5tfiP+ads8qffUBddzfby8tlDhFIUA/qdPZahNfeIwcaoDNNjLLyUAHLezsFKXMpjsNcseM
	HONNhNajGGIlSKT1jjKpDDpngl1Tl7mcpfWZgmfgPBrA0YzVFAzlI001ym9eirpKor6St3Qeo6mWq
	YxSmxlHmMTi1LbGSgovfRFFLVI/B9z/X8GCFQ7cqF+wlQ0Ty71OOQOaQYoZyU0xygnBm/DehDeqyO
	KwD95RILSysodnzVcZoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxA7j-0000000CCSi-0koQ;
	Thu, 20 Aug 2026 21:16:31 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxA7g-0000000CCRw-1eCn
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 21:16:29 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c197e7e4e94so54972766b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 14:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787260586; x=1787865386; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5kA3ZZhBTSElNS8aKZBmn/3V+poXJbKTYV5bqqaHIws=;
        b=E8mcGXvaR4HRygoFpc8p6dt5lg1ImwcWBL6/jZ1f1IVaVZLVnqk0iiOxDA215084rM
         TAbrxSYmUAij9fNHJsTf0ds+lf6cf5y6HKq/b/ITgIDPp7qyEhe3xxFauZydCCroc++G
         KVMK5f1U9bsppn0kqLOljhzMQ1GqKO+1STdQtkkLmGlJo9o9FVzTgB+zJVFf7AqI5oEz
         7do8+zl3Vzmgo7k3MCJF+4GYDfEYdMTWlRQysuV91QiiIK2OaMTJ81gBbtVuKgQ5PzFX
         Gr9myFy39KzmCYcmjYtaVvbcfrbxh3e2JT59svYgkk/IgjiDtix20/prIH52qnyHUa/b
         gkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787260586; x=1787865386;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5kA3ZZhBTSElNS8aKZBmn/3V+poXJbKTYV5bqqaHIws=;
        b=eLdCOJs+fcHrfA7ddyu4vMA/ugA0FEWfGcRTk6vWu/2M07Ct3LErkoLErtQEx7mnBC
         NQiAmAIJKQnps5eTdLPs747t81BX7bnYkxxikcL0O4ZRw4QM+6lgLzIlzR8mo9suNHlE
         gv5mY9y1+eWACd7TG+s/ZTZe0tyh1Zr7pvlHfSDYQyeGOGPGBDlVR1GT01b9C1H9ZPBN
         H1dY2orbH+ydm9QRO7ATc244Mze32T5lBJ9n1AtlTOJpgWRvZCwIUQL1kx2j2CMle1hE
         Xe0isKOnGTKAk/j4MSRM+C6uHDJpZ0RwnEyqypHWkAJQPqTe2jIXnoA4P7hBf9kiuXyk
         sK1A==
X-Forwarded-Encrypted: i=1; AHgh+RpHTsy5e+0JTItsQwekBFbPslxTPJcMzNCM931fYmCygUeozih2E/zUVTTbVXiVfxVe2TO5pwgz7iyfVcTnAA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyK/Bd/jfbH8A/DnjXKRq0ZNC5MW3WMYwMuHCYz58gAwbXu+pik
	0aeGP4Mf+ywO4yaDaI/qpyB6dAm0sB/2XAND8InSqq0o3583yrrj04gTUm46Ew==
X-Gm-Gg: AR+sD10XnkzQDyELNG6NpgkeUhS6OF0WfzYsTfxNQOIeaV90p9M6HGt4vPIViwKsXoH
	gqob9i3A+xd51QlHeffIU2GVHG5Uk2CAhlCD485k1w8Hegjll7D7nnHjcj5rmlDv4msYV+F/psa
	lCSQ9iZK9DD5fPDKCxKUVgni3u2r/mYC8whV8PcUqfzbgpIEKj49x3vdPQ278NZdXX/6kyO6S/t
	ewAYdF59bNMFA0XbG77RJjEZh4m1Bzy7EpkDwVcHIdh1ycJaiL+AS6bA6Q+Y6jbl07ptt8QiKKO
	Ni7Z33MpLl3YLOiWPL4Y1FzY2D0axx1c4DfI8OgVzAbDU3xz6JWYjRFhQwyeTJqLaeQAKiBghVC
	lFg9X2vn/P1PlGm0QTzwFNzvUsRpHr/g9BxP1bdnjAUM+b8uYj/Mm9DXVbeY2mG8hviR390T3R5
	Xk7+iaerKBcU9TSesN90BvWds52Dc65chUpOdgKXhyqHBkkD/PCvr5+cunuBfTyux+wcbuf1BIZ
	9i4C6iepcb/6ARzluVqtYrxbb+thGFBiamv
X-Received: by 2002:a17:907:80e:b0:c1c:4a80:30c4 with SMTP id a640c23a62f3a-c246a6055bdmr133567066b.11.1787260585986;
        Thu, 20 Aug 2026 14:16:25 -0700 (PDT)
Received: from michalis-linux (adsl-75.176.58.251.tellas.gr. [176.58.251.75])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2458b07504sm148630566b.15.2026.08.20.14.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 14:16:25 -0700 (PDT)
Date: Fri, 21 Aug 2026 00:16:23 +0300
From: Michail Tatas <michail.tatas@gmail.com>
To: Frank Li <Frank.li@oss.nxp.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: verisilicon: rockchip: Fix leaks in init
Message-ID: <aodup3TleCfdxcF3@michalis-linux>
References: <aoV3LLy5hSoKL4QP@michalis-linux>
 <aoXgSKnkbWZVKRui@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aoXgSKnkbWZVKRui@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_141628_438933_76566C9F 
X-CRM114-Status: GOOD (  25.25  )
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

On Wed, Aug 19, 2026 at 12:56:40PM -0400, Frank Li wrote:
> On Wed, Aug 19, 2026 at 12:28:12PM +0300, Michail Tatas wrote:
> > if one of the dma_alloc_coherent in the init fucntion fails then
> > the previously allocated ones leak.
> >
> > Fix by freeing them in the error path.
> >
> > Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
> > Signed-off-by: Michail Tatas <michail.tatas@gmail.com>
> > ---
> >  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 68 +++++++++++++++----
> >  1 file changed, 55 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> > index e4e21ad37323..fa77fd402412 100644
> > --- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> > +++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> > @@ -369,6 +369,7 @@ void rockchip_vpu981_av1_dec_exit(struct hantro_ctx *ctx)
> >
> >  int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
> >  {
> > +	int ret = 0;
> >  	struct hantro_dev *vpu = ctx->dev;
> >  	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
> >
> > @@ -377,39 +378,54 @@ int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
> >  	av1_dec->global_model.cpu = dma_alloc_coherent(vpu->dev, GLOBAL_MODEL_SIZE,
> >  						       &av1_dec->global_model.dma,
> >  						       GFP_KERNEL);
> > -	if (!av1_dec->global_model.cpu)
> > -		return -ENOMEM;
> > +	if (!av1_dec->global_model.cpu) {
> > +		ret = -ENOMEM;
> > +		goto global_model_cpu_err;
> > +	}
> > +
> >  	av1_dec->global_model.size = GLOBAL_MODEL_SIZE;
> >
> >  	av1_dec->tile_info.cpu = dma_alloc_coherent(vpu->dev, AV1_TILE_INFO_SIZE,
> >  						    &av1_dec->tile_info.dma,
> >  						    GFP_KERNEL);
> > -	if (!av1_dec->tile_info.cpu)
> > -		return -ENOMEM;
> > +	if (!av1_dec->tile_info.cpu) {
> > +		ret = -ENOMEM;
> > +		goto tile_info_cpu_err;
> > +	}
> > +
> 
> This function is called by hantro_probe() if I am correct
> 
> there are dmam_alloc_coherent(), use dmam_alloc_coherent() will simple
> error handle and tear down.
> 
> Frank

Hello Frank,

I did not know about the dmam* functions thanks for letting me know.
I read some of the docs about them and they seem to not apply to
this particular case since this code is not called from the probe
function but rather the hantro_start_streaming function. Since
dmam_alloc_coherent() only releases memory at device removal,
it wouldn't free them when the stream ends and a new stream would
re-allocate while the old buffers lingered until detach.
So I think manual dma_free_coherent() error path is the correct
fit here.

Best regards,
Michail

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
