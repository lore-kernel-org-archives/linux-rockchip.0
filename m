Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A64EEC54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz/9tD1mub2M/u/77kJ+RmV86HNOp7RmG9vYP4EUPqw=; b=xvonNZR9cvRikm
	ZN4cLh9GP3m+YFmWqxi5DQ/xcbZ7L0WsW4FtctJTkrCdLcMCn9/mEPUqWMCjJuVWcwiRnunTpEB+z
	4FZ56bi/OI34b/u1gMV79pua86/hao8WjELgvyYEM1iLSH3qGvgzMgQ3HYoH3szfTogsFv+dYn3dJ
	jFI7kMd5nVpdip4Ohznnmm5v42TCjedsPaFCHT2dAi/DfMo8S/yNgwW4l7anL1IcyiAqcE+Ht10MS
	ENIovejWW9mMyCBROiNu/Oeq3qOiqotKJ+uoicj+MsMgLeDsjacY3YQJuC9mD7KSQx7XKhF2MxOzE
	Y2hN9x/7S9zqg+4IZ7Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJDR-00000003EVs-0Xir;
	Thu, 21 Mar 2024 14:16:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJDO-00000003EV2-2cGh
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 14:16:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0BAF5611A9;
	Thu, 21 Mar 2024 14:16:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59432C433F1;
	Thu, 21 Mar 2024 14:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711030577;
	bh=P2zV7GBm6lZnqd1GyySXrz0bEM2Hy/g25qCyixz2gNc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fW9dH7BMmIevERikyWGHcZmsIbOXQ9fjWzyoXErKCIDVVF3sZz35Q38spMoqCGUPQ
	 V6P5o6VLXr2LR0+3xT7Zl28eqHrz2DGjZ46KY2QXwvVHG6u/LkgyfMWiLngP6GTIWV
	 vhijr0O3NijoGph47oDIOt9ggTLUtlWPLV1DHGs4CvryZ+CRti4C5ePTr/jsSiCKBz
	 a/Vahj2Z7pQJturGtGRJbE+80oBoxYEZ124/29P2RcDW8gMZp+lHutGUYTUYVFXu9K
	 PbCxcp5y9ZJhB7KwEkACyDXDqMroHv0rq6MDAt+pLUBVqoD1bGVyToKyAT8ink4lxH
	 GtDTJckgKsd5g==
Date: Thu, 21 Mar 2024 15:16:12 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 9/9] media: verisilicon: Support removing buffers on
 capture queue
Message-ID: <20240321151612.42de52a5@coco.lan>
In-Reply-To: <20240314153226.197445-10-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
	<20240314153226.197445-10-benjamin.gaignard@collabora.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_071618_832594_365D35B0 
X-CRM114-Status: GOOD (  11.24  )
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

Em Thu, 14 Mar 2024 16:32:26 +0100
Benjamin Gaignard <benjamin.gaignard@collabora.com> escreveu:

> Allow to remove buffers on capture queue because it the one which
> own the decoded buffers. After a dynamic resolution change lot of
> them could remain allocated but won't be used anymore so deleting
> them save memory.


LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 941fa23c211a..df6f2536263b 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -756,6 +756,7 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
>  	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
>  	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
> +	.vidioc_remove_bufs = v4l2_m2m_ioctl_remove_bufs,
>  	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
>  
>  	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
