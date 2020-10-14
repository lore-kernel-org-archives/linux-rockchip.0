Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62614C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:28:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E677A20757
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:28:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LyE9yaY3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E677A20757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3qUzqAY/Z+n1CRGatgak+b4d9vQWsJv10q91RA96jpI=; b=LyE9yaY3soTV9qDE6Wi1mHzzQ
	VIrRHdQUzItapwaJ83zFixZ53NAmAtv6Fq7vo0tz9vEentrN1bkVwURtP30/GI3GaZsh3dlWZ3hj0
	hzEYFlS35Uuj7l1DegxaUu47yjQFZERf3Vltj7Hxrj0RDZtImjqbi9lVQgS7+NWEBtvkNRuV6YZGz
	bzodNtF26Bno4/Pb9kO5Cb73BgTKAuKwPvxwtZFa32R94ZOfhB9X8RKpSSUWFjNu7SsztkKjBzJvE
	q4JEbE8ShxPMvftG339JfQaGDbV+SeTleeHRsbS6N7lN4rxv29PxT1rPQgPEBrPh6755Hbk98osuM
	NCfuChGuA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSnNK-00007S-NA; Wed, 14 Oct 2020 20:27:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSnNH-00006m-Q6
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 20:27:52 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8BE331F4582E;
 Wed, 14 Oct 2020 21:27:47 +0100 (BST)
Subject: Re: [PATCH 2/6] media: staging: rkisp1: params: in stop_streaming,
 use list_splice_init to move the buffers
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
 <20201002184222.7094-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <e32bfefb-7b0c-669c-32da-8b407216d936@collabora.com>
Date: Wed, 14 Oct 2020 17:27:43 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201002184222.7094-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_162752_012606_60D51DA2 
X-CRM114-Status: GOOD (  17.24  )
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
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 10/2/20 3:42 PM, Dafna Hirschfeld wrote:
> Currently the code uses 'list_cut_position' to move the
> buffers to a temporary list. Replace it with
> 'list_splice_init'. This is nicer since we don't need
> to access params.prev. Also, replace INIT_LIST_HEAD
> with the simpler LIST_HEAD.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 986d293201e6..cb9f3332a9a0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1462,9 +1462,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>  {
>  	struct rkisp1_params *params = vq->drv_priv;
>  	struct rkisp1_buffer *buf;
> -	struct list_head tmp_list;
> -
> -	INIT_LIST_HEAD(&tmp_list);
> +	LIST_HEAD(tmp_list);
>  
>  	/*
>  	 * we first move the buffers into a local list 'tmp_list'
> @@ -1473,7 +1471,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>  	 */
>  	spin_lock_irq(&params->config_lock);
>  	params->is_streaming = false;
> -	list_cut_position(&tmp_list, &params->params, params->params.prev);
> +	list_splice_init(&params->params, &tmp_list);
>  	spin_unlock_irq(&params->config_lock);
>  
>  	list_for_each_entry(buf, &tmp_list, queue)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
