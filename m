Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37FCCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 10:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxxyNCsMpqEX1iBiW7OKwp5QALypPGsjFtL6p7JIJXM=; b=G6P9uwhYZSCG6P
	k52xj0KrOpMXF+szs9LuwKgZpp9kpLb5m7lT8NGGb4MDFv7VLb94zWFYQ0KfdNtMCxc6WEVNEcvER
	E3hut3Vs9110MTVCFXIppmSykRcdwdhNeyiNtFNSgU2wZ4wsPxpX5+eLgOEYWZQZT4XSNICxAYdEt
	t1F0aEOQ/UO8sBX48JMoaV5qZaVZY6qx0XJMMG2FXtrSg1qFJRp9L7H+OsaKHinLPqKh5MHjFokwx
	Rymv1isRbmrv2N96XGhkwMbau0/P/TLhPezEfAAspvJYteNBFAqdIJDr1h3nRtJzhvngdLVMIW/a1
	5v6EJCGRj6B1nf2f4Urg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt3pU-00ERUt-1j;
	Wed, 18 Oct 2023 10:31:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt3pR-00ERTa-0Z;
	Wed, 18 Oct 2023 10:31:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A5F4616CB;
	Wed, 18 Oct 2023 10:31:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18A5CC433C7;
	Wed, 18 Oct 2023 10:31:00 +0000 (UTC)
Message-ID: <7e3a9531-f48d-4ba6-b1ba-5c44c8e9bd98@xs4all.nl>
Date: Wed, 18 Oct 2023 12:31:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 36/56] media: nuvoton: Stop direct calls to queue
 num_buffers field
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Joseph Liu <kwliu@nuvoton.com>, Marvin Lin <kflin@nuvoton.com>
References: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
 <20231017144756.34719-37-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20231017144756.34719-37-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_033105_255078_8662B038 
X-CRM114-Status: GOOD (  14.34  )
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

On 17/10/2023 16:47, Benjamin Gaignard wrote:
> Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
> This allows us to change how the number of buffers is computed in the
> futur.

futur -> future

This is probably spelled wrong in other places, please check!

Regards,

	Hans

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> CC: Joseph Liu <kwliu@nuvoton.com>
> CC: Marvin Lin <kflin@nuvoton.com>
> ---
>  drivers/media/platform/nuvoton/npcm-video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/nuvoton/npcm-video.c b/drivers/media/platform/nuvoton/npcm-video.c
> index b9e6782f59b4..f9b4e36a5175 100644
> --- a/drivers/media/platform/nuvoton/npcm-video.c
> +++ b/drivers/media/platform/nuvoton/npcm-video.c
> @@ -393,7 +393,7 @@ static void npcm_video_free_diff_table(struct npcm_video *video)
>  	struct rect_list *tmp;
>  	unsigned int i;
>  
> -	for (i = 0; i < video->queue.num_buffers; i++) {
> +	for (i = 0; i < vb2_get_num_buffers(&video->queue); i++) {
>  		head = &video->list[i];
>  		list_for_each_safe(pos, nx, head) {
>  			tmp = list_entry(pos, struct rect_list, list);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
