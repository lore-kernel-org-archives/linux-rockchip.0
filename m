Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78C6BC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkywTRMDE9MM/ZAT+0wCm9W9y+Q3tXdk8jvLW8DGlpY=; b=BIFi2QSNbYoufp
	cdgeyLABio603TrS33XY2Uwx2IPuxO2mgFU29CzSJHXOkTQB5ndH9n6HjTabiMnJRyY3/aCtLRb7h
	QmjlqwvAH49yE0nKTDf3yI1Ct9Ig9H1i+Zt1Uc7mUot/WSy0v3GYcrAHXJb9X7BA2neA+OgAl5CJN
	TjEWW6/wfQ2Lugw/8ZDkZzGEKoS4JUEluJdjWRIgOn+x/zQEOPQPbjGym8Uq86Gn+A9CsUJrIZAGH
	Q8JBIU1ym01QpoiqUtYCNKGadb50NwQZSucJ+os7miQJ79skD1asVkpzgy45g12SpRRLQI3DyjZPO
	f1m3+7tZb4veGczTMfHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjn8-006M73-NY; Mon, 13 Mar 2023 15:08:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjn2-006M4U-I5
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:08:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 24280612AE;
	Mon, 13 Mar 2023 15:08:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71DDC433D2;
	Mon, 13 Mar 2023 15:08:41 +0000 (UTC)
Message-ID: <43b48f87-2343-5855-e6c2-8f30319687c5@xs4all.nl>
Date: Mon, 13 Mar 2023 16:08:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_remove
 due to race condition
Content-Language: en-US
To: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 hackerzheng666@gmail.com, 1395428693sheep@gmail.com, alex000young@gmail.com
References: <20230307154157.1184826-1-zyytlz.wz@163.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230307154157.1184826-1-zyytlz.wz@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_080844_717178_5F635366 
X-CRM114-Status: GOOD (  21.41  )
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

On 07/03/2023 16:41, Zheng Wang wrote:
> In hantro_probe, vpu->watchdog_work is bound with
> hantro_watchdog. Then hantro_end_prepare_run may
> be called to start the work.
> 
> If we close the file or remove the module which will
> call hantro_release and hantro_remove to make cleanup,
> there may be a unfinished work. The possible sequence
> is as follows, which will cause a typical UAF bug.
> 
> The same thing will happen in hantro_release, and use
> ctx after freeing it.
> 
> Fix it by canceling the work before cleanup in hantro_release.
> 
> CPU0                  CPU1
> 
>                     |hantro_watchdog
> hantro_remove     |
>   v4l2_m2m_release  |
>     kfree(m2m_dev); |
>                     |
>                     | v4l2_m2m_get_curr_priv
>                     |   m2m_dev->curr_ctx //use
> 
> Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index b0aeedae7b65..80bd856a4da9 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -1099,6 +1099,7 @@ static int hantro_remove(struct platform_device *pdev)
>  
>  	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
>  
> +	cancel_delayed_work(&vpu->watchdog_work);

Use cancel_delayed_work_sync(): that ensures the code waits for a running
watchdog function to finish.

Ditto for the other patch.

Regards,

	Hans

>  	media_device_unregister(&vpu->mdev);
>  	hantro_remove_dec_func(vpu);
>  	hantro_remove_enc_func(vpu);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
