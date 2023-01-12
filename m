Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D146C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 14:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPX2Cx9BozswEdUfSvUS2VSQ3ZUHHACNroD0YekfhqE=; b=xqT9eBVj8e9dB9
	NxYqOJGUFFkN97Six+4Mbe8Aldjt3J4NPOn8qOMclcrJq0IFeL8VQmkX/BNMneF2p2mB6zEyTe7ma
	WiDyTEkJbCE/OuXl2zpdOngD84LAne14bLjFXRwjPBRb0Hk1NqBcAN+pRvnwuvwrh0AnBwAzeE3Zp
	j30xKGOzy9FFP5wlVxOLAC0jRYURRW5gja9LClckJEjEbcBAa5ukoPIfFxzSGAzI4x9BCuG6K7Hul
	VhS0L+ndb+zFmqJw+sOfH/Fh5TXe0j5MKhEchP9ygMjMW4BBrIjYxPU/bcbHK5a6lF5elwr/SNf5s
	FIdC7ULEaGSvvx7rPYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyzI-00FUFl-Nl; Thu, 12 Jan 2023 14:55:28 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyzF-00FUEK-4Y
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 14:55:26 +0000
Received: by mail-lf1-x129.google.com with SMTP id d30so23882415lfv.8
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 06:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eVbemLweSFtIyStHy3sTEbPBu0/XrJNey3w3MbOOwEE=;
        b=ttXHb70rHqfCHVOXsf6Q5SH1fqRM+CaHYdV4Tqag+Er5QQiTg0y1+Wwg4Lq6Icz8gk
         07i9ZLd/4+zAk4eYIHRoIOn3cakEH9OrLhtM4IBNH+83PyySuj8LBD/SySlLt3ixgQaM
         HNv24AlUoYpaTKgZGYTqIGfYKQ7Xdvcpjthr21TzD2BxPttH9lZZxXs1+klT64JNwILS
         woxLHVoX26DOx1pxijJOZllJliT9/OwUkXzUBSArrCH5WrF2ppYUXt4ZJF1sLIO7HyOb
         wdG2WRVMc/aByObJ3YGG+mqAavghifEazNoGYj6xE35Z200zToR0Nl9VQIyx22iGsGoo
         tHjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eVbemLweSFtIyStHy3sTEbPBu0/XrJNey3w3MbOOwEE=;
        b=DcpsgV+WhZdQZhm6o8bE2LXQcT9ixGqa/aApMufSkiyHSgyPJ9MHzolGmKYxuAS8+T
         0rxwhveNM41eNW4AUE3r+I6tJH9ZtXknSRFILDKGqxzBslbafhTapKYWtERbB0UOOtbM
         tVdrJMLuv6PCvRmyn08xubewBMX1H/IrSwiq5SmuY1k5AF0Hi6pWOx1/x0yzhmlRFO5I
         jhP2MYpThndDVjN02H0hXiTabE/hYP6f0FZpsM9DBre2A0nda9qGDE3BzYujA4y2QRgt
         yVehHLOZ4bSqJC8LusHRmoprv1+V5FQzE+r3qpq5SPFKdt0Yd0foB+0FIImua4vOrL39
         Vn0Q==
X-Gm-Message-State: AFqh2kqWN8qMc6igqdF1vWkbRTbCgiwPm3itKBVOx56a1uaUMOYFMZrY
	t43b6u5Vpb3JDMK5S9MngyiJVUC5WgC/0AKoOlZlKg==
X-Google-Smtp-Source: AMrXdXt+v1FWLQNKkH6B+Roo5NSENxZFIjpoigv8VLgU4hO/6DIdLqekSCezf+AaI9MGINFaBKiRdOxPUMcZG4OlTuk=
X-Received: by 2002:a05:6512:388e:b0:4ca:f6a4:455a with SMTP id
 n14-20020a056512388e00b004caf6a4455amr6689684lft.321.1673535319553; Thu, 12
 Jan 2023 06:55:19 -0800 (PST)
MIME-Version: 1.0
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com> <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 12 Jan 2023 11:55:07 -0300
Message-ID: <CAAEAJfBuA=gTpyeKs5mj0_1z+x5sZhse2OGPP5nmb5E6XNjBKw@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] staging: media: rkvdec: Block start streaming
 until both queues run
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Collabora Kernel-domain <kernel@collabora.com>, Robert Beckett <bob.beckett@collabora.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_065525_184440_65A5278B 
X-CRM114-Status: GOOD (  22.42  )
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

Hi Sebastian,

On Thu, Jan 12, 2023 at 9:56 AM Sebastian Fricke
<sebastian.fricke@collabora.com> wrote:
>
> Ensure that both the CAPTURE and the OUTPUT queue are running (e.g. busy
> -> have buffers allocated) before starting the actual streaming process.
>

Usually, you want to write the "why" in the commit description,
instead of the "what",
which is (hopefully) more or less clear by reading the commit change.

The commit description should have enough information to understand
what is the impact of merging the commit (or what is the bug without
the merging the commit).

If you are fixing a spec violation, adding a reference to the spec is important,
if you are fixing a v4l2-compliance, pasting the error, etc.

> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index c849f6c20279..e0e95d06e216 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -562,6 +562,13 @@ static int rkvdec_start_streaming(struct vb2_queue *q, unsigned int count)
>         if (V4L2_TYPE_IS_CAPTURE(q->type))
>                 return 0;
>
> +       /*
> +        * Make sure that both the output and the capture queue are running
> +        */
> +       if (rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) == 0 ||
> +           rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) == 0)
> +               return -EAGAIN;
> +

IIRC, this is already handled by Videobuf2 core, see the comment for
vb2_start_streaming,
in drivers/media/common/videobuf2/videobuf2-core.c. There's also a
!q->num_buffers check
in vb2_core_streamon.

In general, if you see some kind of bug in a generic logic like this,
it's a red flag that something is wrong at the core level.

Thanks!
Ezequiel

>         desc = ctx->coded_fmt_desc;
>         if (WARN_ON(!desc))
>                 return -EINVAL;
>
> --
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
