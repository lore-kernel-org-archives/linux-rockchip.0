Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09809C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:09:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD7E360FEE
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:09:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD7E360FEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h8dnNbAINujg3AVo+k5qM4Pj/KMMWHsfAVodUIVRlx8=; b=dT5hBd2z8L1eI2mAfd5wERObM
	MuTndxIZ15gvNYVPjfQ9ABIHTIirtlAfSeUWe2VMFZdSI2X4RFomb7BHf8e0OgRHBNOWKJ2KffVdF
	EzIE3ACNikEJNtGmTfD0idmSNpXChVrXFIHjB2Bv3YTDel1ZsAAve1p1Ze6kJYR28N4xwGH0aYvuD
	ww0JfIqPKDKP34dhO+c+ubDsGGwzPhk0+eXDG0upbLImSKwFqOSKy7vXsnfIiUpE+Sf1gJoVIOVQD
	IWHTgfSN4gOEWrn87o1aM2WrJj5yx4tjpgV1hr1zcjG5AXglNe9hPiWDUS9SRCqxV5MOGUHXBVdJB
	xZiaK+/Vg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbPKm-001oRO-Jk; Tue, 27 Apr 2021 15:09:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPKk-001oR9-HR
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 15:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=WiznRvM3skE5RK1pckSvfA2FgwOfCLZe0htEPOFcMMg=; b=Wocs61Z8V4dByWGsGzecz/Lwe0
 s9XMUSHtlOg+rWoenrS9AJvb0NhehPh2jxlVWzS9yhVe0cNg3Wq6Oj6z+sDUuz9iPs31WaXlTle1S
 GDnfKTSmMX4ToE1jR6U7d7ZoCNHiqTpyRw/RMabu96f9pGMGm+YTgsxLsfkCoM/JN/XrP7lg15Uj1
 bc10jZPligJluz7SBcxgJjTc0ztId3tg2/5NSMqz2OG3MDiE58nNoyuExuDN5kf2Jq5T6jZ2J2i4P
 Cyev3D7ylxkOqLtAtmXwtXTmEq/cYHhgFRPdpBJQBLwSyUuWzhCPAt2+Ogp1BZ9hNaRuTahtCdlUV
 PjBIG5QQ==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPKe-00GoNQ-94
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 15:09:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B288931B;
 Tue, 27 Apr 2021 08:08:54 -0700 (PDT)
Received: from [10.57.61.101] (unknown [10.57.61.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 053013F73B;
 Tue, 27 Apr 2021 08:08:52 -0700 (PDT)
Subject: Re: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
Date: Tue, 27 Apr 2021 16:08:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_080900_374514_61270F49 
X-CRM114-Status: GOOD (  21.20  )
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

On 2021-04-27 11:27, Mauro Carvalho Chehab wrote:
> Despite other *_get()/*_put() functions, where usage count is
> incremented only if not errors, the pm_runtime_get_sync() has
> a different behavior, incrementing the counter *even* on
> errors.
> 
> That's an error prone behavior, as people often forget to
> decrement the usage counter.
> 
> However, the hantro driver depends on this behavior, as it
> will decrement the usage_count unconditionally at the m2m
> job finish time, which makes sense.
> 
> So, intead of using the pm_runtime_resume_and_get() that
> would decrement the counter on error, keep the current
> API, but add a documentation explaining the rationale for
> keep using pm_runtime_get_sync().
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>   drivers/staging/media/hantro/hantro_drv.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 595e82a82728..96f940c1c85c 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -155,6 +155,13 @@ static void device_run(void *priv)
>   	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
>   	if (ret)
>   		goto err_cancel_job;

..except this can also cause the same pm_runtime_put_autosuspend() call 
without even reaching the "matching" get below, so rather than some kind 
of cleverness it seems more like it's just broken :/

Robin.

> +
> +	/*
> +	 * The pm_runtime_get_sync() will increment dev->power.usage_count,
> +	 * even on errors. That's the expected behavior here, since the
> +	 * hantro_job_finish() function at the error handling code
> +	 * will internally call pm_runtime_put_autosuspend().
> +	 */
>   	ret = pm_runtime_get_sync(ctx->dev->dev);
>   	if (ret < 0)
>   		goto err_cancel_job;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
