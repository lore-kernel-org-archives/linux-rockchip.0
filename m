Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22631C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:13:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 18BC823A57
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:13:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 18BC823A57
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iXQQ2wpo+uks6caNHbU1QgOv50736/u2ga40zmhkG6Y=; b=oTnaoQw2HDJuZ+PXu1wlWgXyY
	HPYRc8zQabFggLlaqAuMt8Os9fBMbOft8N+qdqmysl5E+203CJR45QxeCXC9Dk02ryJ9BTpJgvuid
	6MaGjwoWwBB6E7TXZCBNC3SCK1zJV40NGAfQ9HGI9h2zusP4hnms8ARg0xCXe4td2syz98cFicz6U
	HFBm1zcoaHqabGKbyfX/GqTUCKJxxTv2qvwcZaj7hhcijlPYzo4NkLC+fv3HN6/M/Ndu7tVUnA26e
	BicWHIo6KRrhCDHlTmZoD0pHS3l8JmmxrZAnUCc9sHebUw5nXkhAWy4zbkFhFC+ieTMU8xWbINtSP
	tZspFuuRQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2dWK-00013Z-6u; Thu, 21 Jan 2021 17:13:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2dWH-000121-6n
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 17:13:18 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l2dVf-0005Fz-F8; Thu, 21 Jan 2021 18:12:39 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 hverkuil@xs4all.nl, sakari.ailus@linux.intel.com,
 Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 4/6] media: rockchip: rkisp1: reduce number of
 histogram grid elements in uapi
Date: Thu, 21 Jan 2021 18:12:38 +0100
Message-ID: <2974513.zE8UqtGg2D@diego>
In-Reply-To: <c9d0ac1b-2cb7-a5b6-aa97-1510c44404c1@collabora.com>
References: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
 <20210121144407.9045-5-dafna.hirschfeld@collabora.com>
 <c9d0ac1b-2cb7-a5b6-aa97-1510c44404c1@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_121317_287078_5BD42113 
X-CRM114-Status: GOOD (  23.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Helen,

Am Donnerstag, 21. Januar 2021, 18:04:49 CET schrieb Helen Koike:
> Hi Dafna,
> 
> On 1/21/21 11:44 AM, Dafna Hirschfeld wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > The uapi right now specifies an array size of 28 but the actual number
> > of elements is only 25 with the last 3 being unused.
> > 
> > Reduce the array size to the correct number of elements and change
> > the params code to iterate the array 25 times.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 3 ++-
> >  include/uapi/linux/rkisp1-config.h                     | 3 +--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index 6af4d551ffb5..021939466b24 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -589,7 +589,6 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
> >  		RKISP1_CIF_ISP_HIST_WEIGHT_22TO03,
> >  		RKISP1_CIF_ISP_HIST_WEIGHT_13TO43,
> >  		RKISP1_CIF_ISP_HIST_WEIGHT_04TO34,
> > -		RKISP1_CIF_ISP_HIST_WEIGHT_44,
> >  	};
> >  	const u8 *weight;
> >  	unsigned int i;
> > @@ -622,6 +621,8 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
> >  							    weight[2],
> >  							    weight[3]),
> >  				 hist_weight_regs[i]);
> > +
> > +	rkisp1_write(params->rkisp1, weight[0] & 0x1F, RKISP1_CIF_ISP_HIST_WEIGHT_44);
> 
> I just noticed that the default value to arg->hist_weight was:
> 
> 	memset(hst.hist_weight, 0x01, sizeof(hst.hist_weight));
> 
> Shouldn't the value be RKISP1_CIF_ISP_HIST_WEIGHT_SET(weight[0], 0x01, 0x01, 0x01) ?
> Or am I missing something?

The last register only has that one value from weight[24];

I.e. before we were writing the 4 values into that last register as well
from indices 24, 25, 26, 27 ... hence the 3 unused values in the weight array.

But that was merely a crutch to make that fit into the write loop.


Heiko


> >  }
> >  
> >  static void
> > diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> > index 24f05d6d258f..35aa82d5f6dd 100644
> > --- a/include/uapi/linux/rkisp1-config.h
> > +++ b/include/uapi/linux/rkisp1-config.h
> > @@ -102,8 +102,7 @@
> >  /*
> >   * Histogram calculation
> >   */
> > -/* Last 3 values unused. */
> > -#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
> > +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 25
> >  
> >  /*
> >   * Defect Pixel Cluster Correction
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
