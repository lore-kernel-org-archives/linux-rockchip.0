Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F216EC3DA79
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 16:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7D9qvmzTNn4i9HNNqQj7X2w3RhroQ6+w2A549FH0rw=; b=b0O9A0BakGJMgt
	r/chz5ELrMxZGdj9AV1wENY7BlfZsPJVon+VWHeLANM0jSy4TsP9FAg2JJ/SsFVlI/s5T/Fkmu9sq
	Qd2yjMdh5AcPXntbCqQbOdNc0kNQ1PGP2LQuA4S0BIrsBmE/uQeinNIaSXmhz+XQsDyogbIffSD3y
	rtnL5vORoOcEjKKoX886thfeCLy6Naykf3vEGDTAVGX0XP48+DT5ol9MKFRvW6jpfBg3JZ5yj+rVR
	0oo7gxiR+j8MmVxgUexsqevyxZJRcPDPHConGjRGC9c7YUF+Djhj9rF+xyNP3djuC3UafsCru9MI/
	6Dy3pwW+DEli0TjticEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kuo-009z8T-49; Fri, 23 Dec 2022 16:28:58 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kuB-009yrw-K7
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 16:28:21 +0000
Received: by mail-lj1-x22a.google.com with SMTP id y4so5516656ljc.9
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 08:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4N34Q6vegmizYVH/tay3YsZhocDkMZUURFeC6HW8OZY=;
        b=26oprJ2ySY43mmV/tXV+KTU60nkGFIzDG3APBYN9J7MEhdLnpDrnO5HG6WFMBpBBgh
         qFu66TOEn+q+AhINcJOW7GKj+A63DO8IPA+U40QxUdt739fPp4ZY+5++iiVWHE0dGGdS
         t/FUX7GzA49xmUPahdQ/hA4sk1yMNwS3FkBtAQ2rR5Ce8A9e88Z+iotx4hK6U4naZJpV
         3p02qf4nExBet0Qciw3epPpAylNQyalQcrY0Uzz+2IxvZEW8v50GZBZazI+TUbQ/CyZK
         pL+7xggp/WZXVwUFX4/SOCKIVje8q6CdATw1oQtY/XRMLK4dPrZhfQKJTzxUZPo4N1EK
         MF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4N34Q6vegmizYVH/tay3YsZhocDkMZUURFeC6HW8OZY=;
        b=GMbTaUG9iptBpEE1P4gPxfkrWKFaWManSnAQTXByOMqDOQASlNt3nCYK7i397+21k/
         0VRVY71Ji39vlCwW17yC3aLAlKwjSbUh/7JGySqIpThanVwddtEsiPqCM37zkiZQt0wH
         2X/YKHvqc5Ru0rRZAa4pFlxCeDyRqrkGAlnBSEl4wgcHRM6/iJioRDw27IqPo02anLNf
         01FW5ve6G7DutQsFRUQnbEbkm9Lj8bS0kC0VQ9DzN0yx2Paox6w9BISvRwZRr82+3y/5
         ePw4cyyZacAkK9bwdwnTqksbf2M92AfUSVxfNcnaYtXp48Hqk8BLoPIPa8OMGqMhVB52
         Vztg==
X-Gm-Message-State: AFqh2kpioBOvpMoBwRnetBucPrr/T+xfmcp98UBNL77xOQNFmWlW+nZ9
	cv5uO/wS13hcj3m6P5tOt+XsujCuFPea5oHP7cGPKA==
X-Google-Smtp-Source: AMrXdXvQ8xwiu63+L+V5Pqox9KrVgec2uYlBwfbs7NXCEyiSJ2RgwpcbUS+Ja1/4Uxtq1XDBtLjCEFylce8Mp/a5INs=
X-Received: by 2002:a2e:7016:0:b0:27a:306:5dfd with SMTP id
 l22-20020a2e7016000000b0027a03065dfdmr741643ljc.72.1671812895550; Fri, 23 Dec
 2022 08:28:15 -0800 (PST)
MIME-Version: 1.0
References: <20221223141644.703088-1-nicolas.dufresne@collabora.com>
In-Reply-To: <20221223141644.703088-1-nicolas.dufresne@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 23 Dec 2022 13:28:03 -0300
Message-ID: <CAAEAJfATk+jOq3qt-m2CZEbCVumHHWDFfuEXKA7k0NZQXajCRg@mail.gmail.com>
Subject: Re: [PATCH] hantro: Fix JPEG encoder ENUM_FRAMESIZE on RK3399
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, kernel@collabora.com, 
	Robert Mader <robert.mader@collabora.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_082820_054026_79334E04 
X-CRM114-Status: GOOD (  19.45  )
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

Hi everyone,

On Fri, Dec 23, 2022 at 11:17 AM Nicolas Dufresne
<nicolas.dufresne@collabora.com> wrote:
>
> The frmsize structure was left initialize to 0, as side effect, the driver was
> reporting an invalid frmsize.
>
>   Size: Stepwise 0x0 - 0x0 with step 0/0
>
> Fix this by replicating the constraints in the raw formats too. This fixes
> taking picture in Gnome Cheese Software, or any software using GSteamer
> encodebin feature.
>
> Fixes: 775fec69008d30 ("media: add Rockchip VPU JPEG encoder driver")

The frmsize is only for bitstream formats (see comment in struct hantro_fmt).
If I can read code correctly, this was broken by this commit:

commit 79c987de8b35421a2a975982929f150dd415f8f7
Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Date:   Mon Apr 4 18:06:40 2022 +0200

    media: hantro: Use post processor scaling capacities

Before that commit we used to return EINVAL for enum_framesizes
in RAW formats. I guess we missed that :-)

To be completely honest, I'm not sure if we used to support encodebin,
and I'm not too sure how to approach this issue, but I would really
love to start with something super simple like:

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..0b28f86b7463 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -161,8 +161,11 @@ static int vidioc_enum_framesizes(struct file
*file, void *priv,
        }

        /* For non-coded formats check if postprocessing scaling is possible */
-       if (fmt->codec_mode == HANTRO_MODE_NONE &&
hantro_needs_postproc(ctx, fmt)) {
-               return hanto_postproc_enum_framesizes(ctx, fsize);
+       if (fmt->codec_mode == HANTRO_MODE_NONE)
+        if (hantro_needs_postproc(ctx, fmt))
+            return hanto_postproc_enum_framesizes(ctx, fsize);
+        else
+            return -ENOTTY;
        } else if (fsize->index != 0) {
                vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
                          fsize->index);

(ENOTTY was suggested by Nicolas on IRC)

Nicolas also pointed out that our current handling of frmsize is not correct,
as we cannot express different constraints on combinations of RAW
and bitstream formats.

This seems to call for a rework of enum_framesizes, so frmsize
is not static but somehow obtained per-codec.

Thanks,
Ezequiel

> Reported-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

And thanks a lot for the report and the patch!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
