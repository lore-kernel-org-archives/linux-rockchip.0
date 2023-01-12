Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00694C54EBD
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfqdXl11ssATEkMqy8Et563GrjrsvoxHiZTtSyMhWvc=; b=oq+EAYuVdp7Vex
	pkOM8CrvE3LrvzdGWm6n72hQGaVpcL6NcxEvDx3yUkrT+lH1fRBFgJw/0oyX6sCKodr3qkyaOpOM2
	bE/gvXMqSY6Le9OCiNexcCiYIS1PNNZIuHH7DZI3fYY2IL4rjPVAOugwcXA1C3tScRykM6S9fSlxB
	luKN9BC9dvvFKHrmqf4AzqhyHQtr4n8suVr/XFCEluL2Y7cpCtNmnonZgYM6VDmEyC3SH7bilc9S1
	KI+8C2CbHyFRk5UFzHUKuFtj3wK0bMVpyelUeIFp0kFkSzC4WJcBjNeY3l3unkcm/Dw6NVp/DPhuI
	QjMoo+MWOxC92RR1OopA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz6N-00FW1k-7V; Thu, 12 Jan 2023 15:02:47 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz6L-00FW11-2c
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 15:02:46 +0000
Received: by mail-lf1-x12e.google.com with SMTP id b3so28838849lfv.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 07:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YHPdJqIq38+J4n8CN1cX0dFtD8Rvs4CgnEIDyi8KGdM=;
        b=Woe1qwgtFH7Jk41E81KSelxmDXOGMuHmgXn6VZV+usKWWZERy9NlA4O/8t7+hHGGfa
         OlkZmuSpKm0A+6UXmZ1n0aiH6yjGj0LhtVz+oEAbiGv1yqqIbsxD3VFJNPasbGrOv4p7
         dsZY2XqG+A5CDFFXfTx6enU6kcSjJxBuOLlv0Ct9+SCRrdkyZ5atqzmyZKv1xi/FfVTN
         uYfwCqASIh+xwjWvNiOU7vLc2yVt5yAgbt3kGH8DMmyfOniD5Shex3KPg9xbX6cV67pg
         WFqxIhzd2Ef6CB1DWOBq2aVPUq3P/NO9D0KVsn+bZY0a7wGfVOCsu8M8BomQd5KUSBM4
         dl9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHPdJqIq38+J4n8CN1cX0dFtD8Rvs4CgnEIDyi8KGdM=;
        b=o0iTjLwMg3iiGu+5wBl8HcRIXDVN6QBlcxNYrcW8nfPsfPgJv5JFMgpxCByO04bRPD
         Xsg/HbHXNsdM0VY5nHsSeM7xM0r2fYCsQgqST6iah1jK92UCcaK8qb2VUd9SQnQCglMq
         luKq080XfBWgBUE5XEaxbettHxOiAd0FRRN2jDsPLk4uMs7gG8I8CBuI/A6rdg3r8gUe
         Yd2njl2VDvvghm9WJO/iqBAvr9LslaGuL4QBlvjuqi8jErb2gK+M76ftV9DFLGg+VXIy
         nYugAp4ADEcCarduwXmjFUR7womjJj1dxXXtKUk7OHZ4fs81in50TPKnyAgWmo3wImAB
         CH7g==
X-Gm-Message-State: AFqh2kotbkgcSrNtLTRVSy1PAuIyhqNtoI3zga9OBtsnDozys2m7RmlD
	QAe5zmgNpTCYdccyPa5tB7KI3NdGdDFybzFw1jOreA==
X-Google-Smtp-Source: AMrXdXvR1l36/qUwB1P+1UgWfgsNtjVZ4KPZcRod+KwbmrmOF3n+QPkLuOVKH18qwF4Pv5w3YUxBKrLQn+R8ZCn2uSg=
X-Received: by 2002:a05:6512:33cd:b0:4cb:3df9:b25f with SMTP id
 d13-20020a05651233cd00b004cb3df9b25fmr1748078lfg.653.1673535762952; Thu, 12
 Jan 2023 07:02:42 -0800 (PST)
MIME-Version: 1.0
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com> <20230101-patch-series-v2-6-2-rc1-v2-5-fa1897efac14@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-5-fa1897efac14@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 12 Jan 2023 12:02:31 -0300
Message-ID: <CAAEAJfDqXJf-UovhGnmN7FDY-skSu-x5Rgz+K2WVQP+PKUVbsQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/12] staging: media: rkvdec: Add SPS structure to
 internal context
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
X-CRM114-CacheID: sfid-20230112_070245_139893_1C842399 
X-CRM114-Status: GOOD (  17.09  )
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
> Prepare storing the SPS structure for HEVC & H264 in the internal
> context of the rkvdec instance. This structure is used to figure out
> which capture queue format is appropriate for decoding.
>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 633335ebb9c4..332126e7b812 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -105,6 +105,7 @@ struct rkvdec_ctx {
>         struct v4l2_ctrl_handler ctrl_hdl;
>         struct rkvdec_dev *dev;
>         void *priv;
> +       void *sps;

I don't really like re-caching the SPS in the context,
since all the controls are already stored in the context,
via the ctrl_handler.

See hantro_get_ctrl().

Duplicating state can lead to problems and even if we get it
right this time, will be hard to maintain.

Thanks,
Ezequiel

>  };
>
>  static inline struct rkvdec_ctx *fh_to_rkvdec_ctx(struct v4l2_fh *fh)
>
> --
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
