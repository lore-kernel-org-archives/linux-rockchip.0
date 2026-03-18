Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E7DA103E199
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 15:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dbnzm4QKcC0O/65ABupLXElw4ip9R1L5+zzMF8pcDmE=; b=JOBmpR1+1w/LEi
	OvYNdGU1DEMmySEcA06FecDRo2SWiDv1W84SOrBiFPz6iVH7NG900hWNBMmIkR5n3XrKsoBT9LVMo
	MTahPpVkSnnKvmK8Da05pH/AOFo1my4kIIJIfbIEodOYdSIPVNJrtNElZOV/3wzuq7pTaw6ZyuBRP
	6yAgSZTHzivseFC8EYFXkvueCfwAkff1rOGidqIpiqUUxMW99sKUWNL9TbzZXEy9Ru6gpj+m8QuR/
	JfSVS+jZQ5RK7bvXGCdL4ebz+10I8+Zukwxg+zaas8nLAcsNkb3oNHou6x6biDnVnBh+cjNqNVV4o
	GgGodtdpsAxVOXWVW6Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sq8-00000008ieb-2BBw;
	Wed, 18 Mar 2026 15:29:44 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2spv-00000008iaR-48Vh
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 15:29:33 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-89a0ecbc713so14333466d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Mar 2026 08:29:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773847770; cv=none;
        d=google.com; s=arc-20240605;
        b=RiFh7jCQOx5LCax1sovsALXClMzAA0U70Ng/aw6ec5ut2JpWm9kspUmPKkSY4jXe6d
         OqTAlmQ/0dGAlpT3liF6grUwgZGTX8ZsGp2arSmhlEG/IGo6FQolI+SPH1TizHEOhWY3
         mMXgP9goKRvPjr0CDXDuZM+PAhw2ySfLud8YjTgtKXSaCYmaGOzZEWn7D+JzB6tsDvlp
         iWjYY3YPs15C+ipWDqLJqycDytpMcgOJCOlzoqiBYbGr1nubN/WTtKqimCbrvzPMWkx2
         bWwpZsn+ZsQQBabPssy3LHnyz1dpSNoWLsAU3Ohg1Svd7VkDdntd8sbesuJjKrFzDjla
         fszQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1+z67iI4L59MdutM3mpmu0rsH9NTlRmTzd7nYcIbwIA=;
        fh=l9v7kKi9OfB7Jl8f067iY+jLxCxdhCce5FcPJcuftgA=;
        b=S3xRKUctYzTNBYjrBn402sd0dDQw36WYSVVFf2tk3ZIGjHffw2KXdKJUumCw5qpSRK
         5mQU0pEsqqiWhjC6MluGTH2IKIzF9DyonZOu7eaX5pzez23JX7Tv/JxwVM7rcphUIEfC
         zilbwW26NiUBT9lp5Q+K2cDBWDFn5ztYLg8sOhIo/ahOFiOV1sW7iDx4AERHjnaV2LVX
         fpLuBy9uKxjib5J0vaTWTEQFKkZmCsqDgJ5/fHGKOK3V8SbEkZtRjLI05UXdScXai+JG
         1/u+ugdyhLuvEMvJvoLwUlisZkXXV0l58N+9C8nnb4Q17D3fbKzfnnF+yxcPyRUz2w9X
         JiZA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1773847770; x=1774452570; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1+z67iI4L59MdutM3mpmu0rsH9NTlRmTzd7nYcIbwIA=;
        b=l88jkp+krTI/wWYUrJGdpgqmJ5kxXLxajRxebSAX1GW/7WLKR7hrEa5sozWztdZ6eD
         HLCbQ0dvQR92d3VpsIW1jLwAOwc+YBeLRDYeULtyHH+2XQFJS6qGHqzUDwrxzbJRctHi
         ztOyMtOxMuPF4jEeCyuK4uAROR7bVbiMi3rfFZ4Ly2KLTrVD5Vn4nkiTp042cQnpSSr2
         tsVCO6UdsxvPYsdNjghsOXRgqPF2U3ArJG03644K93xt/BXRMUMcUj8wi8+I4AOpAML2
         p5p4WCErQZSHboDoo8H9aYYXFckJUT79iMIrFJKxEyfsVJUxc+0xV2VgxxDQepXnwD6X
         xHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847770; x=1774452570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+z67iI4L59MdutM3mpmu0rsH9NTlRmTzd7nYcIbwIA=;
        b=k9Dm7M9DaX5u7ajDy2FiYIxc7ATCfSkQy+/NMyW3aW/LWmrVEv0qkEv++x99BJgf6f
         Fe9XkE2oo0ADn+v7oMf9qrLzjuyhvAflZ/M5QxOVRs7vxgmrdnSMYc6EtEh2AfWiehM5
         WFAQp1lF7xln8NZouQ9JIcNEeOBrkUHFk7B0xdXj+/T0o8qanDLFq6y5fjnbVgKISTVj
         IlPk1y2c8VrJsh+bfQgN4eb8adVul3zAxOpjMZyQ86Tu1vVHOx6/CZH2+J6CHqCDXYvn
         T2iQOuWOMkFR+rJxrghOzSoOZ5FaYvYG8+lPCuotuUFVA9G5ZjRtYCiaqSghXSGoye7n
         gZ6g==
X-Forwarded-Encrypted: i=1; AJvYcCVSfJ5wg3lVUaxLGkWCjkIWNrfUNmTEgxjKiUyyQ5C2IOpZPK8M7VmGPpLCo8O4PX/yYsd8Tk+gO/nb1DDsSg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5+IsAstxpD5AqYdNc0oLe/VywS7KRSIkY6e88l8KqmJ8+G1Ap
	wXfIX+515yW/kmpPDunIpC5uJE5Mj3Tis5od8LTCuU9mrXe1agwuj5Q4MjfenM1Yj/+5kuZX/va
	wMRDffuEuO1d86+6vZCemqcsw0RG9wmDSuF8OBXgV4A==
X-Gm-Gg: ATEYQzyRp+Le385Yru+DZ3lGu1Jk+EQi8EwXUXNb5EmOAMfE9fjBgmaLnqHugHghDg1
	yCcNeLKLJk/W4xGnCBEE+OwCxqeA5ZBAKY8dwh++RFJuiwowOue43OyjiIakWAYN35PWAWj9kGI
	lQ8tvRevB97nLrfwuSS5w7re+259mbRHqgyQr/cCsVHU6hW6vNKU0oIFl/kv8ge/sK7DJV1DrBK
	d8zlLeet7H0Vbq3VultAMYUnheLoRSFYS3MRml5okw7ec/pNrqlzeWBXlX4SOwzAOLm8US3jzSb
	fw6PwXM=
X-Received: by 2002:a05:6214:1c4f:b0:89c:44f9:e894 with SMTP id
 6a1803df08f44-89c5e41b9f7mr103159756d6.35.1773847770018; Wed, 18 Mar 2026
 08:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260303-rk3588-bgcolor-v8-0-fee377037ad1@collabora.com>
In-Reply-To: <20260303-rk3588-bgcolor-v8-0-fee377037ad1@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 18 Mar 2026 15:29:17 +0000
X-Gm-Features: AaiRm53yGvgJgOV9I3p6FzqNAFzKV2WD3m1y2KktvZYLgOplUbSfLUgC9ZelTk0
Message-ID: <CAPj87rMW=4=0y_WZAhaLWhnEG1e-sF+Cn4XR57+p+d5wy9BvkA@mail.gmail.com>
Subject: Re: [PATCH v8 0/4] Introduce BACKGROUND_COLOR DRM CRTC property
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Louis Chauvet <louis.chauvet@bootlin.com>, 
	Haneen Mohammed <hamohammed.sa@gmail.com>, Melissa Wen <melissa.srw@gmail.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Diederik de Haas <diederik@cknow-tech.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matt Roper <matthew.d.roper@intel.com>, Andy Yan <andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_082932_090693_48458295 
X-CRM114-Status: GOOD (  16.22  )
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

Hi Cristian,

On Tue, 3 Mar 2026 at 19:24, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Some display controllers can be hardware-configured to present non-black
> colors for pixels which are not covered by any plane (or are exposed
> through transparent regions of higher planes).
>
> The 1st patch of the series provides DIV_ROUND_CLOSEST() to uapi, as a
> prerequisite to the 2nd patch introducing the BACKGROUND_COLOR DRM
> property that can be attached to a CRTC via a dedicated helper function.
> A 64-bit ARGB color value format is also defined and can be manipulated
> with the help of a few utility macros.
>
> Note this is a reworked version of the patch [1] submitted (many) years
> ago by Matt Roper.  The main changes are:
> [...]
>
> The subsequent patches add background color support to VKMS and the VOP2
> display controller used in the RK3568, RK3576, and RK3588 Rockchip SoC
> families.
>
> The validation has been done using a dedicated IGT test [2] - see the
> reported results below.
>
> On the userland side, a Weston merge request [3] is available, providing
> support for the BACKGROUND_COLOR CRTC property to the DRM backend.  It
> relies on the already existing background-color setting in weston.ini:
>
>   [shell]
>   background-color=0xAARRGGBB

Thanks for all this.

To ssh://ssh.gitlab.freedesktop.org/drm/misc/kernel.git
   25854131c04a5..bec7cbfa7d4f5  drm-misc-next -> drm-misc-next

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
