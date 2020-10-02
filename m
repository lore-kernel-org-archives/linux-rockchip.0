Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610A7C4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 19:27:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4E4E206DD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 19:27:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="M0hUoza3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="BjBgaPnP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4E4E206DD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9z+C/a+TukTQMHWHO5eGEnV/MzfCyzOF/zkPiXegY4M=; b=M0hUoza3nDVxtUbofh1cDXIFz
	Nj2yYOEX97D+HkhKZcnWOujFFsotYNEqVHpQhcOOtrZKOsdPEv3BwDynDfmGWDOtU8Lmp7qmcwIGu
	X/xSrjy9BDrdWRusZZj6I8jWiyVGRkEzv/t73Cf5iFUUMWJzmY57bl9LE161HMwwDFLNPEzw9DhFs
	DojQeYOTjaJXGjQK3KlqrAagtA/uA/z0Kp4JNqGB9SS+p1ifS6scL/JRCcjzm65rtMvMuHYvo0YoR
	j874GbVtMxqt2uKbnmgKCL48ojEnfw9i0hnrAye80QdvPtsavN0LxAz3aWHP2SKnkz+y0YV96oZUh
	XGGQOmJ0w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQiE-0001lI-DO; Fri, 02 Oct 2020 19:27:26 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQiB-0001jg-WA
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 19:27:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DE3182A2;
 Fri,  2 Oct 2020 21:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1601666840;
 bh=cmo0Ui1cTTW5EkjJwBRgGy1Vl56HrIU+LdP8JmauseA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BjBgaPnPJyIaTs+wz7WtnLDui0MLxxrZM6ZF8UO25bOFwPMR5nDWibSs/6mMVdDxd
 heYHOGcI43BpV6eEFYcd9B3xWOyOdUMx5HnogX1qIDFjPl9BXyh3pPo/rXVgdatauO
 W0zgOie5NllnmKhbLVYDBoD60gkRzPqT8AvHYKpg=
Date: Fri, 2 Oct 2020 22:26:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 6/6] media: staging: rkisp1: cap: add warning when link
 validation fails
Message-ID: <20201002192642.GG3933@pendragon.ideasonboard.com>
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
 <20201002184222.7094-7-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002184222.7094-7-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_152724_141947_DB502A82 
X-CRM114-Status: GOOD (  14.66  )
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
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Fri, Oct 02, 2020 at 08:42:22PM +0200, Dafna Hirschfeld wrote:
> The link validation between the capture and resizer might
> fail because of various reasons. Add an informative warning
> to make it easier to debug.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 9b4a12e13f13..75321280ebf0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1269,8 +1269,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  
>  	if (sd_fmt.format.height != cap->pix.fmt.height ||
>  	    sd_fmt.format.width != cap->pix.fmt.width ||
> -	    sd_fmt.format.code != fmt->mbus)
> +	    sd_fmt.format.code != fmt->mbus) {
> +		dev_warn(cap->rkisp1->dev,

I'd make this dev_dbg().

> +			 "%s: failed for '%s' sd:cap: height %u:%u, width %u:%u mbus: 0x%x:0x%x\n",
> +			 __func__,
> +			 cap->vnode.vdev.name,
> +			 sd_fmt.format.height, cap->pix.fmt.height,
> +			 sd_fmt.format.width, cap->pix.fmt.width,
> +			 sd_fmt.format.code, fmt->mbus);
>  		return -EPIPE;
> +	}
>  
>  	return 0;
>  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
