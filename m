Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61870C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 19:08:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E62AA221E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 19:08:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CIZNpWju";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="As86tNB7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E62AA221E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aovQGHw8VgXCRhaEaMABceG9ucptdMIqgVKPMn0crXw=; b=CIZNpWju3z57rQBD1GOLUERqa
	JNiDjrp1LUpPYZz3ZZx+xdiZudZ2pHHKVrtoKD1VyIzubVdo5MEqGAyopByGJsC39yeBndhhWPiSU
	pEMQnRTjF7YNERrwLtfRXBiTzPZZiiSZCp7RVUxlGEfgZNBtb5yXPaMqFJZ4alyJQU2EWB4GGZFgC
	S3iclImSKR6y/CSgJtYnGhDWlWIArF1cDrwKH++qGZPfBw9xfr1ZFygV053Ytizgs0LZtUkQOxfp1
	5WzHVaBgy69gaQOnt0+pb46h2lNz3sJSmdIaYBbx1w51R+VZwbOKe/uPDDRAPHxI0lIve3CuBeyK5
	wuv6WMEGQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLt52-00008u-Eq; Fri, 25 Sep 2020 19:08:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLt50-00008H-9k
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 19:08:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id k15so4784112wrn.10
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 12:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c6zlXlVd+JLiTfma+AWCFjNmBf3A0tjHgrCNLmh+yZc=;
 b=As86tNB7hrTQ0igU5gdohTQ29hVlKGs0oW04GJsO55JJbRwhAr2VyTExOWYGt/pjNM
 nH1RMOwXWkdHwlNPeVE0gAMiDY8fLUN6I+UpEi0+TOLUSIeal1mZX/e+ZTlFHDhzqtfF
 H6RstrVLXEaEujNKqtfqv8P/BGWFZ7KghpRog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c6zlXlVd+JLiTfma+AWCFjNmBf3A0tjHgrCNLmh+yZc=;
 b=tK8cYmOIp17+LRhUbPYIX20p+bb7vR9wHpOB0CUFLM+fJZlhnrrlTb4r0PSvjGneEp
 GWAboOYkmqzq2cpjPfov4qj6OuOFMK1FomJfvLksSWbTW0lhuVOFSqRQKF/AiRBjWEUm
 tOGENOUQoSwVtnlTVBJhP9baF0+cTNe/p41YnsBeJ4Qkxp9FIVl+4DCKIspyeMCC29A7
 2BOJvWiFRm+0vTU31P3DZmWTNBDnZsSpfriuaOr8tQGXXFDDJZn8AXCPN1Cwe6eSfKoY
 rjI9dwZ9b0XWIegz+A9/60Vvhj4uMYbBoRjDZlUyDkvpt/jZBeEb1S2HwWV4LaRgJnuQ
 oIYw==
X-Gm-Message-State: AOAM530vF1QU46X5e2VHnlkuf9RGeh7pTAGbq+tT5Ht/1WKwzVqjtw5E
 MPqfj3rwIQ/2hKC8j9sEhmr8Hg==
X-Google-Smtp-Source: ABdhPJx6R5K6nXWi3K1eRsPvjyn05rKke7YVBSo2EWfQFwf0Z6B8FYXVJunS4hdZvCeiZLI0yzfh6g==
X-Received: by 2002:adf:8285:: with SMTP id 5mr5742667wrc.97.1601060904995;
 Fri, 25 Sep 2020 12:08:24 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id h2sm3963091wrp.69.2020.09.25.12.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 12:08:24 -0700 (PDT)
Date: Fri, 25 Sep 2020 19:08:23 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 01/12] media: staging: rkisp1: params: upon stream
 stop, iterate a local list to return the buffers
Message-ID: <20200925190823.GE3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_150826_438511_2DCB529A 
X-CRM114-Status: GOOD (  22.48  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Tue, Sep 22, 2020 at 01:33:51PM +0200, Dafna Hirschfeld wrote:
> The code in '.stop_streaming' callback releases and acquire the lock
> at each iteration when returning the buffers.
> Holding the lock disables interrupts so it should be minimized.
> To make the code cleaner and still minimize holding the lock,
> the buffer list is first moved to a local list and
> then can be iterated without the lock.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 31 +++++++-------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 3ca2afc51ead..85f3b340c3bf 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1469,32 +1469,23 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>  {
>  	struct rkisp1_params *params = vq->drv_priv;
>  	struct rkisp1_buffer *buf;
> +	struct list_head tmp_list;
>  	unsigned long flags;
> -	unsigned int i;
>  
> -	/* stop params input firstly */
> +	INIT_LIST_HEAD(&tmp_list);

nit: This could be done at declaration time by using the LIST_HEAD()
macro to declare the list head.

> +
> +	/*
> +	 * we first move the buffers into a local list 'tmp_list'
> +	 * and then we can iterate it and call vb2_buffer_done
> +	 * without holding the lock
> +	 */
>  	spin_lock_irqsave(&params->config_lock, flags);
>  	params->is_streaming = false;
> +	list_cut_position(&tmp_list, &params->params, params->params.prev);

nit: This is equivalent to list_splice_init(&params->params, &tmp_list);
with a simpler interface and without the need to dereference
params->params.prev manually.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
