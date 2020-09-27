Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18444C4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:43:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAF4E23899
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:43:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HiesIjVK";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7QCBm7r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AAF4E23899
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bEWWyQEmO40WBT8xTCvk9vrH/jUtRIAmxsSNZHsF2ig=; b=HiesIjVK0RhzEd3PdsQ2ebpF5
	SV687G04Yn92vS3p63z4RlXTKXITgT5LuUVwNgb2v1PJCE0Ss+qOIExhDMMGYMweQdDzlHAM+BlXk
	lmdD2e7/HBHDvz+64cgaS01tL29HY/sepbI3gQ8v+LzW/mby8SJ2SN0Z5g5jQpQ8+ahlBM4bNJ9be
	6QWDufOb5Xf8KOqS/GTUjM9E10uU0aa4+duzhXIWiHpQVhX1pz0tP+9UmPnZv39L6ZJQWjhqTy0A+
	kEn1YE1wAAyE7jbHOnc/o5mt/6k+HrVgZUDbSDOPNM1P/dra/MhIKxPaN08KZIxAHjv3lIpULPVI/
	+e8XbGV3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMTDT-000764-Mj; Sun, 27 Sep 2020 09:43:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMTDR-00075a-BY
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 09:43:34 +0000
Received: from coco.lan (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D855423899;
 Sun, 27 Sep 2020 09:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601199812;
 bh=yO4LD++4ZyeaPoWRoDVXFsYHuJ8jBIt8Yey5f9snHfc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t7QCBm7r7VbXKNiFCkhgXu5hNfCwYL7tBF5GpUMqAtdVTbvI9ssVyBN+/Ya9LDKr9
 B2t76OgLRtQhFLqkNBuIpVjWKCM+bY+yqz3MRLMLc2vEJhqwn2GUF8Ppk/I7YUotsX
 +gRM7B+Tb+PMj+jw22r6ige5CQ5HTSSPgHNA64nM=
Date: Sun, 27 Sep 2020 11:43:26 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 helen.koike@collabora.com, hverkuil@xs4all.nl
Subject: Re: [PATCH v3 12/12] media: staging: rkisp1: cap: protect access to
 buf with the spin lock
Message-ID: <20200927114326.7446d970@coco.lan>
In-Reply-To: <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_054333_587487_AB46973F 
X-CRM114-Status: GOOD (  19.11  )
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
Cc: dafna3@gmail.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Em Tue, 22 Sep 2020 13:34:02 +0200
Dafna Hirschfeld <dafna.hirschfeld@collabora.com> escreveu:

> The function 'rkisp1_stream_start' calls 'rkisp1_set_next_buf'
> which access the buffers, so the call should be protected by
> taking the cap->buf.lock.
> After this patch, all locks are reviewed and commented so remove
> the TODO item "review and comment every lock"
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/TODO             | 1 -
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 ++
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> index f0c90d1c86a8..9662e9b51c7f 100644
> --- a/drivers/staging/media/rkisp1/TODO
> +++ b/drivers/staging/media/rkisp1/TODO
> @@ -1,6 +1,5 @@
>  * Fix pad format size for statistics and parameters entities.
>  * Fix checkpatch errors.
> -* Review and comment every lock
>  * Handle quantization
>  * streaming paths (mainpath and selfpath) check if the other path is streaming
>  in several places of the code, review this, specially that it doesn't seem it


FYI,

There was a trivial context conflict here. Basically, the upstream
version has this:


	 * Add uapi docs. Remember to add documentation of how quantization is handled.

I solved the conflict, but as some patches for rkisp1 got merged
on a different pull request, and there were some uapi docs at the
other PR, maybe this would need to be revisited.

Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
