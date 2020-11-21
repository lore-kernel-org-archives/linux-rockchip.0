Return-Path: <SRS0=eBH9=E3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 049D4C388F9
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2020 23:47:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3472120575
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2020 23:47:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tWjuTIpt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3472120575
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=jic23.retrosnub.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EUTWCQwcjJX+z4GcMFZ+phYl2PHpj4CQisT9IMDIReo=; b=tWjuTIpt3rVJKE/vmSzIMtYLv
	x9IAsdRh2Afy4/9ofIX/OGPOd34j+0F64kBuBC1b0guEj5oVJg6ExqAAnUz4ueKaO7Ffmgbn1JyCw
	gaF6jlWA2pqNNTPDF/zcsGQDa1uHTr2F9Fub0cRn+OcQcCSYc/5/dSi5Ao2YfzNm6z6QHoPQL0I4F
	dZ0GEvgP8Xm5kEHzbl3uJXFe/hFCiJwEsS+bNwSY9mH8lDZHVYrLSPtSNiAcy4qS6cjIGrtnXV7GW
	yTv/ZIRy8z5DHmQAAJHIFqwRRVJDjwiKETODg5hhvc6sRzTozHZ+a5EGhfNvT696dGizZEa4vAtje
	bGZSgLqAw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kgcbc-0007MA-Sz; Sat, 21 Nov 2020 23:47:48 +0000
Received: from saturn.retrosnub.co.uk ([2a00:1098:86::1:1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kgcbX-0007Jr-Jx; Sat, 21 Nov 2020 23:47:44 +0000
Received: from archlinux (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87]) by saturn.retrosnub.co.uk (Postfix;
 Retrosnub mail submission) with ESMTPSA id 44EAF9E0076; 
 Sat, 21 Nov 2020 16:39:21 +0000 (GMT)
Date: Sat, 21 Nov 2020 16:39:19 +0000
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
To: Qinglang Miao <miaoqinglang@huawei.com>
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: fix missing
 clk_disable_unprepare() on error in rockchip_saradc_resume
Message-ID: <20201121163919.2fcb9e71@archlinux>
In-Reply-To: <20201108154128.57f4162f@archlinux>
References: <20201103120743.110662-1-miaoqinglang@huawei.com>
 <20201108154128.57f4162f@archlinux>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201121_184743_775435_F2673BBB 
X-CRM114-Status: GOOD (  22.24  )
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
Cc: Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 8 Nov 2020 15:41:28 +0000
Jonathan Cameron <jic23@kernel.org> wrote:

> On Tue, 3 Nov 2020 20:07:43 +0800
> Qinglang Miao <miaoqinglang@huawei.com> wrote:
> 
> > Fix the missing clk_disable_unprepare() of info->pclk
> > before return from rockchip_saradc_resume in the error
> > handling case when fails to prepare and enable info->clk.
> > 
> > Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
> > Suggested-by:Robin Murphy <robin.murphy@arm.com>
> > Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>  
> 
> Looks good to me.  I'll just give it a little longer on the list so Heiko
> and others have a chance to sanity check it.
> 
Applied to the fixes-togreg branch of iio.git and marked for stable.

Thanks,

Jonathan

> Thanks,
> 
> Jonathan
> 
> > ---
> > v2: remove useless braces because early return is pointless.
> > 
> >  drivers/iio/adc/rockchip_saradc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> > index 1f3d7d639..12584f163 100644
> > --- a/drivers/iio/adc/rockchip_saradc.c
> > +++ b/drivers/iio/adc/rockchip_saradc.c
> > @@ -462,7 +462,7 @@ static int rockchip_saradc_resume(struct device *dev)
> >  
> >  	ret = clk_prepare_enable(info->clk);
> >  	if (ret)
> > -		return ret;
> > +		clk_disable_unprepare(info->pclk);
> >  
> >  	return ret;
> >  }  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
