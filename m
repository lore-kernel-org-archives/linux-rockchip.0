Return-Path: <SRS0=l1tV=KI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2371CC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 23:13:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6662961363
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 23:13:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6662961363
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4XRKBLEtW0OAvmfJatSs7LakDrirOGvPoa4vUUpxChA=; b=KPty6BG9zdl2XqHzOob/G17uh
	KANwAT9yxZsvm66Z4K2YuMhCZ6oPNNbLn/BNe4Bwwv42Fkft2q0pgVwZtqywujoY2phrfmEwJZpBk
	jHOq0v4SrrarYDdyZKytbODvrvRzWs+l+yiPgSA/E2po96Hz4HUO7H3m4We5hZLgMVIP2+NYb3Qw9
	2XWub1y+K5ZH3xec9KbyP9TAm6GnEw4/sRQXOwkvbDDifW2g/F26ryusXnunl+6TYEanGMYCg9wi1
	4sVsl+SL11t4p0EwGHQsiiq6jkzK1OQkwpB8Hhm98zvstkWIjemx58ywAMV5BBgNDU0eBcoyQSK/0
	V5bLbWm0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhKW2-006ddQ-CA; Thu, 13 May 2021 23:13:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhJyh-006ZUh-M0; Thu, 13 May 2021 22:38:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=b/rHE0NLap/lUWhIyBmllnHKxmTDn/jJ8PfC/MpkJws=; b=kqS+7BjqmTO8H4n6twvF/bc9dg
 MmA31Mo86RWxn2WAIXZKlpJcgRd2QMRPYY4YpgpS+/02pXr+HYGdnCKp8F6Ukb26ThMaV9DZFYVeK
 f4YGAQd53nKB5xViOKZRSgy0/jRbCMxbauCRhLD9WscbLhr5IdXUKwlS7XMvaS9XQye0twL1/xqAz
 H85CR7xsTxvfpvbbTBrOVxW9t83RcFsV+PZlrEK5HShTgZdZ6k9revWozLcIzLzzCQOWNSeVGG5Jk
 iFd7zJV1JSVVFjAbWtifyOoYvFdY8JUBFEOt2SbaON9gRFeJAXY/1NKpqY80DrS2v5rzTrCBGDZJf
 p1ueQ90g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhJye-00BZuV-F3; Thu, 13 May 2021 22:38:46 +0000
Received: from p5b127fd3.dip0.t-ipconnect.de ([91.18.127.211]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhJyU-0007NB-NC; Fri, 14 May 2021 00:38:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 07/25] media: rockchip/rga: use
 pm_runtime_resume_and_get()
Date: Fri, 14 May 2021 00:38:34 +0200
Message-ID: <14678575.uLZWGnKmhe@phil>
In-Reply-To: <ce18a4f9ca1bdcf4c68e77eaa410ec03a6ec8fe2.1620314616.git.mchehab+huawei@kernel.org>
References: <cover.1620314616.git.mchehab+huawei@kernel.org>
 <ce18a4f9ca1bdcf4c68e77eaa410ec03a6ec8fe2.1620314616.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_153844_511485_1AB71614 
X-CRM114-Status: GOOD (  19.56  )
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

Am Donnerstag, 6. Mai 2021, 17:25:45 CEST schrieb Mauro Carvalho Chehab:
> Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> added pm_runtime_resume_and_get() in order to automatically handle
> dev->power.usage_count decrement on errors.
> 
> Use the new API, in order to cleanup the error check logic.
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/media/platform/rockchip/rga/rga-buf.c | 3 +--
>  drivers/media/platform/rockchip/rga/rga.c     | 4 +++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
> index bf9a75b75083..81508ed5abf3 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -79,9 +79,8 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
>  	struct rockchip_rga *rga = ctx->rga;
>  	int ret;
>  
> -	ret = pm_runtime_get_sync(rga->dev);
> +	ret = pm_runtime_resume_and_get(rga->dev);
>  	if (ret < 0) {
> -		pm_runtime_put_noidle(rga->dev);
>  		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
>  		return ret;
>  	}

looks ok

> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 9d122429706e..bf3fd71ec3af 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -866,7 +866,9 @@ static int rga_probe(struct platform_device *pdev)
>  		goto unreg_video_dev;
>  	}
>  
> -	pm_runtime_get_sync(rga->dev);
> +	ret = pm_runtime_resume_and_get(rga->dev);
> +	if (ret < 0)
> +		goto unreg_video_dev;
>  
>  	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
>  	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;

hmm, the whole error handling in rga_probe looks fishy to my untrained eyes.

But I guess the easiest will be to apply your patch first and then
investigate and clean up the non-matching alloc - releae calls, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
