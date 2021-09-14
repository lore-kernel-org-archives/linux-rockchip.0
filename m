Return-Path: <SRS0=UDvA=OE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 067AEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 04:15:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FC786103B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 04:15:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5FC786103B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cXFmrXwFRcMXQKI+RoCoxbuKqKYFBfi3UstiLNqQqck=; b=wVaqu7wmMUrK93HU97YpALgEm+
	mocg5OvM7o4gp4cl94ZdS06v57xHPllsGTS80bq93FtUAoiSSsX87vC2Un5zvcbSleL5beFfMnYda
	P7dnkVhHuYkZu6EL6WatFVpJxIonOdbmCTAI/xO1ZNPLwx+JyQKj2+nzOHGguI3/qLgr5LQxu+TbZ
	dXGNexn2Eg6Gri2eIZF5uJN69/4ow4UYLFgVU6UFzXrD/ULehqUod8d2fL15XWjH+w7LtpGs1zP2i
	D4wB+wEMf4YMKmkZjMmTbMQ6xhubadGzvRZF7oY0K9koRtk964lxbUdCdxdR68x3pRPz7n+INvAzh
	DRcwqc4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPzr1-0049qE-PY; Tue, 14 Sep 2021 04:15:31 +0000
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPzqz-0049pw-Pq; Tue, 14 Sep 2021 04:15:29 +0000
Subject: Re: [PATCH] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused
 warning
To: Palmer Dabbelt <palmer@dabbelt.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-team@android.com, Palmer Dabbelt <palmerdabbelt@google.com>
References: <20210115074043.2944-1-palmer@dabbelt.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <36ff9f69-2c77-90ca-e2b5-f237f94a95a0@infradead.org>
Date: Mon, 13 Sep 2021 21:15:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210115074043.2944-1-palmer@dabbelt.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 1/14/21 11:40 PM, Palmer Dabbelt wrote:
> From: Palmer Dabbelt <palmerdabbelt@google.com>
> 
> cdn_dp_resume is only used under PM_SLEEP, and now that it's static an
> unused function warning is triggered undner !PM_SLEEP.  This
> conditionally enables the function to avoid the warning.
> 
> Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>   drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index a4a45daf93f2..063a60d213ba 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -1121,6 +1121,7 @@ static int cdn_dp_suspend(struct device *dev)
>   	return ret;
>   }
>   
> +#ifdef CONFIG_PM_SLEEP
>   static int cdn_dp_resume(struct device *dev)
>   {
>   	struct cdn_dp_device *dp = dev_get_drvdata(dev);
> @@ -1133,6 +1134,7 @@ static int cdn_dp_resume(struct device *dev)
>   
>   	return 0;
>   }
> +#endif
>   
>   static int cdn_dp_probe(struct platform_device *pdev)
>   {
> 

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested


Is someone going to merge this patch from January?

thanks.
-- 
~Randy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
