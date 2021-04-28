Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AB4C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 15:09:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB540613EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 15:09:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB540613EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r2RFGs6bqZ9OSTAKbrxidgo/u0DMpDMGhEp3aoHffRU=; b=Qt8EFYHsWA5YQ37dKzVm30ap0
	FaPXAiLXiPLWWNqnm6MFcKHrkEX+pQKbA4OVA4PAmJ9XC1LidNirQziTjSbO5WVsw939td11yYkHn
	ev0fi0JQ7KpqGBquYxnmy7cbjVsDnp1/tTRLvaHtsYUOsPo9AsajCYzVp5wAqRzti5YanZjiJI5yr
	LVgZ9ofEpiAD+B95d56yAHkC/qhRKCXs0Wn4wcTaM60+JphrYjkld+RGH1THEoorpJeYet6JzivX5
	I97SIgpOKzZ5W08DI+Qqf0nMUhOXxlLxO14ae1NJ4869BwULo9kbXD+LkBRap8x6g69are9PvI3jI
	fUuzPVRsw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbloy-003jjl-NO; Wed, 28 Apr 2021 15:09:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblow-003jjX-RU
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 15:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mcujNgUz7EG5MXyzzIZRGf7QFG6GdievyArO1g7mu1w=; b=3kcfm+dIFi0kZ/maxrklwLXjCt
 X0GGjpBsgmoMFm8yjJDmPs7VoHaKoJOJulphJupdOxH014JG7/07p54ZNCn1AmmVFJiLsdwFK8rWh
 hu5DXHI4qgMTie2OfDzyZ/0uLzZeBT5q1hyA3B6fH+y4QiCs5TRGQwfVMqkLX9g7e+Yzx+MyV+tTc
 ZCHaqItjscvZLRvudSoFv97k6IDjdCzYzdv7fdmocAT0mNc6590n0EyYWRz6fsImYlcZo8+PbxhBb
 unwhs7GN5KJI7W0ethlwycRVPZHLMr2QGET8BEBTovYsCJVS62TYWHmCYLIb7O3GCxeT3YRAp1QvQ
 W0qLak9g==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblou-00HXHG-9r
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 15:09:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DFC66141F;
 Wed, 28 Apr 2021 15:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619622583;
 bh=PivjCQ4OHe6j9i0UuVSGYTIEpWQw6cOVC+IdTduVEbQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ooui2sOIBvLuR0c2/kuF0MWZedMGpMAdwIOJ8bNGmvmzwPP3wHB+GBvjMxfCMbu9D
 UCQ6Dxvhd2DvzHnP4qJiU5QYzHYMxxAXs6+ZCxCBfj0q0bgNqC9YO0SWD+zIXlYM56
 1nQILdxPjC9imI/qwv/wRCiklBSL+UwjUdGUybK0SFofBiD0Qqeh3iIlyFoGlyOkKy
 J/XVsPdoKT1sNTULA7k/72zyJyTOdWsjkhar1dtyx+Z6QfDHqF/+o+CRN9dldyFshf
 LJtRXuvzDOFrY99tRjlH4HEyDbYc3/F7YoqsXVWrCA3Xz+PRnr4xcs51gShIbqgKsB
 nKaQNkEG8Aw/w==
Received: from johan by xi with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lblp7-00052P-6X; Wed, 28 Apr 2021 17:09:57 +0200
Date: Wed, 28 Apr 2021 17:09:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH v4 20/79] staging: media: rkvdec: fix
 pm_runtime_get_sync() usage count
Message-ID: <YIl6xZegj9o5m8EF@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_080944_407580_9B3EA637 
X-CRM114-Status: GOOD (  16.14  )
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

On Wed, Apr 28, 2021 at 04:51:41PM +0200, Mauro Carvalho Chehab wrote:
> The pm_runtime_get_sync() internally increments the
> dev->power.usage_count without decrementing it, even on errors.
> Replace it by the new pm_runtime_resume_and_get(), introduced by:
> commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> in order to properly decrement the usage counter and avoid memory
> leaks.

Again, there is no memory leak here either. Just a potential PM usage
counter leak.

> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index d821661d30f3..8c17615f3a7a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
>  	if (WARN_ON(!desc))
>  		return;
>  
> -	ret = pm_runtime_get_sync(rkvdec->dev);
> +	ret = pm_runtime_resume_and_get(rkvdec->dev);
>  	if (ret < 0) {
>  		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
>  		return;

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
