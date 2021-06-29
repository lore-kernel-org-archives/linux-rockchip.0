Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B51C11F67
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 16:00:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4784661DC0
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 16:00:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4784661DC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpPothZUVJxQD6roJG2wuPD4jJSMxNPw3VWWVMS8eD8=; b=LeU3C0Da/CmjiE
	UbVH8ZRWlL9jEjfFgzcTqPoTTPyDTQ5HB+2uYMr9dUfmej6Amw3FIvdmepx8VdsT418ylCZyuFVYJ
	fOGfBEoNiHWa16yVu6ipUe1k/JjTJFknk0J54qmqvj16y4mzyjrqIaeIy2SpyVBKv/+2/K13uHGfc
	nj/1MTtKrDuF5mS5AKWTBNsMbcsTz74hfpTLAYGfMbjhZ2kjCJGUzsGXgblmT2/lHUc2BW41G5yVH
	nsZFvNbJYCklWKBmEo7BOOwWFVzkAGi7YdoDaUGeklpA/e/HSOhFaYJhOsneXzmAihKutf/x/NWSu
	Qdn9chnIvOKUS7bC9BPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyG9g-00BXog-94; Tue, 29 Jun 2021 16:00:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyG9L-00BXht-Rj; Tue, 29 Jun 2021 15:59:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2941661DBF;
 Tue, 29 Jun 2021 15:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624982387;
 bh=mApRLgk69+mMV6V2Jp0Hts8X9JoUe+4WPGnamh9oiBU=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=jn/UYtxd6DOT82xj4Jn5ozrIOU1lYCBRLr3TmBNuywthA+if1knOf6CycPUljm3dn
 qrjGs6Lu1J28zcL8aopJN6s5OgAz8oLAytGSTEQG1DzNQPPf3gRaYpVpMxeLaaiOyh
 bVLemkmvbDMqQhIQKL1xV/Q0bjnonDenCYi8Nolx6I+32TCDLTuouRZokZI1drVfJE
 rJ0FGqtMN7GMe63abKwOLeIESoem7LfaZWgx2r5f3S3BCSvyUtxwGLzfmuIrRVi5Ux
 miLI4IVM6blF+0nBNxbMjbmWsAsTFPSHxCiyoRO2xhOx2NgTOob6j1ZWe0xWsOAKXd
 Tr8eWN67R/h5g==
Received: by mail-lf1-f48.google.com with SMTP id j4so40366319lfc.8;
 Tue, 29 Jun 2021 08:59:47 -0700 (PDT)
X-Gm-Message-State: AOAM530RQE2D7iWvUWhQDz3xmgbGWFhV8iPw0F7pCphBOPK1EfXe9/I9
 /GbVpQl/hUlWfusCp+NR7bhwP4x1v0rJkoF/I7w=
X-Google-Smtp-Source: ABdhPJxbKRPGstVIg+10tcjtk+VnYZ+lj9b97iwRcHVe57pqV9+t3IECtbTnQC+RnmS+mFeMuInfdc2gJTFJGcCpAlk=
X-Received: by 2002:a19:e210:: with SMTP id z16mr1316558lfg.233.1624982385490; 
 Tue, 29 Jun 2021 08:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210629135833.22679-1-tzimmermann@suse.de>
In-Reply-To: <20210629135833.22679-1-tzimmermann@suse.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 29 Jun 2021 23:59:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66wYxs7u1AubriRokPFh72ZONMxGgmGNPB5mFLOZNw_3Q@mail.gmail.com>
Message-ID: <CAGb2v66wYxs7u1AubriRokPFh72ZONMxGgmGNPB5mFLOZNw_3Q@mail.gmail.com>
Subject: Re: [PATCH] drm/aperture: Pass DRM driver structure instead of driver
 name
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Daniel Vetter <daniel@ffwll.ch>, airlied@redhat.com, 
 dri-devel <dri-devel@lists.freedesktop.org>, linux-tegra@vger.kernel.org, 
 linux-sunxi@lists.linux.dev, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 spice-devel@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, 
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, 
 linux-hyperv@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_085947_967307_72E52231 
X-CRM114-Status: GOOD (  11.16  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jun 29, 2021 at 9:58 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Print the name of the DRM driver when taking over fbdev devices. Makes
> the output to dmesg more consistent. Note that the driver name is only
> used for printing a string to the kernel log. No UAPI is affected by this
> change.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

>  drivers/gpu/drm/sun4i/sun4i_drv.c             |  2 +-

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
