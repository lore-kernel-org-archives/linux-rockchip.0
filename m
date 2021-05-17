Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5661DC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 08:31:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 159FA61242
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 08:31:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 159FA61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LXt3x4zaiAt06SVx+5g44mwvqdxM5n+E2fah21mGE6I=; b=O3cxuY0c3Vw7DI82vysx2zS75
	e+DM8s1KE8uenDKtgkawvxYeA9iuJnPy9BQDq9PVTx0V+QVQF5y9rgmKt4qfRrs+GFvgiCmVnZGrW
	8SUYUADRq7TtZg4YEYRClYZDnj1a+g6aU59mhNcGFKU29IIa4eA7JSFA4LGcqZ8SUBG6RYoc4wSAa
	bBUtUtF612LvJSI7plFQVcj4KNCAs6B6vBAzdE3oSoDrW6pi8V64LdQo56OxsaRxBvP3UpgVC745d
	zBj2HXGHVcHfMyaKK7zU4NFungTeNGuVpbaSELSPv2RT1qhZrQpU3nUJNVpsxDj6KHUUvUPwOmY+C
	vRWe78Xcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liYeg-00EFi2-Cv; Mon, 17 May 2021 08:31:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYVv-00EDQ4-4s
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 08:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=A8t3Gjnf87n9FGF4LRcGIG77AVaSPm906TAa2oK1ZWc=; b=tFEiUzqq6dSwyEn2eiy64g8haq
 km6VIezke3L/gNnmqrm6LS/0hMzIW9PaUzLUOvu372UrNaYPJnLxN6fvRV2s7tEjLJ19x3mq79bAK
 I8x2PC3fTbZj+sCxU/3MHCejO/+LbKH833nrt/l533KXpwutFaNF7z8ONJUWQy7x5ndlHFywm/nM+
 kkI5fvtAXRFrJSgLOIDyEtuCBN+jXThAjQAfw6cRuvRt5q0sW/weDzu8VV9qXrECQ0SMx2wMe380y
 w2P8VKw02EFSCmkf9ZSMLLfVfFjhqE2jlnSYkCT/Q6FFJI4bj62jsgZng962GgKQAtcr4kwtBExS5
 b46MOJIg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYVr-00DamF-Vt
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 08:22:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1809C610E9;
 Mon, 17 May 2021 08:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621239727;
 bh=58Gn/10SxvI87o4A0OIYhCYPlq3keF9eIzCKT5l+01I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KhpAhkz3DZddRWxXXVvH/v+9Xn4JgP8SP+a+oVVMzKmtwklGko8M3Er3WY10ODhKP
 84TSjvTai6Zc2PVvphxu7p01lHw9zvup4AuGepC1X0PCJz7LEBZrn5JhXJ32pu5HjF
 xov0tsTdNPVKmN9ftc1fJ2m6EQN2w9iWoVCXwxd71g6qMYQjSpYTHX5yX6umV5oWsI
 iXkWWVIf3DuwKO6nLi8VZ3wIseIK/j7o2piROKRzTNLXnjexmo0VzcFyCiMEx7Tv3P
 EesxKcvKJaW/AP4RPJ0geM5GQoJGot8i0oRSHTx/fOggXJP8N9xvYO/nSt13lSvSWj
 ytUTzNy3oVJkw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1liYVo-0003QV-2W; Mon, 17 May 2021 10:22:04 +0200
Date: Mon, 17 May 2021 10:22:04 +0200
From: Johan Hovold <johan@kernel.org>
To: Yu Kuai <yukuai3@huawei.com>
Cc: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, yi.zhang@huawei.com
Subject: Re: [PATCH] media: hantro: Fix PM reference leak in device_run()
Message-ID: <YKInrIMZYGI1VKdl@hovoldconsulting.com>
References: <20210517081516.1562794-1-yukuai3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517081516.1562794-1-yukuai3@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_012208_054485_E65BF955 
X-CRM114-Status: GOOD (  14.87  )
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

On Mon, May 17, 2021 at 04:15:16PM +0800, Yu Kuai wrote:
> pm_runtime_get_sync will increment pm usage counter even it failed.
> Forgetting to putting operation will result in reference leak here.
> Fix it by replacing it with pm_runtime_resume_and_get to keep usage
> counter balanced.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Yu Kuai <yukuai3@huawei.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index eea2009fa17b..7a6d3ef22096 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -160,7 +160,7 @@ static void device_run(void *priv)
>  	src = hantro_get_src_buf(ctx);
>  	dst = hantro_get_dst_buf(ctx);
>  
> -	ret = pm_runtime_get_sync(ctx->dev->dev);
> +	ret = pm_runtime_resume_and_get(ctx->dev->dev);
>  	if (ret < 0) {
>  		pm_runtime_put_noidle(ctx->dev->dev);

This is clearly broken as there is no PM usage count leak here.

Please try to understand the code you're changing before submitting any
more patches based on "robot" feedback.

>  		goto err_cancel_job;

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
