Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E99DFC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 23:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMiZs7i39GHIp+r4GuYfp+3JblRNWlQ2tx9phkfpgaM=; b=z/4hxU4WjFP02f
	iMXBDhDqIB+2ahHIoNZF6QwkSw9hPOWn5Q8oUTm01iIwstxIju129lDKdx8Aa+j4aBLNTzWh5mFyP
	sZcHL36Hai2rfMaSQ2AYjriMBg6IzrwZttGjowKVnt6QLpZU8v+rw4k+xRFsxQN2ju6JpiDLmw5DA
	eI/TinqdG47niWZNxfP65ZX3T1txRq6kpfKOK0mEnFdY4YwGIYSzJFgxbh+NEAEUlK5ncRnbS4akH
	OcpkEI21G5TI8niZSCSzRSwsTFCqbbq6jdy7cvS1k+ZZ0/VH9bUgZnx8and8DsQncPU+K9zeQWq5f
	ov35yjEdXEL4XSStwAvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRiyd-006VER-14; Tue, 08 Mar 2022 23:10:47 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRiya-006VD8-Hm
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 23:10:45 +0000
Received: by mail-lf1-x12e.google.com with SMTP id z11so621835lfh.13
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 15:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tclsFaPE34TrWsSULlYvU9YsW3x7Tf6mvtJ/Ff+EAgw=;
 b=YTxtynEturtmQ9+fQ2vk4MLEzSozTMNeDRXaVWblqZvl5cNILUeHdpEsitwfPfNIzn
 uCtJuZ5NsjYf2Ok6NBtbFh9Ma45M5vV4eDFye5M5b2CqwFnkNoA8DFyU50SPmMselqV/
 q/tlUGMcxIMfJNgMyYAgT5U/xKc9hbMGY84CXSrjQz3QPryQGm3EntO5dzCPy4t1eLLM
 PJF3EWLGIRs9IQkx+NbaWBj8+A2ASwVgX7J8o5ZMMpRM0FvqYWU3ThHQDTV7BjFmtynz
 gVx61JpRkMOep1q+pQ1+vJQs7ocgJhkFT/XQnL7qiyo2bgs0+u1VgxYEfGddeAxQFlhp
 Cxgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tclsFaPE34TrWsSULlYvU9YsW3x7Tf6mvtJ/Ff+EAgw=;
 b=qQRelmUlsHWQXdHKBc4bQjNPXM/Flw0Uaz8cKqzdtBL4tIx6Isnszg0orkft2Hmq1V
 Ccyb2n6ZDM6txcsZ8Ko6azptsSK/Np2TsECZ8wnGz6Ca4NtckOquNq77aymVlh54KtWs
 VR0hNfbhKg9VT6wDZa1Lovy0CPKYbd8pg1E7ZD005eSwlFNeJZ4Ej5NvvzqPPHOCKbRP
 aMI6AfLVXZhDA2bmrsQZniM5NpBZiPap3TWJFy9BoH6/MRJZNc3FD51AmmfL5TJLcgib
 7b9Ov2U8IAIsMOaLsdMCc2Qws2ro0a3YsfpD4/Jj0Wpxo3Klc99veT37tM5Dr1R68RXI
 MR7Q==
X-Gm-Message-State: AOAM532Im6yEGUDJZWx3FqTGDeoqppIDe1tUALoS4DPc0PntDuOiA8ld
 QSrSrba/MWh1pUpo6mUpAoEhuuM3ViP7GEnr6vaPmg==
X-Google-Smtp-Source: ABdhPJx/fglOdwsFUXGzUPIPq1H3ZUZI8HoqBE3Dc7CpwH2vZZ4CHq8MWt1insKPhpHz2VgNI0Ys/4lxjE1mEucfOrE=
X-Received: by 2002:a05:6512:31d4:b0:445:e4ef:c0f8 with SMTP id
 j20-20020a05651231d400b00445e4efc0f8mr12498094lfe.626.1646781042694; Tue, 08
 Mar 2022 15:10:42 -0800 (PST)
MIME-Version: 1.0
References: <20220307181704.149076-1-colin.i.king@gmail.com>
In-Reply-To: <20220307181704.149076-1-colin.i.king@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 8 Mar 2022 15:10:31 -0800
Message-ID: <CAKwvOdkXNGRJkZDd7Cg8jhL9Ex7R+VPYqEEc+VpwDyi9NJKXQQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: remove redundant assignment to pointer
 connector
To: Colin Ian King <colin.i.king@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, knaerzche@gmail.com, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_151044_629313_5DC733C0 
X-CRM114-Status: GOOD (  18.17  )
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

On Mon, Mar 7, 2022 at 10:17 AM Colin Ian King <colin.i.king@gmail.com> wrote:
>
> The pointer connector is being assigned a value that is never read,
> it is being re-assigned in the following statement. The assignment
> is redundant and can be removed.
>
> Cleans up clang scan build warning:
> drivers/gpu/drm/rockchip/rockchip_rgb.c:153:2: warning: Value stored
> to 'connector' is never read [deadcode.DeadStores]

+ Author & reviewer of:
Fixes: 2e87bf389e13 ("drm/rockchip: add DRM_BRIDGE_ATTACH_NO_CONNECTOR
flag to drm_bridge_attach")

>
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> index 2494b079489d..92a727931a49 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> @@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
>         if (ret)
>                 goto err_free_encoder;
>
> -       connector = &rgb->connector;
>         connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
>         if (IS_ERR(connector)) {
>                 DRM_DEV_ERROR(drm_dev->dev,
> --
> 2.35.1
>
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
