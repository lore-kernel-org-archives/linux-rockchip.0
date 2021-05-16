Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1460C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 12:31:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02E7761029
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 12:31:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 02E7761029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f+GmrWSozU7XPublxV5d1NX9U6pjn/ktitj3R9VdThs=; b=LAdr9tc+u6z9ovZq27+f3xzxA
	OkNMalLvHLi/eRYH+1VjCuFk93BEENNpatkfhDMeoNIx+jPXHRtaN6RJQLZAlRJaHEl0unSv4lJHe
	0C5V8vADq2Cb4AewMnYqYmAlpM7NZBkBIryCk2psCz/1sUV58DZObZMp6mSGx00qn5oJ6YxvDuoF4
	QecUBKq02g0WEvdVkFNfjGbKUOsIj8A0toMGBT2NPINjVuWFNTfI5Q2kEQjyUMw9kC6TSiv2eWxlJ
	2KdWUign38I0Xfoo3WhV6MLVN1q6bEc2S5sg7c84urTekP8JmrG9yYatt15ZdMSxS8h5EtnHnBeNO
	H3v7nXDxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liFvv-00CDD3-V5; Sun, 16 May 2021 12:31:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liFvg-00CDBx-LW; Sun, 16 May 2021 12:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eckqMwpEIroRZE69KD3Ne9vC93wMSyCChn6bW92xB28=; b=0HF6SKAE6aYbGbQ/AJ/o+Gp/oZ
 63CMGzQ4pE7RqHSwN4xDGgen46FwSnT8SN6POBwFQgXu0QghSqsAKQ+IYXEBq+FCw3xV8bubupMqX
 o8z7sBq1HPBqKq2E9qpWw40uk+YLkSRte1tWhpilt8BLsizBktuUwJG1Jcx4wLAN7whj8mG0o4Cim
 ql9fEwSq3+MPfmMmFvVvpq/leMmiX8vo8TIedzJpgeB7aRa/iEJWYk4LBG9YXCWizy0mgeTSMKgf4
 mVhXbsC1oyON6qAPmVyXc+piTgQ2CWieHsBdGdStRxRvbeuqx21aY56OmL/40TuUJCCCv6HffYxh/
 D5Ft7iGw==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liFvd-00Cuog-GB; Sun, 16 May 2021 12:31:31 +0000
Received: by mail-ej1-x62e.google.com with SMTP id l4so5123921ejc.10;
 Sun, 16 May 2021 05:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eckqMwpEIroRZE69KD3Ne9vC93wMSyCChn6bW92xB28=;
 b=qxsJ6UqPYeYNVjSUnnzbteIwHv+wmPzMifNJiXeYO5OI4nFMUE3n3jdR86k2kjPrnz
 fg+MZSaqB9EuxgLvF8mQJq9r1Mn0Vmc9P6rkI6HROgolgJY4h6+Q9BY2fT7jIY5F89Fz
 ZkEadOMmMaD57ecKFGfm6u9WItYiAswVeAmvJxrFZ8S4VxcwdwG8x6nZsz+Ct6oFChUC
 QkCvuY0fEXZQPzPZlSQypIRkkn8UE1b1YAZFnMPiSMY+UxbfiG2w71aM/OIORe6Nqwvj
 OFIqOTVhOTnzE96rSeggi3uMZWTov/SrGJ6cYZVdAur8zieb2EhM1YCNAzzVtjZqLgRO
 a96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eckqMwpEIroRZE69KD3Ne9vC93wMSyCChn6bW92xB28=;
 b=d0ud1limspe7/69Qt3hE0Vl2irydHt6vtntt+kxur9+Vxpbo5K1Nzr7akW0ENh3kZ5
 1m9Pnrz+Dfay2TY2cdr2+9tc6UxJa6McANpRTzbSAgCtoQ3M9UqAJ73Rbgy/2EwN79bG
 pThd0miqtoCDf5snZ8qIrN4+cNVi+UiG4OEscyaFoK3trRLfdR//eN1OK+TEQAKr/UN7
 gXXGeVVI8NXh3INpq8aXthy0xCgZrag2o4H1dLiL2hiSMlMzmUr1nQwFhLdvwWeJhwqF
 AVFTMkBJGviAau4gJwL3Z4CegIKX1mQE2972rDAdD2cBhJRNTl5M4xas8Lhe1IXJvfw0
 /aWg==
X-Gm-Message-State: AOAM531XCKUUP+Y0yWCTZkavACKgpKM2lYgnhgY4rWd/PCpuaQIi0Mr8
 3txHYrCe9ZHUCFmPxpXcXA+S7JQBcMk58uunVbPwwjNuHfc+jA==
X-Google-Smtp-Source: ABdhPJyMocjUwulbuwuJTGv1j+LscDh6BLMiewFmxo7PPWGXTM8vvLThYsVj/9y2uCWKAF38AloslnRqGm2OQkvDs64=
X-Received: by 2002:a17:907:f91:: with SMTP id
 kb17mr56164390ejc.521.1621168287278; 
 Sun, 16 May 2021 05:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210516074833.451643-1-javierm@redhat.com>
In-Reply-To: <20210516074833.451643-1-javierm@redhat.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Sun, 16 May 2021 13:31:16 +0100
Message-ID: <CALeDE9NsdNDf+S9kYqsJGftjj+mS8sZPexMJUvtNqbc7CTjrqA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, 
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_053129_559610_B359D177 
X-CRM114-Status: GOOD (  23.20  )
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

On Sun, May 16, 2021 at 8:48 AM Javier Martinez Canillas
<javierm@redhat.com> wrote:
>
> There are drivers that register framebuffer devices very early in the boot
> process and make use of the existing framebuffer as setup by the firmware.
>
> If one of those drivers has registered a fbdev, then the fallback fbdev of
> the DRM driver won't be bound to the framebuffer console. To avoid that,
> remove any existing generic driver and take over the graphics device.
>
> By doing that, the fb mapped to the console is switched correctly from the
> early fbdev to the one registered by the rockchip DRM driver:
>
>     [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA
>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Tested on Pinebook Pro (eDP), Rock960 (HDMI) and Firefly3399.

> ---
>
> Changes in v2:
> - Move drm_aperture_remove_framebuffers() call to .bind callback (tzimmermann).
> - Adapt subject line, commit message, etc accordingly.
>
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 212bd87c0c4..b730b8d5d94 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -16,6 +16,7 @@
>  #include <linux/console.h>
>  #include <linux/iommu.h>
>
> +#include <drm/drm_aperture.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_gem_cma_helper.h>
> @@ -114,6 +115,15 @@ static int rockchip_drm_bind(struct device *dev)
>         struct rockchip_drm_private *private;
>         int ret;
>
> +       /* Remove existing drivers that may own the framebuffer memory. */
> +       ret = drm_aperture_remove_framebuffers(false, "rockchip-drm-fb");
> +       if (ret) {
> +               DRM_DEV_ERROR(dev,
> +                             "Failed to remove existing framebuffers - %d.\n",
> +                             ret);
> +               return ret;
> +       }
> +
>         drm_dev = drm_dev_alloc(&rockchip_drm_driver, dev);
>         if (IS_ERR(drm_dev))
>                 return PTR_ERR(drm_dev);
> --
> 2.31.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
