Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED79606A321
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 20:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=z9s76ahq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=fPSZrwIZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MpYqEBmepHjYno1CYmCqdeC/6dB7snO68Ib7X+NERMs=; b=z9s76ahqMwamsuqza6dnO04VTR
	LjK1T/aq3Igp8eBisNE2/oxKuBs/MzzZWDO78oWRvmjlI2IHSyMqhzbOMQ4+k0vOEmxLSOFNm5rHY
	yiNQmV2hFZZ0SgUpF/OK2HUEPzktzie+lEZFCyCv7sCUCvfq9cYgiZe2LMR9u+JPob7999IFTOCTf
	U+K8ou5AwKHRHutMLv6E4XPg59wuA4jj2oj+sOql2vSWcrWqdBLrjBGIq2j18SS2tvlORWc9Gb28G
	6gmj1rpcZ/meiFJWz6uriyKEg70wnRgEj+/mjiVFo8w5N4MkSfTrEIozygC6j3pkZPumzZO9WOfzB
	1k0PbSTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9BO-0000000GYeo-36UX;
	Sun, 08 Nov 2026 20:08:06 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9BL-0000000GYeF-3roV
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Nov 2026 20:08:05 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a2167bd087so1954965e9.3
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Nov 2026 12:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794168482; x=1794773282; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AKFhX2kTzcPr0xphsyszWaihfxahRuh70nv/fwZfZKU=;
        b=fPSZrwIZy6DJs3mzfeIiq+NjSLM5cODMlKd/7HgBTbad1FnIODJbs7NQQe9JW5mqsX
         jmwRuwqnveRDOXiKh3OPlHCKsRAvAgF5jQJyoX7Yx5MHHaZGwWNMiTVJ8fMG2vgJnOP6
         rV6QApAfmQCVw9Z71CTP6n2nssBEV8ielHdMONtsHnHfFMuZXGnfK6oDYRnaXu1vhdHK
         P1j/KwchMAZ9y0Ds7VMjUllYmMDZ0ZeO69HDiOBXEhz0q30GVc56mhrBleBiWnV5ZsXq
         YuoFiyc21e3f+s89d9At4Gz+KA29r2BpniEObHxkSxYTpbZ4JQYi9YKZ9h6f2ZQaOhmJ
         aWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794168482; x=1794773282;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AKFhX2kTzcPr0xphsyszWaihfxahRuh70nv/fwZfZKU=;
        b=AVL9pB3a1inTci8d/AOcSS6cgXAYwHQ4qTw79yxu/4+Umctjd363ZyZwCdqrN+y4au
         yNDT12a2IAbIGgzmS1GKaA9/OajiOHclyW76Dq9g8ci0g682HvgxUFY0kRpGBzmQZqCZ
         KHkL6+BAC/qN8F7U4SElfpmt6Fl/1yYAHV89qcAR/wzk1/SwHb4BfqHbjbS9by1ShB1T
         1izR5zlncuowSCNqNP3oEzD1QZJVG6TKdWSq3FPwAtYxl68O50HIycyBMSOzsQ13zM3f
         H1aN6NOBV6mIm5ep7mUASp+/LTjgOVmKQrAKrczPZbu01zzBtcgPr4IlGkGhbAa4RKSM
         QEpQ==
X-Forwarded-Encrypted: i=1; AL+hErGzwqar1CspAtdpJMoIAyKlK0vB+qHLr+djmNt3iYGpApc5gK1j6eLvrvhkUgteJeazwt4DH7KA6hU34ivXqQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+XrGkRHEWC3Dut4cGVOOb9US0fkiOB3e44cjahUAs1rhLXHgeg
	8VU4A0oJNbiTUOL3TE2l6Zsy2HtoGy+4m3H5SPkOMXRNHwgRXemMCIlW
X-Gm-Gg: AYBFou3mA6ueU5s+JKxuA1I0HqeDvR5Apkj/LVPhokV6R9plnz3Gb6z2djP/lj65cZM
	VEo4NcdKlk1KPW3nhJqLHjkXKOsGGmsjIThI20MaUsDXZZYH0SNS5vyBtB1XYdneCUVqqKV3f3L
	CDxkTT/WWg7X3D6aXYx8jlCUEW+lF5/2Bmw0bhQrPogmKwcZAOuPNkKUcxO8QkzMy7O+6XvVNPY
	ehkoGnFDJGRxeb9HAXFceI2OeFpwLyHP5vaUA4mERNx/Kw0OZjw00efROIBKAMzsb5MPkL/TefC
	zLoFXWcTzmJjrFJ08Zn/2aSweoHC8K2ixWl3u3l1TgblLiux8KcMdjGWcVNM9sGC4+U2yh+Fdrw
	dmU2BX/LwNFUnlTwIUcSKnfRJw5EBCa6wYbw6MekDkAnXw4EsQZx5OSQiO9odcICk9Sv+teqwSL
	1wNvVKsVoZ2+OrLs4AhyqQxENRQgeVVW9E5mnwQEFmTD/VtZmrV6siqmWuctUshbyMcwp0ny37V
	YGWzbELdV42n3ngPg+SMVm72rylPCXYdJbSTDB860nzo1l6ZIwCEKS55hke855UUbEPRs5MDaAL
	wJoQFs25/2rB4EXrdws6B1qyxXmZWd63Un2HGbTuHReXJrngKL08C0LFw486rsYy
X-Received: by 2002:a05:600c:8b6f:b0:4a5:1cf1:b7bd with SMTP id 5b1f17b1804b1-4b9633cddd6mr40682765e9.16.1794168481504;
        Sun, 08 Nov 2026 12:08:01 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b90ee249d3sm87320515e9.7.2026.11.08.12.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 12:08:01 -0800 (PST)
Date: Sun, 8 Nov 2026 20:08:00 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, kees@kernel.org, justinstitt@google.com,
 morbo@google.com
Subject: Re: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
Message-ID: <20261108200800.2b3b15cf@pumpkin>
In-Reply-To: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_120803_988675_64D8A2D9 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu,  5 Nov 2026 00:45:18 -0800
Mariia Nikitash <nikitash.mariiaw@gmail.com> wrote:

> In preparation for removing the deprecated strlcat() API[1], replace
> the strscpy() and strlcat() calls with seq_buf operations when
> constructing Hantro video device names.
> 
> This preserves the resulting strings, including truncation
> when the compatible string and suffix exceed the destination
> buffer's capacity.

This is just stupid...

David

> 
> Link: https://github.com/KSPP/linux/issues/370 [1]
> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 26e5d5547466..2bfcd45cc55e 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -17,6 +17,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/seq_buf.h>
>  #include <linux/slab.h>
>  #include <linux/videodev2.h>
>  #include <linux/workqueue.h>
> @@ -883,6 +884,7 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  	const struct of_device_id *match;
>  	struct hantro_func *func;
>  	struct video_device *vfd;
> +	struct seq_buf s;
>  	int ret;
>  
>  	match = of_match_node(of_hantro_match, vpu->dev->of_node);
> @@ -902,9 +904,12 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  	vfd->vfl_dir = VFL_DIR_M2M;
>  	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
>  	vfd->ioctl_ops = &hantro_ioctl_ops;
> -	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
> -	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> -		"-enc" : "-dec", sizeof(vfd->name));
> +
> +	seq_buf_init(&s, vfd->name, sizeof(vfd->name));
> +	seq_buf_puts(&s, match->compatible);
> +	seq_buf_puts(&s, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> +			"-enc" : "-dec");
> +	seq_buf_terminate(&s);
>  
>  	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>  		vpu->encoder = func;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
