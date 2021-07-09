Return-Path: <SRS0=C1nv=MB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A108C11F67
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 09:50:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3056A6135C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 09:50:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3056A6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHd9PdGGBk1wmHOFDVRMU1pvy5aAJTZg5NgJpApgLrA=; b=rpZh2pKT8k4etc
	P67FQ/hC/gEKUJmOw/rlSyZaxdJN/Myz1IN+BQhbdOj6UVTcQNuoxqYodIOtcSsL1ltPJoMXwwjJZ
	FYr/n2qKhIT8G7PLq3pxrekx0DjOZA1VUhwdLK2Vaq+HwPexe8bKeWlhP0u5Hxr0Aquski/o42/M1
	SmnwbIAEnJLQUcDbUc5pJE8VFHGekEZxHIk4i/2BCEiEikDE9Sr6bb4IyYACj8f0hFzuZoOe0yomD
	nj40zMdFjaz4oUsXGfoffjYIned9LWFMGL3m4URaQ6VsZ436XBbIL1U17MfzRS37ACDbMptj2bKiS
	1xAsDtbSTVJNJsucSghw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1n8v-001OvK-G4; Fri, 09 Jul 2021 09:49:57 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1n8t-001Otl-0l
 for linux-rockchip@lists.infradead.org; Fri, 09 Jul 2021 09:49:56 +0000
Received: by mail-ej1-x633.google.com with SMTP id ga14so120383ejc.6
 for <linux-rockchip@lists.infradead.org>; Fri, 09 Jul 2021 02:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0aJWJwlheU/lxeAZzdOHAS4FN13/EFK+YqXAzvN5kvA=;
 b=d695sFGxQwFyekLevettu75ZqH6H5Lwg4BPfxmn7KqfSAeO742acSx2XsIp2ooAH07
 Ib/H1TkwCzk4EnU0br94r0XTKBQMR6f/ZZGRDeok8NGXm/Q/jXbc7MEP9P/ywvr55ETe
 Bl75SKxi0lFTIlJgphm8/ZLloSPWEePoYnlGuyLZL40+Q1u9jjEkoYY3zs2jC5+/lf0V
 bUwc88keTa7+G279yWQHMBlW4OC0GkF7g8xB3JRANMvd/JnD0JjUFjikzUzVjyJzYYvP
 pLu4gbqBMlDSBkMZH4u4xI0wFkV0WBQ+OCWcqTvvqshnSwQh1FgDS+qr8u2HmQ0tyF+O
 eo7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0aJWJwlheU/lxeAZzdOHAS4FN13/EFK+YqXAzvN5kvA=;
 b=tvknA8DZMkEq+PzQyUM5Rx9NvPXwX+iIqQsFIj6qYS69gv14Tje2nBJo9e+CXgzqNn
 fw+czQa7UZOSa/JWzQEErEoPIOmlQxYCLGbLt09G1vMB8XzJVuIm+dzlcKyhpOBQ/WUB
 2Lj9bkB5srb8x1+TAwXNpqnTcMJ2qE32yi5E/pt2wXPTnvHsM4nI0AESPLIANsixoe4f
 dwlv3YcY7c1AatMIHgBHxMrOLfYim9O7j4uE1mg9h0DZznCN3jCSM21deg4QKEOd4uyQ
 vKgxa81LwU+vga40nzBSlQCANrNZ5WDuLSopHr0biza+9SLLF0bjaYMlTH/rY5nO0sc/
 AlLw==
X-Gm-Message-State: AOAM533UQ0GRmCeJloP+8uu5Gjq40WA0NrRkDpTUFU8jLKvmVQFpmkuB
 7CSJaTNDgPexjROkT+ttLjzwCg+RrI3kn1WqAeI=
X-Google-Smtp-Source: ABdhPJyxMIZfMRItVQXXR8ywaQSFGfyISBm/1wxd9gGEGyjz1aO+QsdZ7kuRIFPTSt395NzQYK2DF5WSH6xQ53GQkZ0=
X-Received: by 2002:a17:906:3006:: with SMTP id
 6mr37123721ejz.73.1625824192379; 
 Fri, 09 Jul 2021 02:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <YOfu5Zb2kpN/0Prn@mwanda>
In-Reply-To: <YOfu5Zb2kpN/0Prn@mwanda>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Fri, 9 Jul 2021 17:49:26 +0800
Message-ID: <CAD-N9QV-x3pzwN4HvpR9w04NnVHs1aafASQvD+gpTWg01K_YUw@mail.gmail.com>
Subject: Re: [PATCH] media: rockchip/rga: fix a use after free in rga_probe()
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hansverk@cisco.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_024955_099185_F25993F1 
X-CRM114-Status: GOOD (  22.17  )
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

On Fri, Jul 9, 2021 at 2:38 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> The video_device_release() frees the "vfd" pointer so passing it to
> video_unregister_device() on the next line results in a use after free.
> Calling video_unregister_device() on a device that hasn't been
> registered is supposed to be a no-op so that can be removed.  The paths
> with to goto unreg_video_dev have a memory leak and should be updated to
> goto rel_vdev instead.
>
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index bf3fd71ec3af..37f7fd060c38 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -863,12 +863,12 @@ static int rga_probe(struct platform_device *pdev)
>         if (IS_ERR(rga->m2m_dev)) {
>                 v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
>                 ret = PTR_ERR(rga->m2m_dev);
> -               goto unreg_video_dev;
> +               goto rel_vdev;
>         }
>
>         ret = pm_runtime_resume_and_get(rga->dev);
>         if (ret < 0)
> -               goto unreg_video_dev;
> +               goto rel_vdev;
>
>         rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
>         rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
> @@ -904,8 +904,6 @@ static int rga_probe(struct platform_device *pdev)
>
>  rel_vdev:
>         video_device_release(vfd);
> -unreg_video_dev:
> -       video_unregister_device(rga->vfd);
>  unreg_v4l2_dev:
>         v4l2_device_unregister(&rga->v4l2_dev);
>  err_put_clk:

From the analysis of rga_probe and rga_remove function, the init and
cleanup functions are in pairs as follows:

        pm_runtime_enable(rga->dev);

        ret = v4l2_device_register(&pdev->dev, &rga->v4l2_dev);

        vfd = video_device_alloc();

        rga->m2m_dev = v4l2_m2m_init(&rga_m2m_ops);

        rga->cmdbuf_virt = dma_alloc_attrs(rga->dev, RGA_CMDBUF_SIZE,
                                           &rga->cmdbuf_phy, GFP_KERNEL,
                                           DMA_ATTR_WRITE_COMBINE);

        rga->src_mmu_pages =
                (unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
        rga->dst_mmu_pages =
                (unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);

        ret = video_register_device(vfd, VFL_TYPE_VIDEO, -1);
        ......
        video_unregister_device(rga->vfd);

        free_pages((unsigned long)rga->src_mmu_pages, 3);
        free_pages((unsigned long)rga->dst_mmu_pages, 3);

        dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
                       rga->cmdbuf_phy, DMA_ATTR_WRITE_COMBINE);

        v4l2_m2m_release(rga->m2m_dev);

        video_device_release(rga->vfd);

        v4l2_device_unregister(&rga->v4l2_dev);

        pm_runtime_disable(rga->dev);

So I think the error handling code is more complex than this patch. ;(

> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
